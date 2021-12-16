package com.cetpa.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cetpa.model.Person;

@Repository
public class PersonDaoImpl implements PersonDao
{
	@Autowired 
	private SessionFactory factory;

	@Transactional
	public void saveRecord(Person person) 
	{
		Session session=factory.getCurrentSession();
		session.save(person);
	}
	public List<Person> getList() 
	{
		Session session=factory.openSession();
		Query query=session.createQuery("from Person"); 
		List<Person> list=query.list();
		return list;
	}
	public Person getPerson(int pid) 
	{
		Session session=factory.openSession();
		Person person=(Person)session.get(Person.class,pid);
		return person;
	}
	@Transactional
	public void updatePerson(Person person) 
	{
		Session session=factory.getCurrentSession();
		session.saveOrUpdate(person);
	}
	@Transactional
	public void deleteRecord(Person person) 
	{
		Session session=factory.getCurrentSession();
		session.delete(person);
	}
}
