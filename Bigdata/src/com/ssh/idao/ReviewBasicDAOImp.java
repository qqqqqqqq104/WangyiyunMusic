package com.ssh.idao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.ssh.dao.BaseDAO;
import com.ssh.dao.ReviewBasicDAO;
import com.ssh.dto.Bigdata;

public class ReviewBasicDAOImp extends BaseDAO implements ReviewBasicDAO{

	public List<Bigdata> display(){
		System.out.print("************������*************");
		Session session = getSession();//��session
		String hql="from Bigdata";//hql����ѯ���ݿ�ؼ�����Ϣ
		Query query = session.createQuery(hql);//�Ѳ�ѯ�������ݴ�������
		List<Bigdata> results = query.list();//�����ݷŵ��б���
		//����һ���µ�����Transaction
    	session.beginTransaction();
    	//�ύ���񣬴˴��������������ݿ⽻�������
    	session.getTransaction().commit();
    	session.close();
		return results;
	}
}
