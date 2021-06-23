package kr.ac.kopo.kopo01.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import kr.ac.kopo.kopo01.domain.Board;
import kr.ac.kopo.kopo01.domain.BoardItem;

public class BoardItemDaoImpl implements BoardItemDao {

	@Override
	public int create(BoardItem boardItem) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://192.168.23.25:3306/kopoctc", "root", "kopo0000");
        int result = 0;
        String sqlPstmt = "insert into board_item (b_id, title, date, content) "
        		+ "values(?, ?, now(), ?);";
        PreparedStatement pstmt = conn.prepareStatement(sqlPstmt);
        pstmt.setInt(1, boardItem.getB_id());
        pstmt.setString(2, boardItem.getTitle());
        pstmt.setString(3, boardItem.getContent());
        try {
        	result = pstmt.executeUpdate(); // 업데이트 반영 항목 개수 저장        	
        } catch (SQLException e) {
        	System.out.println(e.getMessage());
        }
        pstmt.close();
        conn.close();
        return result; // 업데이트 반영 항목 개수 리턴
	}

	@Override
	public BoardItem selectOne(int id) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://192.168.23.25:3306/kopoctc", "root", "kopo0000");
		Statement stmt = conn.createStatement();
		String selectQuery = String.format("select * from board_item where id = %d;", id);
		ResultSet rset = stmt.executeQuery(selectQuery);
		int b_id = 0;
		String title = "";
		String date = "";
		String content = "";
		
		try {
			rset.next();
			b_id = rset.getInt(2);
			title = rset.getString(3);
			date = rset.getString(4);
			content = rset.getString(5);			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		stmt.close();
		conn.close();		
		BoardItem boarditem = new BoardItem(id, b_id, title, date, content);		
		return boarditem;
	}
	@Override
	public List<BoardItem> selectAll() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://192.168.23.25:3306/kopoctc", "root", "kopo0000");
        List<BoardItem> boarditem = new ArrayList<BoardItem>();
        Statement stmt = conn.createStatement();
        ResultSet rset = stmt.executeQuery("select * from board_item;");
        try {
        	while (rset.next()) {
        		boarditem.add(new BoardItem(
        				rset.getInt(1), rset.getInt(2), rset.getString(3), rset.getString(4), rset.getString(5)));
        		
        	}
        } catch (SQLException e) {
        	System.out.println(e.getMessage());
        }
        rset.close();
        stmt.close();
        conn.close();
		return boarditem;
	}

	@Override
	public int update(BoardItem boardItem) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://192.168.23.25:3306/kopoctc", "root", "kopo0000");		
		int result = 0;
		String updatePstmt = String.format("update board_item "
				+ "set title=?, content=?"
				+ "where id=?;");
		PreparedStatement pstmt = conn.prepareStatement(updatePstmt);
		pstmt.setString(1, boardItem.getTitle());
		pstmt.setString(2, boardItem.getContent());
		pstmt.setInt(3, boardItem.getId());
		try {
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		pstmt.close();
		conn.close();
		return result;
	}

	@Override
	public int delete(BoardItem boardItem) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://192.168.23.25:3306/kopoctc", "root", "kopo0000");		
		int result = 0;
		String deletePstmt = "delete from board_item where id=? and b_id=?;";
		PreparedStatement pstmt = conn.prepareStatement(deletePstmt);
		pstmt.setInt(1, boardItem.getId());
		pstmt.setInt(2, boardItem.getB_id());
		try {
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		pstmt.close();
		conn.close();
		return result;
		
	}
}
