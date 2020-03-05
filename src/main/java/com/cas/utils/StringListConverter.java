package com.cas.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter
public class StringListConverter implements AttributeConverter<List<String>, String> {
    private static final String SPLIT_CHAR = ",";

    @Override
    public String convertToDatabaseColumn(List<String> stringList) {
    	if(stringList != null && !stringList.isEmpty()) {
    		return String.join(SPLIT_CHAR, stringList);
    	}
    	else {
    		return "";
    	}
        
    }

    @Override
    public List<String> convertToEntityAttribute(String string) {
    	if(string != null && !string.isEmpty()) {
    		return Arrays.asList(string.split(SPLIT_CHAR));
    	}
    	return new ArrayList<String>();
    }
}
