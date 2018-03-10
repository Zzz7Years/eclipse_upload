package com.blog.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.domain.Article;
import com.blog.service.ArticleService;

public class ArticleListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//学无止境，所有博客文章列表
		ArticleService service = new ArticleService();
		List<Article> list = service.getAllArticle();
		
		//存入request域
		request.setAttribute("allarticle", list);
		
		//转发
		request.getRequestDispatcher("/articlelist.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
