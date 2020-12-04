package com.spring.biz.view.artist;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.biz.artist.ArtistService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class AFileDownloadController {
	private static String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	
	@Autowired
	private ArtistService artistService;
	
	@RequestMapping("/aDownload")
	protected void aDownload(@RequestParam("a_id") String a_id,
		                 	 HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		String filename = artistService.searchFilename(a_id);
		String filePath=CURR_IMAGE_REPO_PATH+"\\"+a_id+"\\"+filename;
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
	
	@RequestMapping(value = "/aThumbnails.do",method = RequestMethod.GET)
	protected void aThumbnails(HttpServletRequest request,
			                 HttpServletResponse response) throws Exception {
		
		System.out.println("aThumbnails() 실행");
		String a_id = request.getParameter("a_id"); 
		String filename = artistService.searchFilename(a_id);
		System.out.println("a_id : "+a_id+" filename : "+filename);
		
		OutputStream out = response.getOutputStream();
		String filePath=CURR_IMAGE_REPO_PATH + "\\" + a_id + "\\" + filename;
		System.out.println(filePath);
		
		File image=new File(filePath);
		System.out.println(image.exists());
		if (image.exists()) { 
			System.out.println(image.getName());
			Thumbnails.of(image).size(121,154).outputFormat("jpg").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();
	}
}