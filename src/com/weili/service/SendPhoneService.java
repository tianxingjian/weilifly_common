package com.weili.service;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import com.weili.constants.IConstants;


public class SendPhoneService {
	
	private static Log log = LogFactory.getLog(SendPhoneService.class);
	
	private ThreadPoolTaskExecutor taskExecutor;
	
	public void sendPhoneMessage(final String userCode,final String userPhone) {
		taskExecutor.execute(new Runnable() {
			public void run() {
				try {
					URL url = new URL(IConstants.SEND_PHONE_MESSAGE_URL);
					URLConnection connection = url.openConnection();
					connection.setConnectTimeout(5000);
					connection.setReadTimeout(1);
					connection.setDoOutput(true);
					OutputStreamWriter out = new OutputStreamWriter(connection
							.getOutputStream(), "utf-8");
					out.write("phone=" + userPhone+"&context=Your verification code is&aCt=signining&seq=4&captcha=wlm3&rand="+userCode);
					out.flush();
					out.close();
					try{
						connection.getInputStream();
					}catch (SocketTimeoutException e) {
						
					}
					out = null;
				} catch (MalformedURLException e) {
					log.error(e);
					e.printStackTrace();
				} catch (IOException e) {
					log.error(e);
					e.printStackTrace();
				}
			}
		});
	}
	
	public void setTaskExecutor(ThreadPoolTaskExecutor taskExecutor) {
		this.taskExecutor = taskExecutor;
	}
	
}

