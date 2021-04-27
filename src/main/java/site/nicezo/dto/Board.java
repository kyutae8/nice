package site.nicezo.dto;

import org.springframework.web.multipart.MultipartFile;

/*CREATE TABLE BOARD			
(	NUM NUMBER(10),					-번호
	CATEGORY NUMBER,				-게시판 종류(1. 공지사항 2.Q&A 3.이벤트)
	SUBJECT VARCHAR2(500 BYTE),		-제목
	REGDATE DATE,					-작성일자
	READCOUNT NUMBER(4),			-조회수
	IMAGE varchar2(50),				-이미지
	CONTENT VARCHAR2(2000 BYTE),	-내용
	STATUS NUMBER(2)				-상태(1. 일반글 9. 삭제글)
);		

create sequence board_seq;
*/

public class Board {
	private int num;
	private int category;
	private String subject;
	private String regdate;
	private int readcount;
	private String image;
	private String content;
	private int status;
	private MultipartFile file;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
}
