package com.cas.business.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class CustomResponse implements Serializable {

	private static final long serialVersionUID = 1L;
	
	Object result;
	
	String status;
	
	String errorMessage;

}
