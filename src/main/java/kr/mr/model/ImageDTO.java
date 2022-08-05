package kr.mr.model;

public class ImageDTO {
	
	
	private String imageName;
	 
	private int cNum;
	


	public ImageDTO() {}



	public ImageDTO(String imageName, int cNum) {
		super();
		this.imageName = imageName;
		this.cNum = cNum;
	}



	public String getImageName() {
		return imageName;
	}



	public void setImageName(String imageName) {
		this.imageName = imageName;
	}



	public int getcNum() {
		return cNum;
	}



	public void setcNum(int cNum) {
		this.cNum = cNum;
	}



	
	


	
}
