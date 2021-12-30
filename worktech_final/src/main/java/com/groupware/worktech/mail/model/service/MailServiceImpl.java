package com.groupware.worktech.mail.model.service;

import org.springframework.stereotype.Service;

import com.groupware.worktech.common.PageInfo;
import com.groupware.worktech.mail.model.dao.MailDAO;
import com.groupware.worktech.mail.model.vo.Mail;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;


@Service("mService")
public class MailServiceImpl implements MailService {
	
	@Autowired
	private MailDAO mDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getMailCount() {
		return mDAO.getMailCount(sqlSession);
	}

	@Override
	public ArrayList<Mail> selectReList(PageInfo pi) {
		
		return mDAO.selectReList(sqlSession, pi);
	}
}
