package com.cetpa.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cetpa.model.Person;

@Service
public interface PersonService 
{
	void saveRecord(Person person);

	List<Person> getPersonList();

	Person getPerson(int pid);

	void updatePerson(Person person);

	void deleteRecord(Person person);
}
