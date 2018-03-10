package com.blog.service;

import java.sql.SQLException;
import java.util.List;

import com.blog.dao.ArticleDao;
import com.blog.domain.Article;

public class ArticleService {
	
	/**
	 * 获取新更新的文章集合
	 * @return List<Article>
	 */
	public List<Article> getNewArticle(){
		
		ArticleDao dao = new ArticleDao();
		
		try {
			return dao.getNewArticle();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	/**
	 * 通过aid一个获取文章对象
	 * @param aid
	 * @return 一个文章对象
	 */
	public Article getArticleBody(String aid){
		
		ArticleDao dao = new ArticleDao();
		
		try {
			return dao.getArticleByAid(aid);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 获取所有文章
	 * @return List<Article>
	 */
	public List<Article> getAllArticle(){
		
		ArticleDao dao = new ArticleDao();
		
		try {
			return dao.getAllArticle();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
