package file;

import java.io.File;

public class Document {
	
	private String username;
	private String file;
	private File fileDownload;
	private String description;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public File getFileDownload() {
		return fileDownload;
	}
	public void setFileDownload(File fileDownload) {
		this.fileDownload = fileDownload;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
