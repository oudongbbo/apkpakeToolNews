package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.io.File;
import java.util.Properties;


/***
 *  和美
 */
public class HeMeiBuilder extends BaseBuilder {
    public HeMeiBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appid = oldPro.getProperty("ProductCode").trim();
        String appkey = oldPro.getProperty("ProductKey").trim();
        newPro.setProperty("mAppId", ZipMain.zipOption("0", appid));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appkey));
    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.leidong.sdk.m.platform.HemeiApplication", manifest);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String tianYuContent = FileUtil.read(sdkplugin);
        String isLandScape = prop.getProperty("isLandScape");
        int orientation = Integer.parseInt(isLandScape);

        if (orientation == 0) {
            tianYuContent.replaceFirst("android:screenOrientation=\"portrait\"", "portrait");
        } else if (orientation == 1) {
            tianYuContent.replaceFirst("android:screenOrientation=\"portrait\"", "landscape");
        }
        FileUtil.write(sdkplugin, tianYuContent);

        //修改跳转到游戏主界面的路径
        String splashPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com" + File.separator + "leidong" + File.separator + "sdk" + File.separator + "m" + File.separator + "platform" + File.separator + "SplashActivity.smali";
        String splashContent = FileUtil.read(splashPath);
        String gameActivity = prop.getProperty("gameActivity").trim();
        String acticity = gameActivity.replaceAll("\\.", "\\/");
        String content = splashContent.replaceAll("Lcom/leidong/sdk/m/demo/MainActivity", "L" + acticity);
        FileUtil.write(splashPath, content);

    }


    @Override
    protected void handleAndroidManifestByGame(String gid, int sdk, String contentPath) {
        super.handleAndroidManifestByGame(gid, sdk, contentPath);

        String manifestContent = FileUtil.read(contentPath);
        manifestContent = manifestContent.replaceFirst("android.intent.action.MAIN", "lenovoid.MAIN");
        manifestContent = manifestContent.replaceFirst("android.intent.category.LAUNCHER", "android.intent.category.DEFAULT");
        FileUtil.write(contentPath, manifestContent);

    }
}
