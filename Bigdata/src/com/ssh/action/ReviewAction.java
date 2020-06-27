package com.ssh.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONArray;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.ReviewBasicDAO;
import com.ssh.dto.Bigdata;

@SuppressWarnings("serial")
public class ReviewAction extends ActionSupport{
	private ReviewBasicDAO dao;
	private Integer id;
	private String keys;
	private Integer frequency;
	private Double weight;
	
	//��ʾ�ؼ����б�
	public String displayView()throws Exception{
		
		System.out.println("************������*************");		
		List<Bigdata> viewlist = new ArrayList();//����ؼ����б�
		viewlist = dao.display();	
		ActionContext.getContext().put("list", viewlist);
		return SUCCESS;
}
	
	public String getData() throws IOException{
		System.out.println("�������");
		HttpServletResponse response = ServletActionContext.getResponse(); 
		response.setCharacterEncoding("UTF-8");
		List<Bigdata> viewlist = new ArrayList();//����ؼ����б�
		viewlist = dao.display();	
		JSONArray jsonArray=JSONArray.fromObject(viewlist);
		 
		//����ǰ��
				try {
					//response.setContentType("text/html;charset=UTF-8");
					response.setContentType("text/html;charset=utf-8");
					String listJson = jsonArray.toString();
			        System.out.println(listJson);
					response.getWriter().print(listJson); 
					System.out.println("�������2****");
				} catch (IOException e) {
					e.printStackTrace();
				}
		return SUCCESS;
	}

	
	
	public ReviewBasicDAO getDao() {
		return dao;
	}
	public void setDao(ReviewBasicDAO dao) {
		this.dao = dao;
	}
	public Integer getId(){
		return id;
	}
	public void setId(Integer id){
		this.id=id;
	}
	public String getKeys(){
		return keys;
	}
	public void setKeys(String keys){
		this.keys=keys;
	}
	public Integer getFrequency(){
		return frequency;
	}
	public void setFrequency(Integer frequency){
		this.frequency=frequency;
	}
	public Double getWeight(){
		return weight;
	}
	public void setWeight(Double weight){
		this.weight=weight;
	}
}
