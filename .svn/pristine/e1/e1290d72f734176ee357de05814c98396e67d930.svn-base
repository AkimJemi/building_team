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
	
	public String insert(Connection conn, Main main) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"update main set total_size=?, com_heat=?, com_water=?, com_ele=?, com_clean=?, com_ev=?,com_es=?, com_maintain=?, com_insur=?, com_labor=? where memberid = ? ");
			pstmt.setInt(1, main.getTotal_size());
			pstmt.setInt(2, main.getCom_heat());
			pstmt.setInt(3, main.getCom_water());
			pstmt.setInt(4, main.getCom_ele());
			pstmt.setInt(5, main.getCom_clean());
			pstmt.setInt(6, main.getCom_ev());
			pstmt.setInt(7, main.getCom_es());
			pstmt.setInt(8, main.getCom_maintain());
			pstmt.setInt(9, main.getCom_insur());
			pstmt.setInt(10, main.getCom_labor());
			pstmt.setString(11, main.getMemberid());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("test2");
		} finally {
			JdbcUtil.close(pstmt);
		}
		return main.getMemberid();
	}

	public Main SelectByMemberID(Connection conn, String memberId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from main where memberId = ?" );
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			Main main = null;
			if (rs.next()) {
				main = new Main(rs.getString("memberid"), rs.getInt("total_size"), rs.getInt("com_heat"),
						rs.getInt("com_clean"), rs.getInt("com_ev"), rs.getInt("com_es"), rs.getInt("com_maintain"),
						rs.getInt("com_insur"), rs.getInt("com_labor"), rs.getInt("com_water"), rs.getInt("com_ele"));
			}
			return main;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	

	public static int selectCount(Connection conn, Main main) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int mainselect =0;
		try {
			pstmt = conn.prepareStatement("select * from main where memberid=?");
			pstmt.setString(1, main.getMemberid());
			rs=pstmt.executeQuery();
			return mainselect;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
