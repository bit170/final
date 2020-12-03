package com.spring.biz.view.product;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.biz.product.ProductService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class FileDownloadController {
	private static String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/download.do",method = RequestMethod.GET)
	protected void download(HttpServletRequest request,
			                 HttpServletResponse response) throws Exception {
		System.out.println("download() 실행");
		String p_code = request.getParameter("p_code");
		String filename = request.getParameter("pfilename");
		OutputStream out = response.getOutputStream();
		String filePath=CURR_IMAGE_REPO_PATH+"\\"+p_code+"\\"+filename;
		File image=new File(filePath);
		if(image.exists()) {
			System.out.println(image.getName());
		}

		response.setHeader("Cache-Control","no-cache");
		response.addHeader("Content-disposition", "attachment; filename="+filename);
		FileInputStream in=new FileInputStream(image); 
		byte[] buffer=new byte[1024*8];
		while(true){
			int count=in.read(buffer);
			if(count==-1)  
				break;
			out.write(buffer,0,count);
		}
		in.close();
		out.close();
	}
	
	@RequestMapping(value = "/thumbnails.do",method = RequestMethod.GET)
	protected void thumbnails(HttpServletRequest request,
			                 HttpServletResponse response) throws Exception {
		
		System.out.println("thumbnails() 실행");
		String p_code = request.getParameter("p_code"); 
		String pi_filetype = request.getParameter("pfiletype");
		String pi_filename = productService.getFileName(p_code,pi_filetype);
		if("".equals(pi_filetype)) {
			pi_filename = productService.getFileName(p_code);
		}
		System.out.println("pi_filename : "+pi_filename+" p_code : "+p_code);
		OutputStream out = response.getOutputStream();
		String filePath=CURR_IMAGE_REPO_PATH+"\\"+p_code+"\\"+pi_filename;
		System.out.println(filePath);
		
		ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
		
		File image=new File(filePath);
		System.out.println(image.exists());
		if (image.exists()) { 
			System.out.println(image.getName());
			BufferedImage buffimage = Thumbnails.of(image).size(190,190).outputFormat("jpeg").asBufferedImage();
			
			ImageIO.write(buffimage, "jpeg", jpegOutputStream);
		}
		byte[] imgByte = jpegOutputStream.toByteArray();
		
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		out.write(imgByte);
		out.flush();
		out.close();
	}
//	@RequestMapping(value = "/thumbnails.do",method = RequestMethod.GET)
//	protected void thumbnails(HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//		
//		System.out.println("thumbnails() 실행");
//		String p_code = request.getParameter("p_code"); 
//		String pi_filename = request.getParameter("pfilename");
//		System.out.println("pi_filename : "+pi_filename+" p_code : "+p_code);
//		OutputStream out = response.getOutputStream();
//		String filePath=CURR_IMAGE_REPO_PATH+"\\"+p_code+"\\"+pi_filename;
//		System.out.println(filePath);
//		File image=new File(filePath);
//		System.out.println(image.exists());
//		if (image.exists()) { 
//			System.out.println(image.getName());
//			Thumbnails.of(image).size(175,190).outputFormat("png").toOutputStream(out);
//		}
//		byte[] buffer = new byte[1024 * 8];
//		out.write(buffer);
//		out.close();
//	}
}