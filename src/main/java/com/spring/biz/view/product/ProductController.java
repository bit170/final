package com.spring.biz.view.product;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.member.MemberVO;
import com.spring.biz.product.PImageFileVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.view.common.BaseController;

@Controller
@SessionAttributes("product")
public class ProductController extends BaseController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	
	@Autowired
	private ProductService productService;
	
	public ProductController() {
		System.out.println(">>>> ProductController() 객체 생성");
	}

	@RequestMapping(value="/addNewProduct.do" ,method={RequestMethod.POST})
	public ResponseEntity addNewProduct(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)  throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String pimageFileName=null;
		
		Map newProductMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			newProductMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String reg_id = memberVO.getId();
		
		
		List<PImageFileVO> pimageFileList =upload(multipartRequest);
		if(pimageFileList!= null && pimageFileList.size()!=0) {
			for(PImageFileVO pimageFileVO : pimageFileList) {
				pimageFileVO.setReg_id(reg_id);
			}
			newProductMap.put("pimageFileList", pimageFileList);
		}
		
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			String p_code = productService.addNewProduct(newProductMap);
			if(pimageFileList!=null && pimageFileList.size()!=0) {
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pimageFileName = pimageFileVO.getP_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pimageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+p_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
			message= "<script>";
			message += " alert('새상품을 추가했습니다.');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/account/account-myCanvas';";
			message +=("</script>");
		}catch(Exception e) {
			if(pimageFileList!=null && pimageFileList.size()!=0) {
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pimageFileName = pimageFileVO.getP_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pimageFileName);
					srcFile.delete();
				}
			}
			
			message= "<script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');";
			message +=" location.href='"+multipartRequest.getContextPath()+"product/insert-canvas';";
			message +=("</script>");
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	
	@RequestMapping(value="/addNewProductImage.do" ,method={RequestMethod.POST})
	public void addNewProductImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		System.out.println("addNewProductImage");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String p_filename=null;
		
		Map proudctMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			proudctMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String reg_id = memberVO.getId();
		
		List<PImageFileVO> pimageFileList=null;
		String p_code=null;
		try {
			pimageFileList =upload(multipartRequest);
			if(pimageFileList!= null && pimageFileList.size()!=0) {
				for(PImageFileVO pimageFileVO : pimageFileList) {
					p_code = (String)proudctMap.get("p_code");
					pimageFileVO.setP_code(p_code);
					pimageFileVO.setReg_id(reg_id);
				}
				
			    productService.addNewProductImage(pimageFileList);
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					p_filename = pimageFileVO.getP_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+p_filename);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+p_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
		}catch(Exception e) {
			if(pimageFileList!=null && pimageFileList.size()!=0) {
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					p_filename = pimageFileVO.getP_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+p_filename);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/getProduct.do")
	public String getProduct(ProductVO vo, Model model) {
//		ProductVO product = productService.getProduct(vo);
//		model.addAttribute("product", product);
//		System.out.println("작품코드 : " + vo.getP_code() + "작품명 : " + vo.getP_name());
		
		return "product/shop-single";
	}
	
//	@RequestMapping(value = "/getMainProduct.do", method = RequestMethod.GET)
//	public @ResponseBody List<ProductVO> getMainProduct() {
//		return productService.getMainProduct();
//	}
	
//	@RequestMapping(value = "/getMainProduct.do", method = RequestMethod.GET)
//	public String getMainProduct(Model model) {
//		List<ProductVO> list = productService.getMainProduct();
//		model.addAttribute("MainProduct", list);
//		System.out.println(model.containsAttribute("MainProduct"));
//		return "/WEB-INF/views/main/index.jsp";
//	}
	
	@RequestMapping(value="/getProductList.do", method = RequestMethod.GET)
	public String getBoardList(ProductVO vo, Model model) {
		System.out.println(">>> 게시글 전체 목록 보여주기");
		
		List<ProductVO> list = productService.getProductList(vo);
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		System.out.println(list);
		return "product/shop-boxed-ls";
	}


}
