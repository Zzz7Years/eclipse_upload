package com.blog.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DataSourceUtils {
	private static DataSource dataSource = new ComboPooledDataSource();
	private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();
	
	//ֱ�ӻ�ȡһ�����ӳ�
	public static DataSource getDataSource(){
		return dataSource;
	}
	
	public static Connection getConnection() throws SQLException{
		return dataSource.getConnection();
	}
	
	//��ȡ��ǰ�߳����Ӷ���
	public static Connection getCurrentConnection() throws SQLException{
		
		Connection conn = tl.get();
		if(conn == null){
			conn = dataSource.getConnection();
			tl.set(conn);
		}
		return conn;
	}
	
	//��������
	public static void startTransaction() throws SQLException{
		Connection conn = getCurrentConnection();
		if(conn != null){
			conn.setAutoCommit(false);
		}
	}
	
	//����ع�
	public static void rollback() throws SQLException{
		Connection conn = getCurrentConnection();
		if(conn !=null){
			conn.rollback();
		}
	}
	
	//�ύ���� �ر���Դ �Լ���ThreadLocal1���ͷ�
	public static void commitAndRelease() throws SQLException{
		Connection conn = getCurrentConnection();
		if(conn != null){
			conn.commit();
			conn.close();
			tl.remove();
		}
	}
	
	//�ر���Դ����
	public static void closeConnection() throws SQLException {
		Connection conn = getCurrentConnection();
		if (conn != null) {
			conn.close();
		}
	}

	public static void closeStatement(Statement st) throws SQLException {
		if (st != null) {
			st.close();
		}
	}

	public static void closeResultSet(ResultSet rs) throws SQLException {
		if (rs != null) {
			rs.close();
		}
	}

}
