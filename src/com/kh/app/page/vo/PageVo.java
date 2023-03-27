package com.kh.app.page.vo;

public class PageVo {

	private int listCount; //게시글의 총 갯수
	private int currentPage; //현재 페이지
	private int pageLimit; //페이징 영역에 보여줄 페이지 최대 갯수
	private int boardLimit; //한 페이지에 보여줄 페이지 최대 갯수
	
	private int maxPage; //마지막 페이지 (== 총 페이지 수)
	private int startPage; //페이징 영역 시작 값
	private int endPage; //페이지 영역 마지막 값
	
	//위의 4개만 하면 밑의 3개는 식을 통해 구할 수 있으므로 4개로만 생성자, toString, getter/setter 만든다
	
	//getter (값을 변경할 수 없으므로 setter는 쓸 필요 없다)
	public int getListCount() {
		return listCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public int getBoardLimit() {
		return boardLimit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}
	
	//생성자
	public PageVo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;
		
		//위의 4개로 계산 가능하므로 계산식으로 작성한다
		this.maxPage = (int)Math.ceil((double)listCount / boardLimit);
		this.startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		this.endPage = startPage + pageLimit-1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
	}

	@Override
	public String toString() {
		return "PageVo [listCount=" + listCount + ", currentPage=" + currentPage + ", pageLimit=" + pageLimit
				+ ", boardLimit=" + boardLimit + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage="
				+ endPage + "]";
	}

	
} //class

