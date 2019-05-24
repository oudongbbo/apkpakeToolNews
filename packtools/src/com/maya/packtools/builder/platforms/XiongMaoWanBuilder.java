package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class XiongMaoWanBuilder extends BaseBuilder {
    public XiongMaoWanBuilder(ApkParser apkParser) {
        super(apkParser);

    }



    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);


        /*  <!-- 版本信息， 渠道升级判断  替换为分配的clientid -->
        <meta-data android:name="XMWAPPID" android:value="testclient" />
        <meta-data android:name="XMWVERSION" android:value="v303" />
        <!-- xmwsdkv2.3.4 必填,用于统计 未分配不用修改 -->
        <meta-data android:name="XMWAPPKEY" android:value="5a73276810fbd71ec322ca14d38f8485" />
        <!-- adt 必填，用于统计 未分配不用修改 -->
        <meta-data android:name="ADTAPPID" android:value="CEF558197BD5DC43325E009FE3F80CC25" />
*/



     /*   String clientID = prop.getProperty("ClientID");

        String sdkContent = FileUtil.read(sdkplugin);

       *//* Pattern p = Pattern.compile("<meta-data android:name=\"XMWAPPID\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(sdkContent);
        m.find();
        String XMWAPPID = m.group(1);*//*
        sdkContent = sdkContent.replaceAll("testclient", clientID);
        FileUtil.write(sdkplugin, sdkContent);

*/




    }


}
