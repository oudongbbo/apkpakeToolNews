package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;


import java.util.Properties;

public class M8868Builder extends BaseBuilder {
    public M8868Builder(ApkParser apkParser) {
        super(apkParser);
    }

    /***
     *  修改  assets/leidongMsdk.ini mAppId gameId 对应值
     * @param newPro
     * @param oldPro
     */
    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        super.handlePlatformComConfig(newPro, oldPro);

        String cpid = oldPro.getProperty("cpid");
        String gameid = oldPro.getProperty("gameid");

        newPro.setProperty("mAppId", ZipMain.zipOption("0", cpid));
        newPro.setProperty("gameId", gameid);


    }
}
