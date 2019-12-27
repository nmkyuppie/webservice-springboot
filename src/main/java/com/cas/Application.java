package com.cas;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

@SpringBootApplication(scanBasePackages={"com.cas.*"})
public class Application  extends SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(Application.class, args);
	}

    @Bean
    public FilterRegistrationBean<URLFilter> filterRegistrationBean() {
        FilterRegistrationBean<URLFilter> registrationBean = new FilterRegistrationBean();
        URLFilter customURLFilter = new URLFilter();

        registrationBean.setFilter(customURLFilter);
        registrationBean.addUrlPatterns("/*");
        registrationBean.setOrder(1);  //set precedence
        return registrationBean;
    }
}