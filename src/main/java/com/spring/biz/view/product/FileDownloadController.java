package com.spring.biz.view.product;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class FileDownloadController {
	private static String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	
	@RequestMapping("/download")
	protected void download(@RequestParam("filename") String filename,
		                 	@RequestParam("p_code") String p_code,
			                 HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		String filePath=CURR_IMAGE_REPO_PATH+"\\"+p_code+"\\"+filename;
		File image=new File(filePath);

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
	
	@RequestMapping("/thumbnails.do")
	protected void thumbnails(@RequestParam("pfilename") String pi_filename,
                            	@RequestParam("p_code") String p_code,
			                 HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		String filePath=CURR_IMAGE_REPO_PATH+"\\"+p_code+"\\"+pi_filename;
		File image=new File(filePath);
		
		if (image.exists()) { 
			Thumbnails.of(image).size(121,154).outputFormat("jpg").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();
	}
}