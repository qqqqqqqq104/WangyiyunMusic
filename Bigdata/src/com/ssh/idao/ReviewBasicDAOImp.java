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
		System.out.print("************输出结果*************");
		Session session = getSession();//打开session
		String hql="from Bigdata";//hql语句查询数据库关键词信息
		Query query = session.createQuery(hql);//把查询到的数据创建队列
		List<Bigdata> results = query.list();//把数据放到列表中
		//开启一个新的事务Transaction
    	session.beginTransaction();
    	//提交事务，此处才是真正与数据库交互的语句
    	session.getTransaction().commit();
    	session.close();
		return results;
	}
}
