package com.cloud.computing.voter.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.cloud.computing.voter.model.Voter;


class VoterDAOImplTest {
	
	private VoterDAO dao;
	private DriverManagerDataSource dataSource;
	
	@BeforeEach
	void setUpBeforeEach()
	{
		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/voterdb?useSSL=false");
		dataSource.setUsername("root");
		dataSource.setPassword("password");
		
		dao = new VoterDAOImpl(dataSource);
	}

	@Test
	void voterSaveTest() {
		Voter voter = new Voter("neenu","moon",27,"female", "Texas","Entreprenuer","Indian","Trump");
		int result = dao.saveVoter(voter);
		
		assertTrue(result>0);
	}
	
	@Test
	void getAllVotersTest() {
		List<Voter> voters = dao.getAllVoters();
		for(Voter v : voters)
		{
			System.out.println(v);
		}
		assertTrue(!voters.isEmpty());
	}
	
	@Test
	void getAnalysisForAgeTest() {
		int count = dao.getAnalysisForAge(20,30);
		
		assertTrue(count>0);
	}
	

}
