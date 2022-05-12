package unit.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


import jdbc.connection.ConnectionProvider;
import unit.dao.UnitDAO;
import unit.model.Unit;

public class ListUnitService {

	private UnitDAO unitDAO = new UnitDAO();
	private int size = 10;
	
	public UnitPage getUnitPage(int pageNum) {
		try(Connection conn = ConnectionProvider.getConnection()){
			int total = unitDAO.selectCount(conn);
			List<Unit> content =unitDAO.select(conn, (pageNum -1)*size,size);
			return new UnitPage(total, pageNum, size, content);
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
