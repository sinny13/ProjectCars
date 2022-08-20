package kr.mr.model;

import java.sql.Date;

public class QnaVO {

	private int qid;
	private String subject;
	private String contents;
	private int hit;
	private String writer;
	
	private Date regDate;
	
	private String uid;
	
	private String searchType;
	private String keyWord;
	
	private int startIndex;
	private int cntPerPage;
	
	public QnaVO() {}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	@Override
	public String toString() {
		return "QnaVO [qid=" + qid + ", subject=" + subject + ", contents=" + contents + ", hit=" + hit + ", writer="
				+ writer + ", regDate=" + regDate + ", uid=" + uid + ", searchType=" + searchType + ", keyWord="
				+ keyWord + ", startIndex=" + startIndex + ", cntPerPage=" + cntPerPage + "]";
	}
	
	
	
	
	
}
