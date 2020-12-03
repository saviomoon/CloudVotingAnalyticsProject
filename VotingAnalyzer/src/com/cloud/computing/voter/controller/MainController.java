package com.cloud.computing.voter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cloud.computing.voter.dao.VoterDAO;
import com.cloud.computing.voter.model.Voter;



@Controller
public class MainController {
	
	@Autowired
	private VoterDAO voterDao;
	
//	@RequestMapping(value ="/")
//	public String home() {
//		return "index";
//	}
	@RequestMapping(value ="/")
	public ModelAndView listContact(ModelAndView model)
	{
		model.addObject("voter", new Voter());
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value ="/save", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute Voter voter)
	{
		voterDao.saveVoter(voter);
		return new ModelAndView("redirect:/new");
	}
	
	@RequestMapping(value ="/new", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model)
	{
		int maleForTrump = voterDao.getAnalysisForSex("Male", "Trump");
		int femaleForTrump = voterDao.getAnalysisForSex("Female", "Trump");
		int neutralForTrump = voterDao.getAnalysisForSex("Neutral", "Trump");
		int otherForTrump = voterDao.getAnalysisForSex("Other", "Trump");
		int maleForBiden = voterDao.getAnalysisForSex("Male", "Biden");
		int femaleForBiden = voterDao.getAnalysisForSex("Female", "Biden");
		int neutralForBiden = voterDao.getAnalysisForSex("Neutral", "Biden");
		int otherForBiden = voterDao.getAnalysisForSex("Other", "Biden");
		
		int sexTotal = maleForTrump + femaleForTrump + neutralForTrump +otherForTrump +maleForBiden+femaleForBiden+neutralForBiden+otherForBiden;
		double percent = 100/sexTotal;
		
		model.addObject("maleForTrump",maleForTrump * percent);
		model.addObject("femaleForTrump",femaleForTrump* percent);
		model.addObject("neutralForTrump",neutralForTrump* percent);
		model.addObject("otherForTrump",otherForTrump* percent);
		model.addObject("maleForBiden",maleForBiden* percent);
		model.addObject("femaleForBiden",femaleForBiden* percent);
		model.addObject("neutralForBiden",neutralForBiden* percent);
		model.addObject("otherForBiden",otherForBiden* percent);
		model.setViewName("results");
		
		
		int age20To30ForTrump = voterDao.getAnalysisForAge(20, 30);
		
		int ageTotal = age20To30ForTrump ; 
		double agePercent = 100/ageTotal;
		
		model.addObject("age20To30ForTrump", age20To30ForTrump *agePercent );
		
		return model;
	}

}
