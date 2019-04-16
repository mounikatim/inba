package com.hcl.Spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController

public class SpringController {
	@Autowired
	ServiceIntf ser;
@RequestMapping(value="/hello")
	public ModelAndView hello(@ModelAttribute("login") Pojo pojo ){
	return new ModelAndView("Hello");
	
}
@RequestMapping(value="/welcome")
public String welcome(){
return "Welcomeeeeee";

}

@RequestMapping(value="/save")
	public ModelAndView saved(@ModelAttribute("login") Pojo pojo ){
	ser.save(pojo);
	
	return new ModelAndView("redirect:/list");
	
}
@RequestMapping(value="/list")
public ModelAndView View(@ModelAttribute("login") Pojo pojo ){

List<Pojo> ls=ser.list();
return new ModelAndView("List","ListUser",ls);
}
@RequestMapping(value="/delete")
public ModelAndView Delete(HttpServletRequest req,@ModelAttribute("login") Pojo pojo ){
	int id=Integer.parseInt(req.getParameter("id"));
	ser.delete(id);
return new ModelAndView("redirect:/list");

}
@RequestMapping(value="/edit")
public ModelAndView edit(HttpServletRequest req,@ModelAttribute("login") Pojo pojo ){
	int id=Integer.parseInt(req.getParameter("id"));
	Pojo ee=ser.edit(id);
	
	List<Pojo> ls=ser.list();
	
 ModelAndView model=new ModelAndView("edit","list",ls);
 model.addObject("addform",ee);
 return model;

}
@RequestMapping(value="/update")
public ModelAndView Update(HttpServletRequest req,@ModelAttribute("login") Pojo pojo ){
	int id=Integer.parseInt(req.getParameter("id"));
	ser.update(id,pojo);
	System.out.println("hi aswin");
return new ModelAndView("redirect:/list");

}

}