package com.maya.packtools.builder.platforms;

import java.util.Properties;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;


public class UCBuilder extends BaseBuilder{

	public UCBuilder(ApkParser apkParser) {
		super(apkParser);
		
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

	//	String mAppId = oldPro.getProperty("cpId").trim();
		String gameId = oldPro.getProperty("gameId").trim();
		//String extra1 = oldPro.getProperty("serverId").trim();

	//	newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		newPro.setProperty("gameId", gameId);
		//newPro.setProperty("extra1", extra1);
	}
	
}
