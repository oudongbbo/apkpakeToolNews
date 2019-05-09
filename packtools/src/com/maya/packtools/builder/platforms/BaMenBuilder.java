package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class BaMenBuilder extends BaseBuilder {
    public BaMenBuilder(ApkParser apkParser) {
        super(apkParser);

    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String appid = oldPro.getProperty("appid");
        newPro.setProperty("mAppId", ZipMain.zipOption("0", appid));

    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.leidong.sdk.m.platform.BmApp", manifest);
    }
}
