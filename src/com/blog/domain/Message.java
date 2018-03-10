package com.blog.domain;

public class Message {

//			CREATE TABLE `main_message` (
//			  `mid` varchar(28) NOT NULL,
//			  `mname` varchar(20) NOT NULL,
//			  `mdate` varchar(255) NOT NULL,
//			  `mcontent` text NOT NULL,
//			  PRIMARY KEY (`mid`)
//			) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	
	private String mid;
	private String mname;
	private String mdate;
	private String mcontent;
	
	public Message(){}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public String getMcontent() {
		return mcontent;
	}

	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	
}
