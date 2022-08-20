package kr.mr.model;

public class QnaPaging {
	private int totalCnt;
	
	private int viewPage;
	private int startIndex;
	private int blockSize = 5;
	private int currentBlock;
	private int blockStart;
	private int blockEnd;
	private int prevPage;
	private int nextPage;
	
	private int cntPerPage;
	private int totalPage;
	
	private int startRowNum;
	
	public QnaPaging() {}
	
	public QnaPaging(int totalCnt, int viewPage, int cntPage) {
		this.totalCnt = totalCnt;
		this.cntPerPage = cntPerPage;
		this.viewPage = viewPage;
		
		setValue(totalCnt, cntPerPage);
	}
	
	public void setValue(int totalCnt, int cntPerPage) {
		this.totalPage = (int) Math.ceil((double)totalCnt/cntPerPage);
		this.startIndex = (viewPage - 1)*cntPerPage;
		this.currentBlock = (viewPage - 1)/blockSize;
		this.blockStart = (blockSize*currentBlock)+1;
		this.blockEnd = blockStart + (blockSize-1);
		
		if(blockEnd > totalPage) blockEnd = totalPage;
		
		this.prevPage = blockStart - 1;
		this.nextPage = blockEnd + 1;
		
		if(nextPage > totalPage) nextPage = totalPage;
		
		startRowNum = totalCnt - (viewPage-1)*cntPerPage;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	public int getViewPage() {
		return viewPage;
	}

	public void setViewPage(int viewPage) {
		this.viewPage = viewPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	public int getBlockStart() {
		return blockStart;
	}

	public void setBlockStart(int blockStart) {
		this.blockStart = blockStart;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}
	
	
}
