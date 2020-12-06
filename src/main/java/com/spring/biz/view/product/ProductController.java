 package com.spring.biz.view.product;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.biz.artist.ArtistService;
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
	@Autowired
	private ArtistService artistService;
	
	public ProductController() {
		System.out.println(">>>> ProductController() 객체 생성");
	}

	@RequestMapping(value="/addNewProduct.do" ,method=RequestMethod.POST)
	public String addNewProduct(MultipartHttpServletRequest multipartRequest, HttpServletResponse response, HttpServletRequest request)  throws Exception {
		System.out.println("addNewProduct() 실행");
		
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String pimageFileName=null;
		
		Map newProductMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			System.out.println(name);
			System.out.println(value);
			newProductMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String a_id = memberVO.getId();
		System.out.println(a_id);
		
		newProductMap.put("a_id", a_id);

		
		
		List<PImageFileVO> pimageFileList = upload(multipartRequest);
		//System.out.println(pimageFileList.size());	//확인용
		
		if(pimageFileList!= null && pimageFileList.size()!=0) {
			for(PImageFileVO pimageFileVO : pimageFileList) {
				pimageFileVO.setA_id(a_id);
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
					pimageFileName = pimageFileVO.getPi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pimageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+p_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
			message= "<script>";
			message += " alert('새상품을 추가했습니다.');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/getMyCanvas.do';";
			message +=("</script>");
			
			String nickname = memberVO.getNickname();
			System.out.println(a_id);
			int alreadyArtist = artistService.alreadyArtist(a_id);
			if(alreadyArtist == 0) {
				HashMap<String,Object> idNickname = new HashMap<String,Object>();
				idNickname.put("a_id", a_id);
				idNickname.put("nickname", nickname);
				artistService.insertArtist(idNickname);
			}
			
		}catch(Exception e) {
			if(pimageFileList!=null && pimageFileList.size()!=0) {
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pimageFileName = pimageFileVO.getPi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pimageFileName);
					srcFile.delete();
				}
			}
			
			message= "<script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/insert-canvas.do';";
			message +=("</script>");
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return "redirect:/getMyCanvas.do?id="+a_id;
//		return resEntity;
	}
	
	
	@RequestMapping(value="/addNewPImage.do" ,method={RequestMethod.POST})
	public void addNewPImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		System.out.println("addNewProductImage");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String pi_filename=null;
		
		Map productMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			productMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String a_id = memberVO.getId();
		
		List<PImageFileVO> pimageFileList=null;
		String p_code=null;
		try {
			pimageFileList =upload(multipartRequest);
			if(pimageFileList!= null && pimageFileList.size()!=0) {
				for(PImageFileVO pimageFileVO : pimageFileList) {
					
					p_code = (String)productMap.get("p_code");
					pimageFileVO.setP_code(p_code);
					pimageFileVO.setA_id(a_id);
				}
				
			    productService.addNewPImage(pimageFileList);
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pi_filename = pimageFileVO.getPi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pi_filename);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+p_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
		}catch(Exception e) {
			if(pimageFileList!=null && pimageFileList.size()!=0) {
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pi_filename = pimageFileVO.getPi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pi_filename);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/modifyGoodsForm.do" ,method={RequestMethod.GET,RequestMethod.POST})
	public String modifyGoodsForm(@RequestParam("p_code") String p_code,
			                            HttpServletRequest request, HttpServletResponse response)  throws Exception {
		//String viewName=(String)request.getAttribute("viewName");
		//ModelAndView mav = new ModelAndView(viewName);
		
		//Map goodsMap=ProductService.productDetail(p_code);
		//mav.addObject("goodsMap",goodsMap);
		
		return "update-canvas";
	}
	
	@RequestMapping(value="/modifyProductInfo.do" ,method={RequestMethod.POST})
	public ResponseEntity modifyProductInfo( @RequestParam("p_code") String p_code,
			                     @RequestParam("attribute") String attribute,
			                     @RequestParam("value") String value,
			HttpServletRequest request, HttpServletResponse response)  throws Exception {
		//System.out.println("modifyGoodsInfo");
		
		Map<String,String> productMap=new HashMap<String,String>();
		productMap.put("p_code", p_code);
		productMap.put(attribute, value);
		productService.modifyProductInfo(productMap);
		
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		message  = "mod_success";
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	

	@RequestMapping(value="/modifyPImageInfo.do" ,method={RequestMethod.POST})
	public void modifyPImageInfo(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)  throws Exception {
		System.out.println("modifyPImageInfo");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String pimageFileName=null;
		
		Map productMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			productMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberInfo");
		String a_id = memberVO.getId();
		
		List<PImageFileVO> pimageFileList=null;
		String p_code = null;
		String pi_code = null;
		try {
			pimageFileList =upload(multipartRequest);
			if(pimageFileList!= null && pimageFileList.size()!=0) {
				for(PImageFileVO pimageFileVO : pimageFileList) {
					p_code = (String)productMap.get("p_code");
					pi_code = (String)productMap.get("pi_code");
					pimageFileVO.setP_code(p_code);
					pimageFileVO.setPi_code(pi_code);
					pimageFileVO.setA_id(a_id);
				}
				
			    productService.modifyPImage(pimageFileList);
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pimageFileName = pimageFileVO.getPi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pimageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+p_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
		}catch(Exception e) {
			if(pimageFileList!=null && pimageFileList.size()!=0) {
				for(PImageFileVO  pimageFileVO:pimageFileList) {
					pimageFileName = pimageFileVO.getPi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+pimageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="/getProduct.do")
	public String getProduct(@RequestParam("p_code")String p_code, Model model) {
		ProductVO product = productService.getProduct(p_code);
		model.addAttribute("product", product);

    System.out.println("작품코드 : " + p_code);
		List<PImageFileVO> productImgs = productService.getImages(p_code);
		model.addAttribute("productImgs", productImgs);

    return "product/shop-single";
	}
	
	@RequestMapping(value = "getCategory.do", method = RequestMethod.GET)
	public String getCategory(HttpServletRequest request, Model model){
		System.out.println("getCategory() 실행");
		String category = request.getParameter("category");
		if(category.equals("water")) {
			category = "수채화";
		}else if(category.equals("oil")) {
			category = "유화";
		}else if(category.equals("black")) {
			category = "수묵화";
		}else if(category.equals("crocky")) {
			category = "크로키";
		}else if(category.equals("etc")) {
			category = "기타";
		}
		System.out.println(category);
		List<ProductVO> categoryList = productService.getCategory(category);
		if(categoryList.size()!=0) {
			model.addAttribute("productList", categoryList);
		}
//		System.out.println(categoryList.get(0).getP_category());
		List<String> categoryCnt = productService.categoryCnt();
		System.out.println(categoryCnt.get(0));
		model.addAttribute("categoryCnt", categoryCnt);
		return "product/shop-boxed-ls";
	}
	
	
//	@RequestMapping(value = "/getMainProduct.do", method = RequestMethod.GET)
//	public @ResponseBody List<ProductVO> getMainProduct() {
//		return productService.getMainProduct();
//	}
	
	
	@RequestMapping(value="/getProductList.do", method = RequestMethod.GET)
	public String getBoardList(ProductVO vo, Model model) {
		System.out.println(">>> 게시글 전체 목록 보여주기");
		
		List<ProductVO> list = productService.getProductList(vo);
		model.addAttribute("productList", list);
		List<String> categoryCnt = productService.categoryCnt();
		System.out.println(categoryCnt.get(0));
		model.addAttribute("categoryCnt", categoryCnt);
		
		return "product/shop-boxed-ls";
	}

	@RequestMapping(value="/searchByPname.do", method=RequestMethod.POST)
	public String searchByPname(String p_name, Model model) {
		System.out.println("Controller의 searchByPname~!");
		
		List<ProductVO> list = productService.searchByPname(p_name);
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		
		return "product/shop-boxed-ls";
	}
	
	@RequestMapping(value="/sortLatest.do", method=RequestMethod.GET)
	public String sortLatest(Model model) {
		System.out.println("!!!!!작품 최신순 정렬!!!!!");
		List<ProductVO> list = productService.sortLatest();
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		List<String> categoryCnt = productService.categoryCnt();
		System.out.println(categoryCnt.get(0));
		model.addAttribute("categoryCnt", categoryCnt);
		return "product/shop-boxed-ls";
	}
	
	@RequestMapping(value="/sortCheap.do", method=RequestMethod.GET)
	public String sortCheap(Model model) {
		System.out.println("!!!!!작품 가격낮은순 정렬!!!!!");
		List<ProductVO> list = productService.sortCheap();
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		List<String> categoryCnt = productService.categoryCnt();
		System.out.println(categoryCnt.get(0));
		model.addAttribute("categoryCnt", categoryCnt);
		return "product/shop-boxed-ls";
	}
	
	@RequestMapping(value="/sortExpensive.do", method=RequestMethod.GET)
	public String sortExpensive(Model model) {
		System.out.println("!!!!!작품 가격높은순 정렬!!!!!");
		List<ProductVO> list = productService.sortExpensive();
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		List<String> categoryCnt = productService.categoryCnt();
		System.out.println(categoryCnt.get(0));
		model.addAttribute("categoryCnt", categoryCnt);
		return "product/shop-boxed-ls";
	}
	
	@RequestMapping(value="/sortAlpha.do", method=RequestMethod.GET)
	public String sortAlpha(Model model) {
		System.out.println("!!!!!작품 가나다순 정렬!!!!!");
		List<ProductVO> list = productService.sortAlpha();
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		List<String> categoryCnt = productService.categoryCnt();
		System.out.println(categoryCnt.get(0));
		model.addAttribute("categoryCnt", categoryCnt);
		return "product/shop-boxed-ls";
	}
	
	@RequestMapping(value="/priceRange.do", method=RequestMethod.POST)
	public String priceRange(String minp, String maxp, Model model) {
		System.out.println("!!!!!작품 가격범위 설정!!!!!");
		System.out.println(minp + " & " + maxp);
		Map map = new HashMap();
		map.put("minP", minp);
		map.put("maxP", maxp);
		List<ProductVO> list = productService.priceRange(map);
		model.addAttribute("productList", list);
		System.out.println(list.isEmpty());
		return "product/shop-boxed-ls";
	}
}














