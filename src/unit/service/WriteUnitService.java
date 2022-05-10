package unit.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import unit.dao.UnitDAO;
import unit.model.Unit;

public class WriteUnitService {
	private UnitDAO unitDao = new UnitDAO();

	public Integer write(Unit uni) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			Unit unitContent = unitDao.insert(conn, uni);
			if (unitContent == null) {
				throw new RuntimeException("fail to insert UnitContent");
			}

			conn.commit();

			return unitContent.getNo();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (RuntimeException e) {
			JdbcUtil.close(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

}
