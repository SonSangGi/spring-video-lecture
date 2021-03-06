package com.jhta.cope.vo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class InstructorNoticeAnswer {

	private int no;
	private int noticeNo;
	private User writer;
	private String contents;
	private List<InstructorNoticeComment> comments;
	@DateTimeFormat(pattern = "yyyy-mm-dd HH:mm:ss")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	private Date createDate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public User getWriter() {
		return writer;
	}
	public void setWriter(User writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public List<InstructorNoticeComment> getComments() {
		return comments;
	}
	public void setComments(List<InstructorNoticeComment> comments) {
		this.comments = comments;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "InstructorNoticeAnswer [no=" + no + ", noticeNo=" + noticeNo + ", writer=" + writer + ", contents="
				+ contents + ", comments=" + comments + ", createDate=" + createDate + ", getNo()=" + getNo()
				+ ", getNoticeNo()=" + getNoticeNo() + ", getWriter()=" + getWriter() + ", getContents()="
				+ getContents() + ", getComments()=" + getComments() + ", getCreateDate()=" + getCreateDate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
}
