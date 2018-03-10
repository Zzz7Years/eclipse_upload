package com.blog.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.blog.domain.Message;
import com.blog.service.MessageService;

public class MessageServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//实现留言数据回显
		MessageService service = new MessageService();
		List<Message> messages = service.getAllMessage();
		
		request.setAttribute("messages", messages);
		//转发
		request.getRequestDispatcher("/message.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//先判断验证码
		//1、获取图片生成的验证码
		String verificod_session = (String) request.getSession().getAttribute("verificod_session");
		//2、获取页面输入的验证码
		String verificod_client = request.getParameter("verificod");
		//3、对比
		if(!verificod_session.equals(verificod_client)){
			request.setAttribute("loginfo", "您输入的验证码有误！");
			doGet(request,response);
		}else{
			//提交页面数据给数据库
			MessageService service = new MessageService();
			Map<String,String[]> properties = request.getParameterMap();
			Message message = new Message();
			
			//beanUtils自动封装表单信息
			try {
				BeanUtils.populate(message, properties);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			
			//手动封装表单没有的信息
			message.setMid(UUID.randomUUID().toString());
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String date = format.format(new Date());
			message.setMdate(date);
			
			service.insertMessage(message);
			
			doGet(request,response);
			
		}
		
	}

}
