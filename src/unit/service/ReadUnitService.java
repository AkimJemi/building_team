package unit.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;


import jdbc.connection.ConnectionProvider;
import unit.dao.UnitDAO;
import unit.model.Unit;

public class ReadUnitService {
	private UnitDAO unitDao = new UnitDAO();
	
	
	public Unit getContent(int no) {
		try(Connection conn = ConnectionProvider.getConnection()){
			Unit unit = unitDao.SelectByNo(conn, no);
			if(unit ==null) {
				throw new UnitNotFoundException();
			}
			
			return  unit;
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}


}
