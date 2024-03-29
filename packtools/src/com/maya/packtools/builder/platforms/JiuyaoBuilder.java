package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class JiuyaoBuilder extends BaseBuilder {
    public JiuyaoBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appid = oldPro.getProperty("appid");
        String appKey = oldPro.getProperty("appKey");
        newPro.setProperty("mAppId", ZipMain.zipOption("0", appid));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));

    }


}
