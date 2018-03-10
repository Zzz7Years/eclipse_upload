package com.blog.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.domain.Article;
import com.blog.service.ArticleService;

public class HomeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取轮播图图片
		
		//获取最近更新文章列表
		//1、获取新更新文章信息封装到List<bean>
		ArticleService service = new ArticleService();
		List<Article> list = service.getNewArticle();
		
		//传值转发到 index.jsp
		request.setAttribute("newArticle", list);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
