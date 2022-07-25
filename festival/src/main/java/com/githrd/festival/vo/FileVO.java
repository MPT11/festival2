package com.githrd.festival.vo;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;

import com.githrd.festival.vo.FileVO;

import java.text.*;

public class FileVO {
	private int fno, mno, rno, ssize;
	private long len;
	private String savename, oriname, dir, id, sdate;
	private Date wdate;
	ArrayList<FileVO> list;
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getSsize() {
		return ssize;
	}
	public void setSsize(int ssize) {
		this.ssize = ssize;
	}
	public long getLen() {
		return len;
	}
	public void setLen(long len) {
		this.len = len;
	}
	public String getSavename() {
		return savename;
	}
	public void setSavename(String savename) {
		this.savename = savename;
	}	
	public String getOriname() {
		return oriname;
	}
	public void setOriname(String oriname) {
		this.oriname = oriname;
	}
	public String getDir() {
		return dir;
	}
	public void setDir(String dir) {
		this.dir = dir;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}	
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		SimpleDateFormat form = new SimpleDateFormat("yyyy년 MM월 dd일 HH24:mm:ss");
		sdate = form.format(wdate);
	}	
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public ArrayList<FileVO> getList() {
		return list;
	}
	public void setList(ArrayList<FileVO> list) {
		this.list = list;
	}
	
	
}

	
