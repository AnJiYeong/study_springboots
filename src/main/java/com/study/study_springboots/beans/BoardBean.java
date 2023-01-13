package com.study.study_springboots.beans;

public class BoardBean {    // vo, dao, dto
    private String title;
    private String content;
    private String userName;
    private String date;

	public String getTitle() {
		return this.title;
	}

	public String setTitle(String string) {
		return this.title = string;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

    public void setTitle(BoardBean boardBean) {
    }

    
        
}