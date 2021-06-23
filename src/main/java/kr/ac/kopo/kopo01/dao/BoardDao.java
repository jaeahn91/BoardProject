package kr.ac.kopo.kopo01.dao;

import java.sql.SQLException;
import java.util.List;

import kr.ac.kopo.kopo01.domain.Board;

public interface BoardDao {
	void create(Board board) throws ClassNotFoundException, SQLException;
	Board selectOne(int id);
	List<Board> selectAll();
	void update(Board board);
	void delete(Board board);
}
