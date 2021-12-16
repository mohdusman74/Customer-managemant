package com.cetpa.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cetpa.model.Person;
import com.cetpa.services.PersonService;

@Controller
public class PersonController
{
	@Autowired
	private PersonService service;
	
	@RequestMapping("/")
	public String getHome()
	{
		return "home";
	}
	@RequestMapping("/addperson")
	public String getPersonForm()
	{
		return "add-person";
	}
	@RequestMapping("/save-record")
	public String savePerson(Person person)
	{
		service.saveRecord(person);
		return "success";
	}
	@RequestMapping("/showlist")
	public String showPersonList(Model model)
	{
		List<Person> list=service.getPersonList();
		model.addAttribute("personlist",list);
		return "show-person-list";
	}
	@RequestMapping("/editperson")
	public String getEditForm()
	{
		return "edit-person";
	}
	@RequestMapping("/getperson")
	public String getPerson(int pid,Model model)
	{
		Person person=service.getPerson(pid);
		model.addAttribute("person",person);
		return "update-person";
	}
	@RequestMapping("/updaterecord")
	public String updatePerson(Person person)
	{
		service.updatePerson(person);
		return "update-success";
	}
	@RequestMapping("/deleteperson")
	public String getDeleteForm()
	{
		return "delete-person";
	}
	@RequestMapping("/deleterecord")
	public String deletePerson(int pid,Model model)
	{
		Person person=service.getPerson(pid);
		if(person!=null)
		{
			service.deleteRecord(person);
			model.addAttribute("msg", "Person record has been deleted");
		}
		else
			model.addAttribute("msg", "Person with id "+pid+" does not exist");
		return "delete-person";
	}
	@RequestMapping("/searchperson")
	public String getSearchForm()
	{
		return "search-person";
	}
	@RequestMapping("/searchrecord")
	public String getPersonRecord(int pid,Model model)
	{
		Person person=service.getPerson(pid);
		if(person!=null)
		{
			model.addAttribute("person",person);
			return "show-person";
		}
		else
		{
			model.addAttribute("msg", "Person with id "+pid+" does not exist");
			return "search-person";
		}
	}
}
