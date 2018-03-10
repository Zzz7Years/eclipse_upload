package com.blog.domain;

public class Article {

	private String aid;			//标识ID
	private String atitle;		//文章标题
	private String adate;		//创建日期
	private String aauther;		//文章作者
	private String aoverview;	//文章概况
	private String abody;		//文章正文
	private String abodylink;	//正文链接
	private String apiclink;	//图片地址
	private String asource;		//文章来源
	private int anew;			//是否新发布
	
	public Article(){}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getAtitle() {
		return atitle;
	}

	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}

	public String getAdate() {
		return adate;
	}

	public void setAdate(String adate) {
		this.adate = adate;
	}

	public String getAauther() {
		return aauther;
	}

	public void setAauther(String aauther) {
		this.aauther = aauther;
	}

	public String getAoverview() {
		return aoverview;
	}

	public void setAoverview(String aoverview) {
		this.aoverview = aoverview;
	}

	public String getAbody() {
		return abody;
	}

	public void setAbody(String abody) {
		this.abody = abody;
	}

	public String getAbodylink() {
		return abodylink;
	}

	public void setAbodylink(String abodylink) {
		this.abodylink = abodylink;
	}

	public String getApiclink() {
		return apiclink;
	}

	public void setApiclink(String apiclink) {
		this.apiclink = apiclink;
	}
	
	public String getAsource() {
		return asource;
	}

	public void setAsource(String asource) {
		this.asource = asource;
	}

	public int getAnew() {
		return anew;
	}

	public void setAnew(int anew) {
		this.anew = anew;
	}
	
	
	
}
