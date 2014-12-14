
package com.shove.util;

import java.io.File;

/**
 * 获取网站路径
 * @author <a href="mailto:xuZhangchu@gmail.com">xzc</a>
 * @version 1.0
 * @2012-12-24
 * @since 2012-12-24
 */
public class FindWebPath {
	public static String getWebInfoPath() {
		String tempPath = Thread.currentThread().getContextClassLoader()
				.getResource("/").getPath();//
		// 获取了工程中的classes目录(该目录位于webinf下面)
		String webInfPath = tempPath.substring(0,
				tempPath.lastIndexOf("classes"));//获取网站web-INF路径
		return webInfPath;
	}
	public static String getWebRootPath() {
		String tempPath = Thread.currentThread().getContextClassLoader()
				.getResource(File.separator).getPath();//
		// 获取了工程中的classes目录(该目录位于webinf下面)
		String webRootPath = tempPath.substring(0,
				tempPath.lastIndexOf("WEB-INF"));//获取网站根目录
		return webRootPath;
	}
	
}
