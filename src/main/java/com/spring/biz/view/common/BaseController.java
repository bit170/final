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
			
			String p_filename = fileNames.next();
			pimageFileVO.setP_filename(p_filename);
			MultipartFile mFile = multipartRequest.getFile(p_filename);
			
			String type = mFile.getContentType();
			pimageFileVO.setPi_filetype(type);
			
//			String originalFileName=mFile.getOriginalFilename();
//			pimageFileVO.setP_filename(originalFileName);
			
			File file = new File(CURR_IMAGE_REPO_PATH +"\\"+ p_filename);
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
				mFile.transferTo(file);
				pfileList.add(pimageFileVO);
			}
		}
		return pfileList;
	}
}
