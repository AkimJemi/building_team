package main.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import main.dao.MainDAO;
import main.model.Main;

public class MainService {
	private MainDAO mainDao = new MainDAO();
	
	public Main readMainService() {
		try (Connection conn = ConnectionProvider.getConnection()) {
			conn.setAutoCommit(false);
			Main getMainByNo = mainDao.getMainByNo(conn);

			JdbcUtil.close(conn);
			return getMainByNo;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	
	}
	
	public ArrayList<Main> getMainListService(Map pagingValues) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			ArrayList<Main> ListMain = mainDao.mainSelectAll(conn,
					pagingValues);
			return ListMain;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
}
