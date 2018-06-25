package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
@ComponentScan("com.example")
@EnableWebMvc
public class MDSDemo extends SpringBootServletInitializer{

	
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MDSDemo.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(MDSDemo.class, args);
	}
	
	@Bean
    public ViewResolver viewResolver() {
          InternalResourceViewResolver r = new InternalResourceViewResolver();
         r.setPrefix("/WEB-INF/jsp/");
         r.setSuffix(".jsp");
         return r;
    }
}
