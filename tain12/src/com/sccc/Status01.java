package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status01 {
	private ArrayList<String> zhuangTai;
    private HashMap<String,ArrayList<String>> tiMu;
	public Status01() {
		
		     zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		   
		     String qingKuang="�����˽�����Ů���ѵ�����";
		     zhuangTai.add(qingKuang);
		   
		     String xuanXiang1="�����æ������Ҫ��ְ��";
		     String xuanXiang2="�Һ���ͬѧһ��ۻᣬûʱ��";
		     String xuanXiang3="�Ҳ�û�����ǣ�ֻ�������һ����ϲ";
		     String xuanXiang4="����?�㲻�ǲŹ�����";
		     
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


