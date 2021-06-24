package kr.ac.kopo.kopo01.service;

import java.sql.SQLException;
import java.util.List;

import kr.ac.kopo.kopo01.domain.BoardItem;
import kr.ac.kopo.kopo01.dao.BoardItemDao;
import kr.ac.kopo.kopo01.dao.BoardItemDaoImpl;

public class BoardItemServiceImpl implements BoardItemService {

	private static BoardItemDao dao = new BoardItemDaoImpl();
	
	@Override
	public int create(BoardItem boardItem) throws ClassNotFoundException, SQLException {
		return dao.create(boardItem);
	}

	@Override
	public BoardItem selectOne(int id) throws ClassNotFoundException, SQLException {
		
		return dao.selectOne(id);
	}

	@Override
	public List<BoardItem> selectAll() throws ClassNotFoundException, SQLException {
		
		return dao.selectAll();
	}

	@Override
	public int update(BoardItem boardItem) throws ClassNotFoundException, SQLException {
		return dao.update(boardItem);
		
	}

	@Override
	public int delete(BoardItem boardItem) throws ClassNotFoundException, SQLException {
		return dao.delete(boardItem);
		
	}

}
