package kr.ac.kopo.kopo01.service;

import java.sql.SQLException;
import java.util.List;

import kr.ac.kopo.kopo01.domain.Board;
import kr.ac.kopo.kopo01.domain.BoardItem;

public interface BoardItemService {
	int create(BoardItem boardItem) throws ClassNotFoundException, SQLException;
	BoardItem selectOne(int id) throws ClassNotFoundException, SQLException;
	List<BoardItem> selectAll() throws ClassNotFoundException, SQLException;
	int update(BoardItem boardItem) throws ClassNotFoundException, SQLException;
	int delete(BoardItem boardItem) throws ClassNotFoundException, SQLException;
}
