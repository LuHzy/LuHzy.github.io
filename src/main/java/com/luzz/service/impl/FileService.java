package com.luzz.service.impl;

import com.luzz.commons.Utils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

@Service
public class FileService {

    public String upload(MultipartFile file, HttpServletRequest request) {
        if (file.getSize() == 0) {
            return null;
        }
        String newName = null;
        try {
            String oldName = file.getOriginalFilename();
            String realPath = request.getSession().getServletContext().getRealPath("/img");
            newName = Utils.randUID() + "_" + oldName;
            File newFile = new File(realPath, newName);
            file.transferTo(newFile);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        return newName;
    }
}
