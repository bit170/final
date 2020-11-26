package com.spring.biz.view.common;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.product.PImageFileVO;

public abstract class BaseController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\gallery\\file_repo";
	
	protected List<PImageFileVO> upload(MultipartHttpServletRequest multipartRequest) throws Exception{
		List<PImageFileVO> pfileList= new ArrayList<PImageFileVO>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()){
			PImageFileVO pimageFileVO =new PImageFileVO();
			String fileName = fileNames.next();
			pimageFileVO.setPi_filetype(fileName);
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName=mFile.getOriginalFilename();
			pimageFileVO.setP_filename(originalFileName);
			pfileList.add(pimageFileVO);
			
			File file = new File(CURR_IMAGE_REPO_PATH +"\\"+ fileName);
			if(mFile.getSize()!=0){ //File Null Check
				if(! file.exists()){ 
					if(file.getParentFile().mkdirs()){ 
							file.createNewFile();
					}
				}
				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH +"\\"+"temp"+ "\\"+originalFileName));
			}
		}
		return pfileList;
	}
}
