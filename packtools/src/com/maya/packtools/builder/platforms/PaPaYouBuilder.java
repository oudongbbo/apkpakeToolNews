package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

public class PaPaYouBuilder extends BaseBuilder {
    public PaPaYouBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected String handleApplication(String manifest) {


        return replaceApplication("com.xygamesdk.XYGameApplcation", manifest);

    }
}
