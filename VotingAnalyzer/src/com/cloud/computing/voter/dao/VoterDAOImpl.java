package com.cloud.computing.voter.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.cloud.computing.voter.model.Voter;

public class VoterDAOImpl implements VoterDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public VoterDAOImpl(DataSource dataSource)
	{
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	@Override
	public int saveVoter(Voter v) {
		String sql = "INSERT INTO voter(firstName,lastName,age,sex,state,profession,ethnicity,selection) VALUES(?,?,?,?,?,?,?,?)";
		
		return jdbcTemplate.update(sql, v.getFirstName(), v.getLastName(), v.getAge(),v.getSex(), v.getState(), v.getProfession(), v.getEthnicity(), v.getSelection());
	}

	@Override
	public List<Voter> getAllVoters() {
		String sql = "SELECT * FROM voter";
		RowMapper<Voter> rowMapper = new RowMapper<Voter>() {

			@Override
			public Voter mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Voter(rs.getInt("id"),
						rs.getString("firstName"),
						rs.getString("lastName"),
						Integer.parseInt(rs.getString("age")),
						rs.getString("sex"),
						rs.getString("state"),
						rs.getString("profession"),
						rs.getString("ethnicity"),
						rs.getString("selection"));	
			}
			
		};
		return jdbcTemplate.query(sql, rowMapper);
	}
	@Override
	public int getAnalysisForSex(String sex, String selection) {
		String sql = "select count(*) from voter where selection=\""+selection+"\" and sex=\""+sex+"\"";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	@Override
	public int getAnalysisForAge(int min, int max) {
		String sql = "select count(*) from voter where age>=\""+min+"\" and age<\""+max+"\"";	
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	@Override
	public int getAnalysisForEthnicity(String ethnicity, String selection) {
		String sql = "select count(*) from voter where selection=\""+selection+"\" and ethnicity=\""+ethnicity+"\"";
		// TODO Auto-generated method stub
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	@Override
	public int getAnalysisForProfession(String profession, String selection) {
		String sql = "select count(*) from voter where selection=\""+selection+"\" and profession=\""+ethnicity+"\"";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

}
