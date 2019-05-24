package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JiuYouTangBuilder extends BaseBuilder {
    public JiuYouTangBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {




      /*  <meta-data android:name="WANCMS_APPID" android:value="1639" />
        <meta-data android:name="WANCMS_GAMEID" android:value="1633" />
        <meta-data android:name="WANCMS_AGENT" android:value="cps001" />
        <meta-data android:name="WANCMS_DEBUG" android:value="0" />      <!-- 游戏调试好后请将sdk调试模式关闭   0为关闭-->
        <meta-data android:name="WX_APP_ID" android:value="" />
        <meta-data android:name="WX_APP_SECRET" android:value="" />*/



        String sdk_content = FileUtil.read(sdkplugin);

        String appid = prop.getProperty("WANCMS_APPID");
        String gameid = prop.getProperty("WANCMS_GAMEID");
        String agent = prop.getProperty("WANCMS_AGENT");
        String wx_app_id = prop.getProperty("WX_APP_ID");
        String wx_app_secret = prop.getProperty("WX_APP_SECRET");

        Pattern p = Pattern.compile("<meta-data android:name=\"WANCMS_APPID\" android:value=\"(.*?)\" />");
        Matcher m = p.matcher(sdk_content);
        m.find();
        String WANCMS_APPID = m.group(1);
        sdk_content = sdk_content.replaceAll(WANCMS_APPID, appid);


        p = Pattern.compile("<meta-data android:name=\"WANCMS_GAMEID\" android:value=\"(.*?)\" />");
        m = p.matcher(sdk_content);
        m.find();
        String WANCMS_GAMEID = m.group(1);
        sdk_content = sdk_content.replaceAll(WANCMS_GAMEID, gameid);


        p = Pattern.compile("<meta-data android:name=\"WANCMS_AGENT\" android:value=\"(.*?)\" />");
        m = p.matcher(sdk_content);
        m.find();
        String WANCMS_AGENT = m.group(1);
        sdk_content = sdk_content.replaceAll(WANCMS_AGENT, agent);







        FileUtil.write(sdkplugin, sdk_content);

    }



}
