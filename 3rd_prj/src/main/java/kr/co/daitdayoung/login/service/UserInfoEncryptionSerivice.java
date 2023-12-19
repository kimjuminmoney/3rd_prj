package kr.co.daitdayoung.login.service;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import org.springframework.stereotype.Service;

import kr.co.sist.util.cipher.DataDecrypt;
import kr.co.sist.util.cipher.DataEncrypt;

@Service
public class UserInfoEncryptionSerivice {
	private static String key = "EnctyptKey";
	
	public String oneWayEncryptData(String data) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(data.getBytes());
		
		return new String(new org.apache.commons.codec.binary.Base64().encode(md.digest()));
	}
	
	public String twoWayEncryptData(String data) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		DataEncrypt de = new DataEncrypt(key);
		return DataEncrypt.messageDigest("MD5", data);
	}
	
	public String twoWayDecryptData(String cipher) throws UnsupportedEncodingException, NoSuchAlgorithmException, GeneralSecurityException {
		DataDecrypt dd = new DataDecrypt(key);
		return dd.decryption(cipher);
	}
	
	public static void main(String[] args) throws NoSuchAlgorithmException {
		
		UserInfoEncryptionSerivice uie=new UserInfoEncryptionSerivice();
		System.out.println(uie.oneWayEncryptData("1234"));
	}

}
