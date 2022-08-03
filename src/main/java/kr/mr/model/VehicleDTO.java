package kr.mr.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class VehicleDTO {
	   private int cNum;
	   private String cName;
	   private int price;
	   private String company;
	   private String color;
	   private String category_fk;
	   private String cSpec;
	   private int count;
	   private String contents;
	   
	   private String fileName;
	   private MultipartFile uploadFile;

	   private Date rentalDate;
	   
	   
	   //파일업로드 getter, setter 추가
	   
		public MultipartFile getUploadFile() {
			return uploadFile;
		}
		public void setUploadFile(MultipartFile uploadFile) {
			this.uploadFile = uploadFile;
		}
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
	   
		
		
		public VehicleDTO() {}
		
		public VehicleDTO(int cNum, String cName, int price, String company, String color, String category_fk,
				String cSpec, int count, String contents, String fileName, MultipartFile uploadFile, Date rentalDate) {
			super();
			this.cNum = cNum;
			this.cName = cName;
			this.price = price;
			this.company = company;
			this.color = color;
			this.category_fk = category_fk;
			this.cSpec = cSpec;
			this.count = count;
			this.contents = contents;
			this.fileName = fileName;
			this.uploadFile = uploadFile;
			this.rentalDate = rentalDate;
		}
		
		
		
		public int getcNum() {
			return cNum;
		}
		public void setcNum(int cNum) {
			this.cNum = cNum;
		}
		public String getcName() {
			return cName;
		}
		public void setcName(String cName) {
			this.cName = cName;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public String getCompany() {
			return company;
		}
		public void setCompany(String company) {
			this.company = company;
		}
		public String getColor() {
			return color;
		}
		public void setColor(String color) {
			this.color = color;
		}
		public String getCategory_fk() {
			return category_fk;
		}
		public void setCategoty_fk(String category_fk) {
			this.category_fk = category_fk;
		}
		public String getcSpec() {
			return cSpec;
		}
		public void setcSpec(String cSpec) {
			this.cSpec = cSpec;
		}
		public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
		}
		public String getContents() {
			return contents;
		}
		public void setContents(String contents) {
			this.contents = contents;
		}
		public Date getRentalDate() {
			return rentalDate;
		}
		public void setRentalDate(Date rentalDate) {
			this.rentalDate = rentalDate;
		}
		
		
		@Override
		public String toString() {
			return "VehicleDTO [cNum=" + cNum + ", cName=" + cName + ", price=" + price + ", company=" + company
					+ ", color=" + color + ", category_fk=" + category_fk + ", cSpec=" + cSpec + ", count=" + count
					+ ", contents=" + contents + ", fileName=" + fileName + ", uploadFile=" + uploadFile
					+ ", rentalDate=" + rentalDate + "]";
		}
		

	   
	}