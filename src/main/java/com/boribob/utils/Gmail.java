package com.boribob.utils;
import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;

public class Gmail  extends Authenticator {
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("sungpar1994@gmail.com", "go2056319@@");
	}
}
