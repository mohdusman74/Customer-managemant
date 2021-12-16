package com.cetpa.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cetpa.model.Person;

@Repository
public interface PersonDao 
{
	void saveRecord(Person person);

	List<Person> getList();

	Person getPerson(int pid);

	void updatePerson(Person person);

	void deleteRecord(Person person);
}
