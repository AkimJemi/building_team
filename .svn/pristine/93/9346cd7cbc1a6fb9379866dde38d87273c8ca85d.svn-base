package main.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import main.dao.MainDAO;
import main.model.Main;

public class WriteMainService {
	private MainDAO mainDao = new MainDAO();
	
	public Main write(Main main) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			String memberId = mainDao.insert(conn, main);
			conn.commit();
			Main maina = mainDao.SelectByMemberID(conn, memberId);
			conn.commit();
			return maina;
		}catch(SQLException e) {
			System.out.println("SQLException");
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch(RuntimeException e) {
			System.out.println("RuntimeException");
			JdbcUtil.close(conn);
			throw e;
		}finally {
			System.out.println("finally");
			JdbcUtil.close(conn);
		}
	}
	public Main read(String memberId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Main WriteContent = mainDao.SelectByMemberID(conn, memberId);
			if(WriteContent ==null) {
				throw new RuntimeException("fail to insert Writer13");
			}
			conn.commit();
			return WriteContent ;
		}catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch(RuntimeException e) {
			JdbcUtil.close(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
	}
	
}