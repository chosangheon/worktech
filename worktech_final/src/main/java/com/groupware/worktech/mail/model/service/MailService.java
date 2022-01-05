package com.groupware.worktech.mail.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.groupware.worktech.common.PageInfo;
import com.groupware.worktech.member.model.vo.Member;
import com.groupware.worktech.mail.model.vo.Mail;
import com.groupware.worktech.mail.model.vo.MailFile;

public interface MailService {
	
	int insertMailFile(List<MailFile> mailFileList);

	int insertMail(Mail m);

	int getTempListCount(String empNo);

	ArrayList<Mail> selectTempList(PageInfo pi, String empNo);

	Mail selectTempMail(int id);

	int updateMail(Mail m);

	int deleteMailFile(int mFileNo);

	MailFile selectMailFile(int mFileNo);

	int insertTempMail(Mail m);

	int getsendListCount(String empNo);

	ArrayList<Mail> selectSendList(PageInfo pi, String empNo);


	Member getMId(String mId);

	int getReceiveListCount(String email);

	ArrayList<Mail> selectReceiveList(PageInfo pi, String email);

	int deleteMail(Map<String, Object> map);

	int insertMailSRReceiver(String mId);

	int insertMailSRSender(String empNo);

	int getDeleteListCount(String empNo);

	ArrayList<Mail> selectDeleteList(PageInfo pi, String empNo);

	ArrayList<Member> searchEmp(String keyword);

	int updateRDate(Map<String, Object> map);

	int updateFavorites(Map<String, Object> map);

	Mail selectMail(Map<String, Object> map);

	int getAllListCount(String empNo);

	ArrayList<Mail> selectAllList(PageInfo pi, String empNo);

	int selectCountNotRead(String empNo);

	int getFavoritesListCount(String empNo);

	ArrayList<Mail> selectFavoritesList(PageInfo pi, String empNo);

	int getSearchListCount(Map<String, Object> map);

	ArrayList<Mail> searchList(PageInfo pi, Map<String, Object> map);

	ArrayList<Mail> selectCheckList(String empNo);


}