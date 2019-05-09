package com.maya.packtools.builder.platforms;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;






import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.builder.base.BaseUtils;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.config.Common;

public class YSDKBuilder extends BaseBuilder {

	public YSDKBuilder(ApkParser apkParser) {
		super(apkParser);

    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String ysdkContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("<data android:scheme=\"tencent(.*?)\" />");
        Matcher m = p.matcher(ysdkContent);
        m.find();
        String txAppid = m.group(1);
        ysdkContent = ysdkContent.replaceAll(txAppid, prop.getProperty("appid"));
        LogUtil.showLog("appid:" + prop.getProperty("appid"));

        p = Pattern.compile("android:name=\"(.*?).wxapi.WXEntryActivity\"");
        m = p.matcher(ysdkContent);
        m.find();
        String packageName = m.group(1);
        ysdkContent = ysdkContent.replaceAll(packageName,pname.trim());


        p = Pattern.compile("<data android:scheme=\"wx(.*?)\" />");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String wxAppid = m.group(1);
            ysdkContent = ysdkContent.replaceAll(wxAppid, prop.getProperty("wxAppid").substring(2));
            LogUtil.showLog("wxAppid:" + prop.getProperty("wxAppid"));
        } else {
            LogUtil.showLog("wxAppid不存在");
        }

        p = Pattern.compile("android:taskAffinity=\"(.*?).diff\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String wxdiff = m.group(1);
            ysdkContent = ysdkContent.replaceAll(wxdiff + ".diff", pname + ".diff");
        } else {
            LogUtil.showLog("wxdiff不存在");
        }

        p = Pattern.compile("android:name=\"XG_V2_ACCESS_ID\" android:value=\"(.*?)\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String XG_V2_ACCESS_ID = m.group(1);
            ysdkContent = ysdkContent.replaceAll(XG_V2_ACCESS_ID, prop.getProperty("XG_V2_ACCESS_ID"));
        } else {
            LogUtil.showLog("XG_V2_ACCESS_ID不存在");
        }

        p = Pattern.compile("android:name=\"XG_V2_ACCESS_KEY\" android:value=\"(.*?)\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String XG_V2_ACCESS_KEY = m.group(1);
            ysdkContent = ysdkContent.replaceAll(XG_V2_ACCESS_KEY, prop.getProperty("XG_V2_ACCESS_KEY"));
        } else {
            LogUtil.showLog("XG_V2_ACCESS_KEY不存在");
        }


        FileUtil.write(sdkplugin, ysdkContent);

