package com.blog.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.blog.domain.Message;
import com.blog.utils.DataSourceUtils;

public class MessageDao {
	
	/**
	 * 获取所有Message留言信息
	 * @return List<Message>集合
	 * @throws SQLException
	 */
	public List<Message> getAllMessage() throws SQLException{
		
		List<Message> list = new ArrayList<Message>();
		
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		
		String sql = "select * from main_message";
		
		list = runner.query(sql, new BeanListHandler<Message>(Message.class));
		
		return list;
	}
	
	/**
	 * 插入留言数据
	 * @throws SQLException 
	 */
	public void insertMessage(Message message) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		
		String sql = "insert into main_message values(?,?,?,?)";
		
		runner.update(sql, message.getMid(), message.getMname() 
				,message.getMdate() ,message.getMcontent());
	}
}
