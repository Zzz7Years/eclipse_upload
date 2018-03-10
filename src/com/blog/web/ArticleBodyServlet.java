package com.blog.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.domain.Article;
import com.blog.service.ArticleService;

public class ArticleBodyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//根据传入的get参数获取一篇文章信息并封装成类
		String aid = request.getParameter("aid");
		ArticleService service = new ArticleService();
		//获取文章封装类
		Article articlebody = service.getArticleBody(aid);
		
		//通过request域转发articlebody.jsp
		request.setAttribute("articlebody", articlebody);
		request.getRequestDispatcher("/articlebody.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
