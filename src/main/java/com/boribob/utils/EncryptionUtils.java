package com.boribob.utils;

import java.math.BigInteger;
import java.security.MessageDigest;

public class EncryptionUtils {
	public static String getSHA512(String inputPw) throws Exception {
		MessageDigest md = MessageDigest.getInstance("SHA-512");
		md.reset();
		md.update(inputPw.getBytes("utf8"));
		BigInteger bI = new BigInteger(1, md.digest());
		inputPw = String.format("%0128x", bI);
		return inputPw;
	}
}
