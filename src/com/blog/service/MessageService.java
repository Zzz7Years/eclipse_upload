package com.blog.service;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.blog.dao.MessageDao;
import com.blog.domain.Message;

public class MessageService {
	
	/**
	 * 获取所有Message信息
	 * @return
	 */
	public List<Message> getAllMessage(){
		MessageDao dao = new MessageDao();
		
		try {
			return dao.getAllMessage();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 写入数据
	 */
	public void insertMessage(Message message){
		
		MessageDao dao = new MessageDao();
		
		try {
			dao.insertMessage(message);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
