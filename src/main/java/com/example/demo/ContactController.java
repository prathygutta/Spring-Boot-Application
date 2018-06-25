package com.example.demo;

	import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
	 
	@Controller
	@RequestMapping(value = "/contact")
	public class ContactController {
		private static List<Contact> contacts = new ArrayList<Contact>();

		static {
			contacts.add(new Contact("Barack", "Obama", "barack.o@whitehouse.com", "147-852-965"));
			contacts.add(new Contact("George", "Bush", "george.b@whitehouse.com", "785-985-652"));
			contacts.add(new Contact("Bill", "Clinton", "bill.c@whitehouse.com", "236-587-412"));
			contacts.add(new Contact("Ronald", "Reagan", "ronald.r@whitehouse.com", "369-852-452"));
		}
		@RequestMapping(method = RequestMethod.GET)
	    public ModelAndView viewRegistration(Map<String, Object> model) {
			ContactForm contactForm = new ContactForm();
			contactForm.setContacts(contacts);
			
			return new ModelAndView("contactEdit" , "contactForm", contactForm);
	       // return "registration";
	    }
	     
	   /* @RequestMapping(method = RequestMethod.POST)
	    public String processRegistration(@ModelAttribute("contactForm") Contact contact,
	            Map<String, Object> model) {
	         
	        // implement your own registration logic here...
	         
	        // for testing purpose:
	        System.out.println("username: " + user.getUsername());
	        System.out.println("password: " + user.getPassword());
	        System.out.println("email: " + user.getEmail());
	        System.out.println("birth date: " + user.getBirthDate());
	        System.out.println("profession: " + user.getProfession());
	         
	        return "RegistrationSuccess";
	    }*/
	
}
