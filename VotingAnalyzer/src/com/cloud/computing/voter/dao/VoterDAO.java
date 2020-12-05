package com.cloud.computing.voter.dao;

import java.util.List;

import com.cloud.computing.voter.model.Voter;

public interface VoterDAO {
	
	public int saveVoter(Voter voter);
	
	public int getAnalysisForSex(String sex, String selection);
	
	public int getAnalysisForAge(int min, int max);

	
	
	public List<Voter> getAllVoters();

}
