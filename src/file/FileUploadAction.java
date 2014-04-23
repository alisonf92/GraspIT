package file;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import login.AdminLoginAction;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;
import util.WebSessions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

import connection.ConnectionFactory;


public class FileUploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private File fileUpload;
	private String fileUploadContentType, description;
	private String fileUploadFileName;
	private Connection connection;
	private PreparedStatement uploadFile;	
	private ResultSet results;
	private File document;
	private File fileDownload;
	private InputStream fileInputStream;
	private File myFile;
	private String myFileContentType;
	private String myFileFileName;
	private String destPath;

	
	
	

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}
	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}
	public String getFileUploadFileName() {
		return fileUploadFileName;
	}
	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}
	public File getFileUpload() {
		return fileUpload;
	}
	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	public String execute() throws IOException, SQLException, FileNotFoundException {	
		destPath = "C://tomcat/work/";
		File destFile = new File(destPath, myFileFileName);
		FileUtils.copyFile(myFile, destFile);
		connection = ConnectionFactory.getInstance().getConnection();
System.out.println("src " + destFile);
System.out.println("src " + myFile);
		uploadFile = connection.prepareStatement("INSERT INTO document(file) VALUES(?)");	

		
		//uploadFile.setString(1, description);
		uploadFile.setString(1, myFileFileName);
		uploadFile.executeUpdate();
		uploadFile.close();
		connection.close();
		return SUCCESS;
	}
	public String display() {
		return NONE;
		
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}	
	
	
	public String download(){
		try{
			connection = ConnectionFactory.getConnection();
			uploadFile = connection.prepareStatement("SELECT file FROM document");
			results = uploadFile.executeQuery();
			while(results.next()){
				String fileName= results.getString("file");
				fileDownload = new File(destPath, fileName);
				fileInputStream = new FileInputStream(fileDownload);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public String getContentDisposition() {
		return "attachment;filename=\"" + fileDownload + "\"";
	}
	public String getContentType() {
		return "text/plain";
	}
}


