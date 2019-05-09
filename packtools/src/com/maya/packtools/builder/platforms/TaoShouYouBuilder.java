package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;

import java.io.File;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/***
 *  淘手游
 */
public class TaoShouYouBuilder extends BaseBuilder {

    private String mainActivity;

    public TaoShouYouBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handleResValue() {
        super.handleResValue();


        String stringResPath = Common.getApkTempPath(apkParser) + File.separator + "res" + File.separator+"values"+File.separator+"tsy_strings.xml";

        String sdkString = FileUtil.read(stringResPath);

        //<string name="first_activity_name">com.leidong.sdk.demo.MainActivity</string>

        Pattern p = Pattern.compile("<string name=\"first_activity_name\">(.*?)</string>");
        Matcher m = p.matcher(sdkString);
        m.find();
        String main = m.group(1);
        sdkString = sdkString.replaceAll(main, mainActivity);

        FileUtil.write(stringResPath,sdkString);

    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);




        //<meta-data android:name="appid" android:value="d626e230c63251b58b33768e" />

        String sdkContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("<meta-data android:name=\"appid\" android:value=\"(.*?)\" />");
        Matcher m = p.matcher(sdkContent);
        m.find();
        String Appid = m.group(1);
        sdkContent = sdkContent.replaceAll(Appid, prop.getProperty("appid"));

        FileUtil.write(sdkplugin,sdkContent);

    }


    @Override
    protected void handleAndroidManifestByGame(String gid, int sdk, String contentPath) {
        super.handleAndroidManifestByGame(gid, sdk, contentPath);

        String manifestContent = FileUtil.read(contentPath);
        manifestContent = manifestContent.replaceFirst("android.intent.action.MAIN", "lenovoid.MAIN");
        manifestContent = manifestContent.replaceFirst("android.intent.category.LAUNCHER","android.intent.category.DEFAULT");
        FileUtil.write(contentPath, manifestContent);

    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        super.handlePlatformComConfig(newPro, oldPro);

        mainActivity = oldPro.getProperty("mainActivity");

    }
}
