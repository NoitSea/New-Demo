package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status02 {
	private ArrayList<String> zhuangTai;
    private HashMap<String,ArrayList<String>> tiMu;
	public Status02() {
		
		     zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		   
		     String qingKuang="���Ů�������ڴ���Σ�վ���";
		     zhuangTai.add(qingKuang);
		   
		     String xuanXiang1="�Լ����ӳ�ȥ������취";
		     String xuanXiang2="�򱨾��绰��ԭ�صȴ���Ԯ";
		     String xuanXiang3="�۲��������ο������׼��������";
		     String xuanXiang4="����Ĭ����ϣ���ͬ�ӳ�����";
		     
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




