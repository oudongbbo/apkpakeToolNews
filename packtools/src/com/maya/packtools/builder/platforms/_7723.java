package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

public class _7723 extends BaseBuilder {
    public _7723(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.feimiao.sdk.m.platform.BaiduGameApplication", manifest);
    }
}
