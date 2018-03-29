package com.example.demo.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.TinTuc;
import com.example.demo.service.TinTucService;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.FileContent;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.Permission;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 200, // 2MB
maxFileSize = 1024 * 1024 * 100, // 100MB
maxRequestSize = 1024 * 1024 * 200) // 500MB

@RestController
public class QLTinTucController {
	
	@Autowired
	private TinTucService tintucService;
	
	@RequestMapping(value="/create-news", method=RequestMethod.POST)
	public ResponseEntity<?> CreateNews(HttpServletRequest request) {
		try {
		String newstitle = request.getParameter("newstitle");
//		Date datecreate = new Date(request.getParameter("datecreate"));
		Date datecreate = new Date();
		String newscontent = request.getParameter("newscontent");
		String FileID = request.getParameter("FileID");
		String ImageID = request.getParameter("ImageID");
		
		try {
			TinTuc tintuc = new TinTuc(newstitle, ImageID,newscontent, datecreate, FileID);
			tintucService.save(tintuc);
			return ResponseEntity.ok(tintuc);
		}catch(Exception ex) {
			return null;
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@PostMapping("/uploadImage")
    public @ResponseBody List<String> handleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes, HttpServletRequest request) throws Exception {

		if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return null;
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get("file-upload/" + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
            e.printStackTrace();
        }
        
		
        Drive service = getDriveService();
        
        File fileMetadata = new File();
        fileMetadata.setTitle(file.getOriginalFilename());
        
        
        java.io.File filePath = new java.io.File("file-upload/"+file.getOriginalFilename());
        
        FileContent mediaContent = new FileContent(file.getContentType(), filePath);
        
        File f = service.files().insert(fileMetadata, mediaContent)
            .setFields("id")
            .execute();
        
        Permission newPermission = new Permission();
        newPermission.setValue("");
        newPermission.setType("anyone");
        newPermission.setRole("reader");
        service.permissions().insert(f.getId(), newPermission).execute();
        String link = "https://drive.google.com/uc?export=view&id=" + f.getId();
        request.setAttribute("LinkFileImage", link);
        request.setAttribute("IdImage", f.getId());
        List<String> result = new ArrayList<>();
        result.add(link);
        result.add(f.getId());
        return result;
        
    }
	@RequestMapping(value="/update-news", method=RequestMethod.POST)
	public ResponseEntity<?> UpdateNews(HttpServletRequest request) {
		try {
		String newstitle = request.getParameter("newstitle");
//		Date datecreate = new Date(request.getParameter("datecreate"));
		Date datecreate = new Date();
		String newscontent = request.getParameter("newscontent");
		String FileID = request.getParameter("FileID");
		String ImageID = request.getParameter("ImageID");
		int id = Integer.parseInt(request.getParameter("idtintuc"));
		try {
			TinTuc tintuc = new TinTuc(newstitle, ImageID,newscontent, datecreate, FileID);
			tintuc.setIdtintuc(id);
			tintucService.save(tintuc);
			return ResponseEntity.ok(tintuc);
		}catch(Exception ex) {
			return null;
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/** Application name. */
    private static final String APPLICATION_NAME = "Drive API Java Quickstart";

    /** Directory to store user credentials for this application. */
    /*private static final java.io.File DATA_STORE_DIR = new java.io.File(
        System.getProperty("user.home"), ".credentials/drive-java-quickstart");*/
    
    private static final java.io.File DATA_STORE_DIR = new java.io.File(
    		System.getProperty("user.home"), ".credentials/2/drive-java-quickstart.json");

    /** Global instance of the {@link FileDataStoreFactory}. */
    private static FileDataStoreFactory DATA_STORE_FACTORY;

    /** Global instance of the JSON factory. */
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

    /** Global instance of the HTTP transport. */
    private static HttpTransport HTTP_TRANSPORT;

    /** Global instance of the scopes required by this quickstart.
     *
     * If modifying these scopes, delete your previously saved credentials
     * at ~/.credentials/drive-java-quickstart
     */
    private static final List<String> SCOPES = Arrays.asList(DriveScopes.DRIVE);
    
    

    static {
        try {
            HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
            DATA_STORE_FACTORY = new FileDataStoreFactory(DATA_STORE_DIR);
        } catch (Throwable t) {
            t.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Creates an authorized Credential object.
     * @return an authorized Credential object.
     * @throws Exception 
     */
    public static Credential authorize() throws Exception {
        // Load client secrets.
        InputStream in =
        		QLTinTucController.class.getResourceAsStream("/client_secret.json");
        GoogleClientSecrets clientSecrets =
            GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

        // Build flow and trigger user authorization request.
        GoogleAuthorizationCodeFlow flow =
                new GoogleAuthorizationCodeFlow.Builder(
                        HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
                .setDataStoreFactory(DATA_STORE_FACTORY)
                .setAccessType("offline")
                .build();
        Credential credential = new AuthorizationCodeInstalledApp(
            flow, new LocalServerReceiver()).authorize("user");
        System.out.println(
                "Credentials saved to " + DATA_STORE_DIR.getAbsolutePath());
        
        return credential;
    }

    /**
     * Build and return an authorized Drive client service.
     * @return an authorized Drive client service
     * @throws Exception 
     */
    public static Drive getDriveService() throws Exception {
        Credential credential = authorize();
        return new Drive.Builder(
                HTTP_TRANSPORT, JSON_FACTORY, credential)
                .setApplicationName(APPLICATION_NAME)
                .build();
    }
    @PostMapping("/uploadFile")
    public @ResponseBody List<String> handleFileUploads(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes, HttpServletRequest request) throws Exception {

		if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return null;
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get("file-upload/" + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
            e.printStackTrace();
        }
        
		
        Drive service = getDriveService();
        
        File fileMetadata = new File();
        fileMetadata.setTitle(file.getOriginalFilename());
        
        
        java.io.File filePath = new java.io.File("file-upload/"+file.getOriginalFilename());
        
        FileContent mediaContent = new FileContent(file.getContentType(), filePath);
        
        File f = service.files().insert(fileMetadata, mediaContent)
            .setFields("id")
            .execute();
        Permission newPermission = new Permission();
        newPermission.setValue("");
        newPermission.setType("anyone");
        newPermission.setRole("reader");
        service.permissions().insert(f.getId(), newPermission).execute();
        List<String> result = new ArrayList<>();
        result.add(file.getOriginalFilename());
        result.add(f.getId());
        return result;
        
    }
}
