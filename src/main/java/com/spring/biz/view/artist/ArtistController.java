package com.spring.biz.view.artist;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.UploadContext;
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

import com.spring.biz.artist.AImageFileVO;
import com.spring.biz.artist.ArtistService;
import com.spring.biz.artist.ArtistVO;
import com.spring.biz.member.MemberVO;
import com.spring.biz.product.PImageFileVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.ProductVO;
import com.spring.biz.view.common.BaseController;

@Controller

public class ArtistController extends BaseController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	
	@Autowired
	private ArtistService artistService;
	@Autowired
	private ProductService productService;
	
	public ArtistController() {
		System.out.println("~~~~~ArtistController() 객체 생성~~~~~");
	}
	
	@RequestMapping(value="/addNewAInfo.do", method={RequestMethod.POST})
	public ResponseEntity addNewAInfo(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		System.out.println("addNewAInfo() 실행");
		
		multipartRequest.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String aimageFileName = null;
		
		Map newArtistMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = (String)enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newArtistMap.put(name, value);
		}
		
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		String a_id = memberVO.getId();
		newArtistMap.put("a_id", a_id);
		
		List<AImageFileVO> aimageFileList = uploadA(multipartRequest);
		
		if(aimageFileList != null && aimageFileList.size() != 0) {
			for(AImageFileVO aimageFileVO : aimageFileList) {
				aimageFileVO.setA_id(a_id);;
			}
			newArtistMap.put("aimageFileList", aimageFileList);
		}
		
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=UTF-8");
		try {
			artistService.addArtistInfo(newArtistMap);
			if(aimageFileList!=null && aimageFileList.size()!=0) {
				for(AImageFileVO  aimageFileVO:aimageFileList) {
					aimageFileName = aimageFileVO.getAi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+aimageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+a_id);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
			message= "<script>";
			message += " alert('작가정보를 수정했습니다.');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/getMyCanvas.do';";
			message +=("</script>");
			
		}catch(Exception e) {
			if(aimageFileList!=null && aimageFileList.size()!=0) {
				for(AImageFileVO aimageFileVO:aimageFileList) {
					aimageFileName = aimageFileVO.getAi_filename();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+aimageFileName);
					srcFile.delete();
				}
			}
			
			message= "<script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/getMyCanvas.do';";
			message +=("</script>");
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	@RequestMapping(value="/searchByName.do", method=RequestMethod.POST)
	public String searchByName(String nickname, Model model) {
		System.out.println("Controller의 searchByName~!");
		
		List<ArtistVO> list = artistService.searchByName(nickname);
		model.addAttribute("artistList", list);
		System.out.println(list.isEmpty());
		return "artist/artist-boxed-ft";
	}
	
	@RequestMapping(value="/getArtist.do", method=RequestMethod.GET)
	public String getArtist(@RequestParam String a_id, Model model) {
		System.out.println("Controller의 getArtist!!!");
		System.out.println(a_id);
		ArtistVO avo = artistService.getArtist(a_id);
		model.addAttribute("artist", avo);
		System.out.println(avo);
		
		return "artist/artist-single";
	}
	@RequestMapping(value = "/getArtistList.do", method=RequestMethod.GET)
	public String getArtistList(Model model) {
		System.out.println("Controller의 getArtistList!!!");
		
		List<ArtistVO> list = artistService.getArtistList();
		model.addAttribute("artistList", list);
		System.out.println(list.isEmpty());
		return "artist/artist-boxed-ft";
	}
	/*
	 * @RequestMapping(value="/getAllPrinting.do", method=RequestMethod.GET) public
	 * String getById(String id, Model model) {
	 * System.out.println("Controller의 getAllPrinting!!!");
	 * 
	 * //작가상세페이지의 id로 product쪽에서 검색 list 출력 //productServiceImpl, dao, mapper에 만들기
	 * List<ProductVO> plist = productService.getById(id);
	 * model.addAttribute("productList", plist);
	 * System.out.println(plist.isEmpty());
	 * 
	 * return "artist-single.jsp"; }
	 */ 
}
