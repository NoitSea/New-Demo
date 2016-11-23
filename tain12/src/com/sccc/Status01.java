package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status01 {
	private ArrayList<String> zhuangTai;
    private HashMap<String,ArrayList<String>> tiMu;
	public Status01() {
		
		     zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		   
		     String qingKuang="忘记了今天是女朋友的生日";
		     zhuangTai.add(qingKuang);
		   
		     String xuanXiang1="最近在忙工作，要升职了";
		     String xuanXiang2="我和老同学一起聚会，没时间";
		     String xuanXiang3="我并没有忘记，只是想给你一个惊喜";
		     String xuanXiang4="生日?你不是才过了吗";
		     
		     ArrayList<String> temp = new ArrayList<String>();		   
		     temp.add(xuanXiang1);
		     temp.add(xuanXiang2);
		     temp.add(xuanXiang3);
		     temp.add(xuanXiang4);
		    
		     tiMu.put(qingKuang,temp);
	}
	public  ArrayList<String> getZhuangTai(){
		return zhuangTai;
	}
	public void setZhuangTai(ArrayList<String> zhuangTai){
		this.zhuangTai = zhuangTai;
	}
	public HashMap<String,ArrayList<String>>getTiMu(){
		     return tiMu;
	}

}


