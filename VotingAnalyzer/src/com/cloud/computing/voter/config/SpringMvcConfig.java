package com.cloud.computing.voter.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.cloud.computing.voter.dao.VoterDAO;
import com.cloud.computing.voter.dao.VoterDAOImpl;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.cloud.computing.voter")
public class SpringMvcConfig implements WebMvcConfigurer {

	@Bean
	public DataSource getDataSource()
	{
		DriverManagerDataSource dataSource;

		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/voterdb?useSSL=false");
		dataSource.setUsername("root");
		dataSource.setPassword("password");
		
		return dataSource;
	}
	
	@Bean
	public ViewResolver getViewResolver()
	{
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean
	public VoterDAO getContactDAO()
	{
		return new VoterDAOImpl(getDataSource());
	}
}
