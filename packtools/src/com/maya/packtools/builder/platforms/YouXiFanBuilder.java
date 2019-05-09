package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class YouXiFanBuilder extends BaseBuilder {
    public YouXiFanBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);


        String YiKeYouContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:authorities=\"(.*?)\"");
        Matcher m = p.matcher(YiKeYouContent);
        m.find();
        String pName = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(pName, pname);
        FileUtil.write(sdkplugin, YiKeYouContent);

       /* String  screenOrientation=prop.getProperty("screenOrientation");
        String  YG_APPID=prop.getProperty("YG_APPID");
        String YG_SPLASH=prop.getProperty("YG_SPLASH");
        String SDK_APPID=prop.getProperty("SDK_APPID");
        String SDK_GAMEID=prop.getProperty("SDK_GAMEID");
        String SDK_AGENT=prop.getProperty("SDK_AGENT");


        String YiKeYouContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:name=\"screenOrientation\" android:value=\"(.*?)");
        Matcher m = p.matcher(YiKeYouContent);
        m.find();
        String orientation = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(orientation, "screenOrientation:"+screenOrientation);



        p = Pattern.compile("android:name=\"YG_APPID\" android:value=\"(.*?)\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String yg_appid = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(yg_appid, "YG_APPID:"+YG_APPID);



        p = Pattern.compile("android:name=\"YG_SPLASH\" android:value=\"(.*?)\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String splash = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(splash, "YG_SPLASH:"+YG_SPLASH);



        p = Pattern.compile("android:name=\"SDK_APPID\" android:value=\"(.*?)\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String sdk_appid = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(sdk_appid, SDK_APPID);



        p = Pattern.compile("android:name=\"SDK_GAMEID\" android:value=\"(.*?)\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String gameid = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(gameid, SDK_GAMEID);




        p = Pattern.compile("android:name=\"SDK_AGENT\" android:value=\"(.*?)\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String agent = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(agent, SDK_AGENT);



        p = Pattern.compile("android:authorities=\"(.*?).sdkinsapk\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String pn = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(pn, pname);


        FileUtil.write(sdkplugin, YiKeYouContent);*/
    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.leidong.sdk.m.platform.YxFanApplication", manifest);
    }
}
