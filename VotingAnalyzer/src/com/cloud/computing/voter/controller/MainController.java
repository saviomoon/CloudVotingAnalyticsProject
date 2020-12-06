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
		
		
		int age20To30ForTrump = voterDao.getAnalysisForAge(18, 30, "Trump");
		int age30To40ForTrump = voterDao.getAnalysisForAge(30, 40, "Trump");
		int age40To50ForTrump = voterDao.getAnalysisForAge(40, 50, "Trump");
		int age50To60ForTrump = voterDao.getAnalysisForAge(50, 60, "Trump");
		int age60To70ForTrump = voterDao.getAnalysisForAge(60, 70, "Trump");
		int age70To80ForTrump = voterDao.getAnalysisForAge(70, 80, "Trump");
		int age80To90ForTrump = voterDao.getAnalysisForAge(80, 90, "Trump");
		int age90To100ForTrump = voterDao.getAnalysisForAge(90, 100, "Trump");
		int age100To110ForTrump = voterDao.getAnalysisForAge(100, 110, "Trump");
		int age20To30ForBiden = voterDao.getAnalysisForAge(18, 30, "Biden");
		int age30To40ForBiden = voterDao.getAnalysisForAge(30, 40, "Biden");
		int age40To50ForBiden = voterDao.getAnalysisForAge(40, 50, "Biden");
		int age50To60ForBiden = voterDao.getAnalysisForAge(50, 60, "Biden");
		int age60To70ForBiden = voterDao.getAnalysisForAge(60, 70, "Biden");
		int age70To80ForBiden = voterDao.getAnalysisForAge(70, 80, "Biden");
		int age80To90ForBiden = voterDao.getAnalysisForAge(80, 90, "Biden");
		int age90To100ForBiden = voterDao.getAnalysisForAge(90, 100, "Biden");
		int age100To110ForBiden = voterDao.getAnalysisForAge(100, 110, "Biden");
		
		int ageTotal = age20To30ForTrump + age30To40ForTrump + age40To50ForTrump + age50To60ForTrump + age60To70ForTrump + age70To80ForTrump
				+ age80To90ForTrump + age90To100ForTrump + age100To110ForTrump + age20To30ForBiden + age30To40ForBiden + age40To50ForBiden + age50To60ForBiden + age60To70ForBiden + age70To80ForBiden
				+ age80To90ForBiden + age90To100ForBiden + age100To110ForBiden; 
		double agePercent = 100/ageTotal;
		
		model.addObject("age20To30ForTrump", age20To30ForTrump *agePercent );
		model.addObject("age30To40ForTrump", age30To40ForTrump *agePercent );
		model.addObject("age40To50ForTrump", age40To50ForTrump *agePercent );
		model.addObject("age50To60ForTrump", age50To60ForTrump *agePercent );
		model.addObject("age60To70ForTrump", age60To70ForTrump *agePercent );
		model.addObject("age70To80ForTrump", age70To80ForTrump *agePercent );
		model.addObject("age80To90ForTrump", age80To90ForTrump *agePercent );
		model.addObject("age90To100ForTrump", age90To100ForTrump *agePercent );
		model.addObject("age100To110ForTrump", age100To110ForTrump *agePercent );
 		model.addObject("age20To30ForBiden", age20To30ForBiden *agePercent );
 		model.addObject("age30To40ForBiden", age30To40ForBiden *agePercent );
 		model.addObject("age40To50ForBiden", age40To50ForBiden *agePercent );
 		model.addObject("age50To60ForBiden", age50To60ForBiden *agePercent );
 		model.addObject("age60To70ForBiden", age60To70ForBiden *agePercent );
 		model.addObject("age70To80ForBiden", age70To80ForBiden *agePercent );
 		model.addObject("age80To90ForBiden", age80To90ForBiden *agePercent );
 		model.addObject("age90To100ForBiden", age90To100ForBiden *agePercent );
 		model.addObject("age100To110ForBiden", age100To110ForBiden *agePercent );
 		model.setViewName("results");
		
		
		int americanIndianForTrump = voterDao.getAnalysisForEthnicity("American Indian or Alaska Native", "Trump");
		int asianForTrump = voterDao.getAnalysisForEthnicity("Asian", "Trump");
		int blackForTrump = voterDao.getAnalysisForEthnicity("Black or African American", "Trump");
		int hispanicForTrump = voterDao.getAnalysisForEthnicity("Hispanic or Latino", "Trump");
		int nativeForTrump = voterDao.getAnalysisForEthnicity("Native Hawaiian or Other Pacific Islander", "Trump");
		int whiteForTrump = voterDao.getAnalysisForEthnicity("White", "Trump");
		int americanIndianForBiden = voterDao.getAnalysisForEthnicity("American Indian or Alaska Native", "Biden");
		int asianForBiden = voterDao.getAnalysisForEthnicity("Asian", "Biden");
		int blackForBiden = voterDao.getAnalysisForEthnicity("Black or African American", "Biden");
		int hispanicForBiden = voterDao.getAnalysisForEthnicity("Hispanic or Latino", "Biden");
		int nativeForBiden = voterDao.getAnalysisForEthnicity("Native Hawaiian or Other Pacific Islander", "Biden");
		int whiteForBiden = voterDao.getAnalysisForEthnicity("White", "Biden");
		
		int ethnicityTotal = americanIndianForTrump + asianForTrump + blackForTrump + hispanicForTrump + nativeForTrump + whiteForTrump +
				americanIndianForBiden + asianForBiden + blackForBiden + hispanicForBiden + nativeForBiden + whiteForBiden;
		
		double ethnicityPercent = 100/ethnicityTotal;
		
		model.addObject("americanIndianForTrump", americanIndianForTrump *ethnicityPercent );
		model.addObject("asianForTrump", asianForTrump *ethnicityPercent );
		model.addObject("blackForTrump", blackForTrump *ethnicityPercent );
		model.addObject("hispanicForTrump", hispanicForTrump *ethnicityPercent );
		model.addObject("nativeForTrump", nativeForTrump *ethnicityPercent );
		model.addObject("whiteForTrump", whiteForTrump *ethnicityPercent );
		model.addObject("americanIndianForBiden", americanIndianForBiden *ethnicityPercent );
		model.addObject("asianForBiden", asianForBiden *ethnicityPercent );
		model.addObject("blackForBiden", blackForBiden *ethnicityPercent );
		model.addObject("hispanicForBiden", hispanicForBiden *ethnicityPercent );
		model.addObject("nativeForBiden", nativeForBiden *ethnicityPercent );
		model.addObject("whiteForBiden", whiteForBiden *ethnicityPercent );
		return model;
	}

}
