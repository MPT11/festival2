package com.githrd.festival.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class InfoVO {

    private int ffee;
    private String foplace, fcontext, hostinst, hostorgan, fhaddr, froadaddr, latitude, longitude;
    private Date hsdate;
    private Date hedate;
    
    /*
    작성자 : 윤한기
    작성일 : 22-05-22
*/
//  축제정보에 사용하려고 추가한 부분
//------------------------------------------------------------
    private int rsco;
    private String idir;

    public int getRsco() {return rsco;}
    public void setRsco(int rsco) {this.rsco = rsco;}
    public String getIdir() {return idir;}
    public void setIdir(String idir) {this.idir = idir;}
//------------------------------------------------------------

	
// 윤한기 VO	
	public int getFfee() {
		return ffee;
	}
	public void setFfee(int ffee) {
		this.ffee = ffee;
	}
	public String getFoplace() {
		return foplace;
	}
	public void setFoplace(String foplace) {
		this.foplace = foplace;
	}
	public String getFcontext() {
		return fcontext;
	}
	public void setFcontext(String fcontext) {
		this.fcontext = fcontext;
	}
	public String getHostinst() {
		return hostinst;
	}
	public void setHostinst(String hostinst) {
		this.hostinst = hostinst;
	}
	public String getHostorgan() {
		return hostorgan;
	}
	public void setHostorgan(String hostorgan) {
		this.hostorgan = hostorgan;
	}
	public String getFhaddr() {
		return fhaddr;
	}
	public void setFhaddr(String fhaddr) {
		this.fhaddr = fhaddr;
	}
	public String getFroadaddr() {
		return froadaddr;
	}
	public void setFroadaddr(String froadaddr) {
		this.froadaddr = froadaddr;
	}
	public Date getHsdate() {
		return hsdate;
	}
	public void setHsdate(Date hsdate) {
		this.hsdate = hsdate;
	}
	public Date getHedate() {
		return hedate;
	}
	public void setHedate(Date hedate) {
		this.hedate = hedate;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}	
}
