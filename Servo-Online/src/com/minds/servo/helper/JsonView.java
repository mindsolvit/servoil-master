package com.minds.servo.helper;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageNotWritableException;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.server.ServletServerHttpResponse;

/**
 * @author Adam Carnagey This converts a Java Object to a JSON Http Response.
 */
public final class JsonView {
	
	/**
	 * Default Constructor, not used.
	 */
	private JsonView() {
	}

	/**
	 * JSON Model View.
	 * @param model the model being passed in.
	 * @param response the http response sent back.
	 */
	public static void render(final Object model,
			final HttpServletResponse response) {
		MappingJackson2HttpMessageConverter jsonConverter = new MappingJackson2HttpMessageConverter();
		MediaType jsonMimeType = MediaType.APPLICATION_JSON;
		try {
			jsonConverter.write(model, jsonMimeType, new ServletServerHttpResponse(response));
		} catch (HttpMessageNotWritableException e) {
			throw new RuntimeException(e);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
}
