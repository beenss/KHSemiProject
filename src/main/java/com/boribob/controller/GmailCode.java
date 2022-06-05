package com.boribob.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GmailCode extends Authenticator {
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("damnyou1994@gmail.com", "go1070915@@");
	}
}