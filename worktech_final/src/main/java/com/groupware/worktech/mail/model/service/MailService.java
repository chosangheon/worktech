package com.groupware.worktech.mail.model.service;

import java.util.ArrayList;

import com.groupware.worktech.common.PageInfo;
import com.groupware.worktech.mail.model.vo.Mail;

public interface MailService {

	int getMailCount();

	ArrayList<Mail> selectReList(PageInfo pi);
	
	
}
