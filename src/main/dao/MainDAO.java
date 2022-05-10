package main.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import jdbc.JdbcUtil;
import main.model.Main;

public class MainDAO {
	private Main main = new Main();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public Main getMainByNo(Connection conn) throws SQLException {
		try {
			pstmt = conn.prepareStatement(
					"select total_size ,com_heat ,com_clean ,com_ev ,com_es ,com_maintain ,com_insur ,com_labor ,com_water ,com_ele from main");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				main = new Main(rs.getInt(1), rs.getInt(2), rs.getInt(3),
						rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7),
						rs.getInt(8), rs.getInt(9), rs.getInt(10));
			}
			conn.commit();
		} catch (Exception e) {
			System.out.println("error :  getMainByNo");
			e.getMessage();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return main;
	}
	public ArrayList<Main> mainSelectAll(Connection conn, Map pagingValues)
			throws SQLException {
		ArrayList<Main> MainMixed = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(
					"select total_size ,com_heat ,com_clean ,com_ev ,com_es ,com_maintain ,com_insur ,com_labor ,com_water ,com_ele from main");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				main = new Main(rs.getInt(1), rs.getInt(2), rs.getInt(3),
						rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7),
						rs.getInt(8), rs.getInt(9), rs.getInt(10));
				System.out.println("Test");
				MainMixed.add(main);
			}
		} catch (Exception e) {
			e.getMessage();
			System.out.println(" error :  mainSelectAll");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return MainMixed;
	}
}
