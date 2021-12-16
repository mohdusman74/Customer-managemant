package com.cetpa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cetpa.model.Person;
import com.cetpa.repository.PersonDao;

@Service
public class PersonServiceImpl implements PersonService 
{
	@Autowired
	private PersonDao dao;

	public void saveRecord(Person person) 
	{
		dao.saveRecord(person);
	}
	public List<Person> getPersonList() 
	{
		List<Person> list=dao.getList();;	
		return list;
	}
	public Person getPerson(int pid) 
	{
		Person person=dao.getPerson(pid);
		return person;
	}
	public void updatePerson(Person person) 
	{
		dao.updatePerson(person);
	}
	public void deleteRecord(Person person) 
	{
		dao.deleteRecord(person);	
	}
}
