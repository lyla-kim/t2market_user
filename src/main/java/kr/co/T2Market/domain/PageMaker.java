package kr.co.T2Market.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {

	public String makeSearch(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
										.queryParam("page", page)
										.build();
							    return uriComponents.toUriString();  
							}

							private String encoding(String keyword) {
								if(keyword == null || keyword.trim().length() == 0) { 
									return "";
								}
								 
								try {
									return URLEncoder.encode(keyword, "UTF-8");
								} catch(UnsupportedEncodingException e) { 
									return ""; 
								}
							}
	}

