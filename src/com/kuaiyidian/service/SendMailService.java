package com.kuaiyidian.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import com.kuaiyidian.constants.IConstants;


public class SendMailService {
	private static Log log = LogFactory.getLog(SendMailService.class);
	private JavaMailSenderImpl senderImpl;
	private ThreadPoolTaskExecutor taskExecutor;
	private String head;
	private String text;
	private String prompt;
	private String subject;
	private String from;
	private String message;
	
	public SendMailService(){
		
		String host = IConstants.MAIL_HOST;
		String username =IConstants.MAIL_USERNAME;
		String password = IConstants.MAIL_PASSWORD;
		this.from = IConstants.MAIL_FROM;
		
		senderImpl = new JavaMailSenderImpl();
		senderImpl.setHost(host);
		senderImpl.setUsername(username);
		senderImpl.setPassword(password);
		
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", "true"); // 将这个参数设为true，让服务器进行认证,认证用户名和密码是否正确
		prop.put("mail.smtp.timeout", "25000");
		senderImpl.setJavaMailProperties(prop);
		
	}
	
	public void sendRegisterVerificationEmail(final String userCode,final String userEmail) {
		taskExecutor.execute(new Runnable() {
			public void run() {
				try {
					sendRegisterVerificationEmailMsg(userCode, userEmail);
				} catch (MessagingException e) {
					log.error(e);
					e.printStackTrace();
				}
			}
		});
	}

	public void sendEmail(final String title,final String html, final String userEmail){
		taskExecutor.execute(new Runnable() {
			public void run() {
				try {
					MimeMessage msg = senderImpl.createMimeMessage();
					MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
					
					helper.setFrom(from);
					helper.setTo(userEmail);
					helper.setSubject(title);
					
					helper.setText(html, true);
					senderImpl.send(msg);
				} catch (MessagingException e) {
					log.error(e);
					e.printStackTrace();
				}
			}
		});
	}
	
	private void sendRegisterVerificationEmailMsg(String userCode, String userEmail) throws MessagingException{
		MimeMessage msg = senderImpl.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
		
		helper.setFrom(from);
		helper.setTo(userEmail);
		helper.setSubject("朵唯温馨提示注册验证码邮件");
		
		StringBuffer sb = new StringBuffer();
		sb.append("<HTML><BODY style='border-width:0px'>");
		sb.append("<H4 style='font-weight:normal;font-size:14px'>尊敬的朵唯会员：<br/>");
		sb.append("&nbsp;&nbsp;&nbsp;&nbsp;您好！</H4>");
		sb.append("<DIV style='line-height:3;'>&nbsp;&nbsp;&nbsp;&nbsp;欢迎您注册朵唯官方商城，您的注册验证码为：</DIV>");
		sb.append("<DIV style='color:red;line-height:3;'>&nbsp;&nbsp;&nbsp;&nbsp;"+userCode);
		sb.append("</DIV>");
		sb.append("<DIV style='line-height:3;'>&nbsp;&nbsp;&nbsp;&nbsp;勇敢，让未知更美--朵唯电商团队祝您购物愉快！");
		sb.append("</DIV>");
		sb.append("<ul><li>朵唯官方商城 2013 这是一封系统邮件，请不要直接回复。</li>");
		sb.append("</ul>");
		sb.append("</BODY></HTML>");
		helper.setText(sb.toString(), true);
		senderImpl.send(msg);
	}
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getPrompt() {
		return prompt;
	}

	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public void setTaskExecutor(ThreadPoolTaskExecutor taskExecutor) {
		this.taskExecutor = taskExecutor;
	}

}

