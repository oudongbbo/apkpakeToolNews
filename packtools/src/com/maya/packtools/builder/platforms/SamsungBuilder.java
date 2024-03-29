package com.maya.packtools.builder.platforms;

import java.util.Properties;

import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;


public class SamsungBuilder extends BaseBuilder {

    public SamsungBuilder(ApkParser apkParser) {
        super(apkParser);

    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("appid").trim();
        String loginParams = oldPro.getProperty("loginParams").trim();
        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("extra1", loginParams);
    }

}