        try {
            String sdkmulticonfig = Common.getApkTempPath(apkParser)    + File.separator + "assets" + File.separator
                    + "ysdkconf.ini";
            Properties multiConfigProp = new Properties();
            FileInputStream sdkfis;

            sdkfis = new FileInputStream(sdkmulticonfig);
            multiConfigProp.load(sdkfis);

            multiConfigProp.setProperty("QQ_APP_ID", prop.getProperty("appid"));
            multiConfigProp.setProperty("WX_APP_ID", prop.getProperty("wxAppid"));
            multiConfigProp.setProperty("OFFER_ID", prop.getProperty("appid"));

            FileOutputStream sdkfos = new FileOutputStream(sdkmulticonfig);
            multiConfigProp.store(sdkfos, new Date().toGMTString());
            sdkfos.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//	@Override
//	protected String handleApplication(String manifest) {
//
//		if (manifest.contains("com.tencent.tmgp.xxx")) {
//			manifest = manifest.replaceAll("com.tencent.tmgp.xxx", pname);
//		} else {
//			LogUtil.showLog("AndroidManifest.xml ——> com.tencent.tmgp.xxx");
//		}
//
//		return replaceApplication("com.starjoys.msdk.platform.GDTTrackerApplication", manifest);
//	}

	@Override
	protected void handleActivitySmaliWithOnNewIntent() {

		handleReferActivityWithIntentContent(SDK,BaseUtils.getGameLaunchActivty(apkParser.apkPath, pname_old));

		if (gameMainActivity != null && !"".equals(gameMainActivity)) {
			handleGameMainActivityWithIntentContent(SDK, gameMainActivity);
		} else {
			LogUtil.showLog("gameMainActiivty不存在");
		}
	}

//	@Override
//	protected void handleTempRFiles() {
//
//		String finalPnamePath = "com.tencent.tmgp.xxx";
//
//		copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
//	}

	/**
	 * @param SDK
	 * @param gameMainActivityName
	 */
	private  void handleGameMainActivityWithIntentContent(int SDK,String gameMainActivityName) {

        handleReferActivityWithIntentContent(SDK, gameMainActivityName);

        String fromFilePath = Common.getFixsPathBySDK(SDK) + File.separator + "YSDKWXEntryActivity.smali";
        File fromFile = new File(fromFilePath);

        String tempPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator;
        String toFilePath = tempPath + "/com/tencent/ysdk/module/user/impl/wx/YSDKWXEntryActivity.smali";
        File toFile = new File(toFilePath);

        FileUtil.copyFile(fromFile, toFile);

        String ysdkWXEntryActivityContent = FileUtil.read(toFilePath);

        String stubString = "Lcom/x/xx/xxx";

        if (ysdkWXEntryActivityContent.contains(stubString)) {

            String gameMainActivityClassPathStr = "L"
                    + gameMainActivityName.replaceAll("\\.", "\\/");

            LogUtil.showLog(toFilePath + "stubString" + stubString + " " + gameMainActivityClassPathStr + "");

            String newYsdkWXEntryActivityContent = ysdkWXEntryActivityContent
                    .replaceAll(stubString, gameMainActivityClassPathStr);
            FileUtil.write(toFilePath, newYsdkWXEntryActivityContent);

        } else {

            LogUtil.showLog(fromFile.getName() + "stubString" + stubString);
        }

    }

    /**
     * @param SDK
     * @param activityName
     */
    private void handleReferActivityWithIntentContent(int SDK, String activityName) {

        String ParentPath = Common.getApkTempPath(apkParser)
                + System.getProperty("file.separator") + "smali"
                + System.getProperty("file.separator");
        String fromPath = activityName.replaceAll("\\.", "\\/");

        String launchActivityFilePath = ParentPath + fromPath + ".smali";
        File file = new File(launchActivityFilePath);
        if (!file.exists()) {
            LogUtil.showLog("-->" + file.getAbsolutePath() + "<--");
        } else {
            String launchActivityContent = FileUtil
                    .read(launchActivityFilePath);
            if (isActivityContainsOnNewIntent(launchActivityFilePath)) {

                LogUtil.showLog("-->LaunchActivity:" + file.getName() + " onNewIntent<--");
            } else {

                LogUtil.showLog("-->LaunchActivity:" + file.getName() + " onNewIntent<--");

                String newIntentContent = FileUtil.read(Common
                        .getFixsPathBySDK(SDK)
                        + File.separator
                        + "newIentent.txt");

                launchActivityContent = launchActivityContent
                        + newIntentContent;

                FileUtil.write(launchActivityFilePath, launchActivityContent);

                LogUtil.showLog("-----------------onNewIntent---------------------");
            }
        }

    }

    /**
     * onNewIntent
     *
     * @param launcherActivityFilePath
     * @return boolean
     */
    private boolean isActivityContainsOnNewIntent(String launcherActivityFilePath) {

        String activityContent = FileUtil.read(launcherActivityFilePath);
        if (!activityContent.contains("onNewIntent")) {
            if (activityContent.contains(".super Landroid/app")) {
                return false;
            } else {
                Pattern p = Pattern.compile(".super L(.*?);");
                Matcher m = p.matcher(activityContent);
                m.find();
                String superClassName = m.group(1);
                superClassName = superClassName.replace("/", ".");
                LogUtil.showLog("YSDK -->onNewIntent--> superClassName --> "
                        + superClassName);
                String superClassPath = FileUtil
                        .getFilePathFrom(superClassName);
                String superClassFullPath = Common.getApkTempPath(apkParser)
                        + File.separator + "smali" + File.separator
                        + superClassPath + ".smali";
                return isActivityContainsOnNewIntent(superClassFullPath);
            }
        } else {
            LogUtil.showLog("YSDK --> onNewIntent --> onNewIntent -->  --> "
                    + launcherActivityFilePath);
            return true;
        }
    }

}
