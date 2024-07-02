package com.sist.dao;

import lombok.Data;

/*
 *    자바 / 오라클 / JSP / *** Spring / *** Spring-Boot
 *          |
 *       JDBC / DBCP / *** MyBatis / JPA
 *       =================================== Back-End
 *   HTML / CSS 
 *  => 화면 제작, css 변경 정도만 알아도 괜찮음
 *  JavaScript : JQuery (AJAX) , ** VueJS , ** ReactJS , NodeJS , NextJS, NuxtJS
 *  ==========
 *  요즘엔 TypeScript 가 많이 뜨는 추세    
 *  
 */

@Data
public class FoodVO {
	private int fno;
	private double score;
	private String name, type, phone, address, theme, poster, content;

	
}
