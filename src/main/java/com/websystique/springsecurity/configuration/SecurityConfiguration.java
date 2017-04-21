package com.websystique.springsecurity.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled=true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		/*
		 * auth.inMemoryAuthentication().withUser("bill").password("abc123").
		 * roles("USER");
		 * auth.inMemoryAuthentication().withUser("admin").password("root123").
		 * roles("ADMIN");
		 * auth.inMemoryAuthentication().withUser("dba").password("root123").
		 * roles("ADMIN","DBA");
		 */

		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		driverManagerDataSource.setUrl("jdbc:mysql://localhost:3306/DB_CHURCHADMINISTRATOR");
		driverManagerDataSource.setUsername("root");
		driverManagerDataSource.setPassword("12345678");
		auth.jdbcAuthentication().dataSource(driverManagerDataSource)
				.usersByUsernameQuery("select username,password, enabled from users where username=?")
				.authoritiesByUsernameQuery("select username, role from user_roles where username=?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		/*http.authorizeRequests().antMatchers("/", "/home").permitAll().antMatchers("/admin/**")
				.access("hasRole('ADMIN')").antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')").and()
				.formLogin().loginPage("/login").usernameParameter("ssoId").passwordParameter("password").and().csrf()
				.and().exceptionHandling().accessDeniedPage("/Access_Denied");*/
		
		http.authorizeRequests().antMatchers("/", "/home").access("hasRole('USER')")
		/*.antMatchers("/admin/**").access("hasRole('ADMIN')")
		.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")*/
		.and()
		.formLogin().loginPage("/login").usernameParameter("ssoId").passwordParameter("password").and().csrf()
		.and().exceptionHandling().accessDeniedPage("/Access_Denied");
		
		
		
	}
}
