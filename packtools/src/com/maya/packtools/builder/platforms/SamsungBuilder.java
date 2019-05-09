package com.maya.packtools.builder.platforms;

import java.util.Properties;

import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;


public class SamsungBuilder extends BaseBuilder{

	public SamsungBuilder(ApkParser apkParser) {
		super(apkParser);
		
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		String mAppKey = oldPro.getProperty("clientId").trim();
		String mPayId = oldPro.getProperty("clientSecret").trim();
		String mRefer = oldPro.getProperty("privateKey").trim();
		String mPayKey = oldPro.getProperty("publicKey").trim();

		newPro.setProperty("mAppId",ZipMain.zipOption("0", mAppId) );
		newPro.setProperty("mAppKey", ZipMain.zipOption("0", mAppKey));
		newPro.setProperty("mPayId", ZipMain.zipOption("0", mPayId));
		newPro.setProperty("mRefer", ZipMain.zipOption("0", mRefer));
		newPro.setProperty("mPayKey", ZipMain.zipOption("0", mPayKey));
	}

}
