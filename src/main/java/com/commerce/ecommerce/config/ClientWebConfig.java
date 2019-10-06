package com.commerce.ecommerce.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


@Configuration
public class ClientWebConfig implements WebMvcConfigurer {
	
@Bean
public ViewResolver viewResolver() {
	
   InternalResourceViewResolver bean = new InternalResourceViewResolver();
   bean.setViewClass(JstlView.class);
   bean.setPrefix("/WEB-INF/view/");
   bean.setSuffix(".jsp");
   return bean;
}

@Override
public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/image/**")
      .addResourceLocations("/WEB-INF/images/");
      }
}
