package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status02 {
	private ArrayList<String> zhuangTai;
    private HashMap<String,ArrayList<String>> tiMu;
	public Status02() {
		
		     zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		   
		     String qingKuang="你和女朋友现在处于危险境地";
		     zhuangTai.add(qingKuang);
		   
		     String xuanXiang1="自己先逃出去，再想办法";
		     String xuanXiang2="打报警电话，原地等待救援";
		     String xuanXiang3="观察情况，安慰她，找准逃生机会";
		     String xuanXiang4="两人默契配合，共同逃出升天";
		     
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




