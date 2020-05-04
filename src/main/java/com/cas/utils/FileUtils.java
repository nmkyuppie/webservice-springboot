package com.cas.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class FileUtils {
	
    private static String UPLOADED_FOLDER = "D://Document//";
	
	public static String uploadFile(MultipartFile file, String uniqueTime) {
		String completePath = "";
		String fileName = file.getOriginalFilename();
		String extension = "";
        if(fileName.isEmpty()) {
        	return "";
        }
        else {
    		try {
    			extension = getExtension(fileName).orElse("");
    			fileName = getFileNameWithoutExtension(fileName) + "_" + uniqueTime + "." + extension;
    			completePath = UPLOADED_FOLDER + fileName;
                byte[] bytes = file.getBytes();
                Path path = Paths.get(completePath);
                log.info("Document has been uploaded at {}", completePath);
                Files.write(path, bytes);
            } catch (IOException e) {
                e.printStackTrace();
            }
    		return fileName;
        }
	}
	
	public static String getFileNameWithoutExtension(String filename) {
		int pos = filename.lastIndexOf(".");
		if (pos > 0) {
			filename = filename.substring(0, pos);
		}
		return filename;
	}
	
	public static Optional<String> getExtension(String filename) {
	    return Optional.ofNullable(filename)
	      .filter(f -> f.contains("."))
	      .map(f -> f.substring(filename.lastIndexOf(".") + 1));
	}
}
