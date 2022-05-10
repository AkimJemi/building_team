package unit.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import article.model.Article;
import article.model.Writer;
import jdbc.JdbcUtil;

import unit.model.Unit;

public class UnitDAO {

	public Unit SelectByNo(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from unit where no =?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Unit unit = null;
			if (rs.next()) {
				unit = new Unit(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getString(6),
						rs.getInt(7),
						rs.getDate(8),
						rs.getDate(9)
						);
			}
			return unit;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public Unit insert(Connection conn, Unit unit) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("insert into unit(no, name, hire, Lease, rent_fee,period,size) values(?,?,?,?,?,?,?)")) {
			pstmt.setInt(1, unit.getNo());
			pstmt.setString(2, unit.getName());
			pstmt.setString(3, unit.getHire());
			pstmt.setString(4, unit.getLease());
			pstmt.setInt(5, unit.getRent_fee());
			pstmt.setString(6, unit.getPeriod());
			pstmt.setInt(7, unit.getSize());
			
			pstmt.executeUpdate();

			return unit;
		}
	}

	public int selectCount(Connection conn) throws SQLException{
		Statement stmt =null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs=stmt.executeQuery("select count(*) from unit");
			if(rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}
	
	public void update(Connection conn, Unit unit) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement(
				"update unit set name=?, hire=?, lease=?, rent_fee=?, period=?, size=?, coming=?, leaving=?  where no=?")) {
			pstmt.setString(1, unit.getName());
			pstmt.setString(2, unit.getHire());
			pstmt.setString(3, unit.getLease());
			pstmt.setInt(4, unit.getRent_fee());
			pstmt.setString(5, unit.getPeriod());
			pstmt.setInt(6, unit.getSize());
			pstmt.setDate(7, unit.getComing());
			pstmt.setDate(8, unit.getLeaving());
			pstmt.setInt(9, unit.getNo());

			pstmt.executeUpdate();
		}
	}
	public List<Unit>select(Connection conn, int startRow, int size)throws SQLException{
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			pstmt =conn.prepareStatement("select * from unit order by no asc limit ?,?");
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, size);
			rs = pstmt.executeQuery();
			List<Unit> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertUnit(rs));
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	private Unit convertUnit(ResultSet rs) throws SQLException{
		return new Unit(rs.getInt("no"),
						rs.getString("name"),
						rs.getString("hire"),
				rs.getString("lease"),
				rs.getInt("rent_fee"),
				rs.getString("period"),
			    rs.getInt("size"), 
			    rs.getDate("coming"),
				rs.getDate("leaving"));
	}
	public void delete(Connection conn,Unit unit) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement(
				"update unit set name=\"cos\" , hire=\"임차인\", lease=0, rent_fee=0, period=0, size=?, coming=?, leaving=? where no = ?")) {


			//pstmt.setString(1, unit.getLease());
			pstmt.setInt(1, unit.getSize());
			pstmt.setDate(2, unit.getComing());
			pstmt.setDate(3, unit.getLeaving());
			pstmt.setInt(4, unit.getNo());
			
			//pstmt.setString(1, unit.getName());
			

			pstmt.executeUpdate();
		}
	}
}