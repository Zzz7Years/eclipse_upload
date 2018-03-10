package com.blog.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.blog.domain.Article;
import com.blog.utils.DataSourceUtils;

public class ArticleDao {
	
	/**
	 * 获取最近更新文章
	 * @return 最近更新文章集合
	 * @throws SQLException
	 */
	public List<Article> getNewArticle() throws SQLException{
		List<Article> list = new ArrayList<Article>();
		
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		
		String sql = "select * from main_article WHERE anew=1";
		
		list = runner.query(sql,new BeanListHandler<Article>(Article.class));
		
		return list;
	}
	
	/**
	 * 根据aid获取文章对象
	 * @return 对应文章对象
	 * @throws SQLException 
	 */
	public Article getArticleByAid(String aid) throws SQLException{
		
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		
		String sql ="select * from main_article WHERE aid=?";
		
		return runner.query(sql, new BeanHandler<Article>(Article.class),aid);
	}
	
	/**
	 * 获取所有文章
	 * @return List<Article>
	 * @throws SQLException
	 */
	public List<Article> getAllArticle() throws SQLException{
		List<Article> list = new ArrayList<Article>();
		
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		
		String sql = "select * from main_article";
		
		list = runner.query(sql,new BeanListHandler<Article>(Article.class));
		
		return list;
	}
}
