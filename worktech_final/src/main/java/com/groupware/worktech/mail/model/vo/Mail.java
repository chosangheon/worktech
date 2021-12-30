package com.groupware.worktech.mail.model.vo;

import java.sql.Date;

public class Mail {
	private int emlNo;				// 편지 번호
	private String emlNM;			// 제목
	private String emlCNT;			// 내용
	private String emlFLNM;			// 원본 파일명
	private String emlFLRNM;		// 변경 파일명
	private String emlPLCRS;		// 파일경로
	private Date emlTime;			// 시간
	private String emlSnd;			// 상대방
	private int emlMem;				// 사용자
	private int emlStatus;			// 메일 상태 : 0/삭제안됨 1/삭제   / 2 영구삭제   3/ 수신     4/ 발신
	
	public Mail() {}

	public Mail(int emlNo, String emlNM, String emlCNT, String emlFLNM, String emlFLRNM, String emlPLCRS, Date emlTime,
			String emlSnd, int emlMem, int emlStatus) {
		super();
		this.emlNo = emlNo;
		this.emlNM = emlNM;
		this.emlCNT = emlCNT;
		this.emlFLNM = emlFLNM;
		this.emlFLRNM = emlFLRNM;
		this.emlPLCRS = emlPLCRS;
		this.emlTime = emlTime;
		this.emlSnd = emlSnd;
		this.emlMem = emlMem;
		this.emlStatus = emlStatus;
	}

	public int getEmlNo() {
		return emlNo;
	}

	public void setEmlNo(int emlNo) {
		this.emlNo = emlNo;
	}

	public String getEmlNM() {
		return emlNM;
	}

	public void setEmlNM(String emlNM) {
		this.emlNM = emlNM;
	}

	public String getEmlCNT() {
		return emlCNT;
	}

	public void setEmlCNT(String emlCNT) {
		this.emlCNT = emlCNT;
	}

	public String getEmlFLNM() {
		return emlFLNM;
	}

	public void setEmlFLNM(String emlFLNM) {
		this.emlFLNM = emlFLNM;
	}

	public String getEmlFLRNM() {
		return emlFLRNM;
	}

	public void setEmlFLRNM(String emlFLRNM) {
		this.emlFLRNM = emlFLRNM;
	}

	public String getEmlPLCRS() {
		return emlPLCRS;
	}

	public void setEmlPLCRS(String emlPLCRS) {
		this.emlPLCRS = emlPLCRS;
	}

	public Date getEmlTime() {
		return emlTime;
	}

	public void setEmlTime(Date emlTime) {
		this.emlTime = emlTime;
	}

	public String getEmlSnd() {
		return emlSnd;
	}

	public void setEmlSnd(String emlSnd) {
		this.emlSnd = emlSnd;
	}

	public int getEmlMem() {
		return emlMem;
	}

	public void setEmlMem(int emlMem) {
		this.emlMem = emlMem;
	}

	public int getEmlStatus() {
		return emlStatus;
	}

	public void setEmlStatus(int emlStatus) {
		this.emlStatus = emlStatus;
	}

	@Override
	public String toString() {
		return "Mail [emlNo=" + emlNo + ", emlNM=" + emlNM + ", emlCNT=" + emlCNT + ", emlFLNM=" + emlFLNM
				+ ", emlFLRNM=" + emlFLRNM + ", emlPLCRS=" + emlPLCRS + ", emlTime=" + emlTime + ", emlSnd=" + emlSnd
				+ ", emlMem=" + emlMem + ", emlStatus=" + emlStatus + "]";
	}
	
	
}
