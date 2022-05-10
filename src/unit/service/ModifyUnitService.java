package unit.service;

import java.sql.Connection;
import java.sql.SQLException;


import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import unit.dao.UnitDAO;
import unit.model.Unit;

public class ModifyUnitService {
	private UnitDAO unitDao = new UnitDAO();
	
	public void modify(Unit unit1) {
		Connection conn =null;
		try {
			conn =ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			unitDao.update(conn, unit1);
		conn.commit();
		}catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch(PermissionDeniedException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
	}
}
