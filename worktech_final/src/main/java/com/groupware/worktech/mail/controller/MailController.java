package com.groupware.worktech.mail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.worktech.common.PageInfo;
import com.groupware.worktech.common.Pagination;
import com.groupware.worktech.mail.model.exception.MailException;
import com.groupware.worktech.mail.model.service.MailService;
import com.groupware.worktech.mail.model.vo.Mail;

@Controller
public class MailController {
	
	@Autowired
	private MailService mService;
	
	// 메일 수신함 리스트 부르기
	@RequestMapping("relist.mi")
	public ModelAndView boardList(@RequestParam(value="page", required=false) Integer page, /*Model model*/ ModelAndView mv) {
	
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int mailCount = mService.getMailCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, mailCount);
		
		ArrayList<Mail> list = mService.selectReList(pi);
		
		if(list != null) {
			
			mv.addObject("pi", pi);
			mv.addObject("list", list);
			mv.setViewName("mailbox");
		}else {
			throw new MailException("수신메일함 조회에 실패하였습니다");
		}
		
		
		
		
		
		return mv;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 메일 전송 폼으로 가기
//	@RequestMapping(value = "/mailForm")
//	  public String mailForm() {
//
//	    return "/mailForm";
//	 }
//	
//	 @RequestMapping(value = "/mailSending")
//	  public String mailSending(HttpServletRequest request) {
//
//	    String setfrom = "wnsghks1017@naver.com";         
//	    String tomail  = request.getParameter("tomail");     // 받는 사람 이메일
//	    String title   = request.getParameter("title");      // 제목
//	    String content = request.getParameter("content");    // 내용
//	    String filename =  request.getParameter("submitFile");   
//	    try {
//	      MimeMessage message = mailSender.createMimeMessage();
//	      MimeMessageHelper messageHelper 
//	                        = new MimeMessageHelper(message, true, "UTF-8");
//
//	      messageHelper.setFrom("wnsghks1996755@gmail.com");  // 보내는사람 생략하거나 하면 정상작동을 안함
//	      messageHelper.setTo("wnsghks1017@naver.com");     // 받는사람 이메일
//	      messageHelper.setSubject("첫 메일"); // 메일제목은 생략이 가능하다
//	      messageHelper.setText("안녕");  // 메일 내용
//
//	      mailSender.send(message);
//	    } catch(Exception e){
//	      System.out.println(e);
//	    }
//
//	    return "redirect:/mailForm";
//	  }
//	} 
}
