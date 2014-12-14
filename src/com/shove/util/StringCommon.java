package com.shove.util;

import java.math.BigDecimal;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;

import com.shove.Convert;

public class StringCommon {

	/**
	 * 字符补位
	 * @param character 需要进行补位的字符 
	 * @param size 字符位数
	 * @return
	 */
	public static String charactersFillTheSeats(String character, int size) {
		StringBuffer sb = new StringBuffer();
		sb.append(character);
		for (int i = character.length(); i < size; i++) {
			sb.insert(0, "0");
		}
		return sb.toString();
	}

	/**
	 * 随机获取字符(字母)
	 * @param size 字符位数
	 * @return
	 */
	public static String randomCharacters(int size) {
		StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < size; i++) {
			int j = random.nextInt(26) + 1;//获得随机数
			sb.append(getChar(j));
		}
		return sb.toString();
	}

	/**
	 * 随机获取字符(字母+数字)
	 * @param size 字符位数
	 * @return
	 */
	public static String randomCharactersInt(int size) {
		StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < size; i++) {
			int j = random.nextInt(35) + 1;//获得随机数
			if (j > 26) {
				sb.append(35 - j);
				continue;
			}
			sb.append(getChar(j));
		}
		return sb.toString();
	}

	public static void main(String[] args) {
		System.out.println(randomCharactersInt(1));
	}

	/**
	 * 随机获取数字
	 * @param size 字符位数
	 * @return
	 */
	public static String randomInt(int size) {
		StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < size; i++) {
			int j = random.nextInt(10);//获得随机数
			sb.append(j);
		}
		return sb.toString();
	}

	/**
	 * 数字转换成字母
	 * @param i
	 * @return
	 */
	public static char getChar(int i) {
		return (char) (64 + i);
	}

	/**
	 * 校验拼接的id是否符合规范
	 * @param checkIds 需要校验的id
	 * @return
	 */
	public static int checkIds(String checkIds) {
		if (StringUtils.isBlank(checkIds)) {
			return -1;
		}

		String[] checkids = checkIds.split(",");

		int length = checkids.length;
		if (length <= 0) {
			return -1;
		}

		long[] checkid = new long[length];
		for (int i = 0; i < checkids.length; i++) {
			checkid[i] = Convert.strToLong(checkids[i], -1);
			if (checkid[i] == -1) {
				return -1;
			}
		}

		return 1;
	}

	/**
	 * 校验拼接的id是否符合规范，并返回转型后的集合
	 * @param checkIds 需要校验的id
	 * @return 返回为空，则数据错误
	 */
	public static long[] checkTurnIds(String checkIds) {
		if (StringUtils.isBlank(checkIds)) {
			return null;
		}
		String[] checkids = checkIds.split(",");

		int length = checkids.length;
		if (length <= 0) {
			return null;
		}

		long[] checkid = new long[length];
		for (int i = 0; i < checkids.length; i++) {
			checkid[i] = Convert.strToLong(checkids[i], -1);
			if (checkid[i] == -1) {
				return null;
			}
		}

		return checkid;
	}

	/**
	 * 字符串通过“,”进行分割，分割完后进行去重，并放入到list中
	 * @param ids 1,2,3,4,5,6
	 * @param list
	 */
	public static void getNotRepeatedId(String ids, List<Long> list) {
		if (StringUtils.isBlank(ids)) {
			return;
		}

		String[] i = ids.split(",");
		long id = -1;
		long index = -1;
		for (String str : i) {
			id = Convert.strToLong(str, -1);
			if (id <= 0) {
				continue;
			}

			index = list.indexOf(id);

			if (index > 0) {
				continue;
			}

			list.add(id);

		}

	}

	public static String escapeBlankChar(String str) {
		if (StringUtils.isNotBlank(str)) {
			return StringEscapeUtils.escapeSql(str.trim());
		} else {
			return "";
		}
	}

	/**
	 * 发送短信
	 * @param phone
	 * @param content
	 */
	public static void sendPhoneMsg(String phone, String content) {
		//		com.shove.gateway.sms.EimsSMS.send("userName", "password", phone, content);
	}

	public static BigDecimal strToBigDecimal(String str, BigDecimal defaultValue) {
		BigDecimal Result = defaultValue;

		try {
			Result = new BigDecimal(str);
		} catch (Exception e) {
		}

		return Result;
	}

}
