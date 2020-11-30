package com.spring.biz.view.common;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.product.PImageFileVO;

public abstract class BaseController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	
	protected List<PImageFileVO> upload(MultipartHttpServletRequest multipartRequest) throws Exception{
		System.out.println("BaseController의 upload()");
		List<PImageFileVO> pfileList= new ArrayList<PImageFileVO>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()){
			PImageFileVO pimageFileVO =new PImageFileVO();
			
			String pi_filename = fileNames.next();
			
				pimageFileVO.setPi_filetype(pi_filename);
				MultipartFile mFile = multipartRequest.getFile(pi_filename);
				
				//String type = mFile.getContentType();
				//pimageFileVO.setPi_filetype(type);
				
				String originalFileName=mFile.getOriginalFilename();
				System.out.println(originalFileName);
				if(!("".equals(originalFileName))) {
					pimageFileVO.setPi_filename(originalFileName);
					pfileList.add(pimageFileVO);
					
					File file = new File(CURR_IMAGE_REPO_PATH +"\\"+ pi_filename);
					if(mFile.getSize()!=0){ //File Null Check
						if(! file.exists()){ 
							if(file.getParentFile().mkdirs()){ 
								try {
									file.createNewFile();
								}catch(IOException e) {
									e.printStackTrace();
								}
							}
						}
	//				mFile.transferTo(file);
	//				pfileList.add(pimageFileVO);
						mFile.transferTo(new File(CURR_IMAGE_REPO_PATH +"\\"+"temp"+ "\\"+originalFileName));
					}
				}
			
		}
		return pfileList;
	}
}
