package com.groupware.worktech.mail.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.groupware.worktech.common.PageInfo;
import com.groupware.worktech.mail.model.vo.Mail;

@Repository("mDAO")
public class MailDAO {

	public int getMailCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("mailMapper.getMailCount");
	}

	public ArrayList<Mail> selectReList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectReList", null, rowBounds);
	}

}
