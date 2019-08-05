package com.maya.packtools.builder;

import com.maya.packtools.builder.base.BaseBuilder;

import com.maya.packtools.model.ApkParser;
import com.maya.packtools.builder.platforms.*;


public class PlatformBuild {

    public static void singleWork(ApkParser apkParser) {

        if (apkParser.currentSdkNo != Platforms.SDK_UNKNOWN) {

            BaseBuilder builder = null;

            switch (apkParser.currentSdkNo) {

                case Platforms.SDK_OPPO:
                    builder = new OppoBuilder(apkParser);
                    break;

                case Platforms.SDK_360:
                    builder = new _360Builder(apkParser);
                    break;

                case Platforms.SDK_MEIZU:
                    builder = new MeizuBuilder(apkParser);
                    break;

                case Platforms.SDK_LENOVO:
                    builder = new LenovoBuilder(apkParser);
                    break;

                case Platforms.SDK_JINLI:
                    builder = new JinliBuilder(apkParser);
                    break;

                case Platforms.SDK_HUAWEI:
                    builder = new HuaweiBuilder(apkParser);
                    break;

                case Platforms.SDK_BAIDU:
                    builder = new BaiduBuilder(apkParser);
                    break;

                case Platforms.SDK_SAMSUNG:
                    builder = new SamsungBuilder(apkParser);
                    break;

                case Platforms.SDK_COOLPAD:
                    builder = new CoolpadBuilder(apkParser);
                    break;

                case Platforms.SDK_UC:
                    builder = new UCBuilder(apkParser);
                    break;

                case Platforms.SDK_TIANYU:
                    builder = new TianyuBuilder(apkParser);
                    break;


                case Platforms.SDK_MI:
                    builder = new MiBuilder(apkParser);
                    break;

                case Platforms.SDK_VIVO:
                    builder = new VivoBuilder(apkParser);
                    break;

                case Platforms.SDK_NUBIA:
                    builder = new NubiaBuilder(apkParser);
                    break;
                case Platforms.SDK_TIANYUYOU:
                    builder = new TianyuYouBuilder(apkParser);
                    break;

                case Platforms.SDK_YSDK:
                    builder = new YSDKBuilder(apkParser);
                    break;
                case Platforms.SDK_IQIYI:
                    builder = new IqiyiBuilder(apkParser);
                    break;
                case Platforms.SDK_M4399:
                    builder = new M4399Builder(apkParser);
                    break;

                case Platforms.SDK_BILIBILI:
                    builder = new BiliBiliBuilder(apkParser);
                    break;

                case Platforms.SDK_JQGAME:
                    builder = new JqGameBuilder(apkParser);
                    break;

                case Platforms.SDK_LANDIE:
                    builder = new LanDieBuilder(apkParser);
                    break;

                case Platforms.SDK_WUFAN:
                    builder = new WuFanBuilder(apkParser);
                    break;

                case Platforms.SDK_57K:
                    builder = new _57kBuilder(apkParser);
                    break;

                case Platforms.SDK_233:

                    builder = new _233Builder(apkParser);
                    break;

                case Platforms.SDK_QIDIAN:
                    builder = new QiDianBuilder(apkParser);
                    break;

                case Platforms.SDK_XIANTU:
                    builder = new XianTuBuilder(apkParser);
                    break;

                case Platforms.SDK_YIKEYOU:
                    builder = new YiKeYouBuilder(apkParser);
                    break;

                case Platforms.SDK_YOUXIFAN:

                    builder = new YouXiFanBuilder(apkParser);

                    break;

                case Platforms.SDK_XIONGMAOWAN:
                    builder = new XiongMaoWanBuilder(apkParser);

                    break;


                case Platforms.SDK_WUKONG:
                    builder = new WuKongBuilder(apkParser);

                    break;

                case Platforms.SDK_BAMEN:
                    builder = new BaMenBuilder(apkParser);

                    break;

                case Platforms.SDK_JIUYOUTANG:
                    builder = new JiuYouTangBuilder(apkParser);

                    break;

                case Platforms.SDK_AIQU:
                    builder = new AiQuBuilder(apkParser);
                    break;


                case Platforms.SDK_PAPAYOU:
                    builder = new PaPaYouBuilder(apkParser);
                    break;

                case Platforms.SDK_55173:
                    builder = new m55173Builder(apkParser);
                    break;

                case Platforms.SDK_XIONGBING:

                    builder = new XiongbingBuilder(apkParser);
                    break;

                case Platforms.SDK_JIUYAO:

                    builder = new XiongbingBuilder(apkParser);
                    break;

                case Platforms.SDK_LEHIHI:

                    builder = new LehihiBuilder(apkParser);
                    break;

                case Platforms.SDK_BYOUHUI:
                    builder = new ByouhuiBuilder(apkParser);
                    break;

                case Platforms.SDK_7723:
                    builder = new _7723(apkParser);
                    break;

                case Platforms.SDK_3733:

                    builder = new _3733Builder(apkParser);
                    break;


                case Platforms.SDK_128SHOUYOU:
                    builder = new m128Builder(apkParser);
                    break;

                case Platforms.SDK_DIQIAO:
                    builder = new DiQiaoBuilder(apkParser);
                    break;

                case Platforms.SDK_SHOYOUZHIJIA:
                    builder = new SouYouZhiJiaBuilder(apkParser);
                    break;


                case Platforms.SDK_TAOSHOUYOU:
                    builder = new TaoShouYouBuilder(apkParser);
                    break;

                case Platforms.SDK_8868:
                    builder = new M8868Builder(apkParser);
                    break;

                case Platforms.SDK_JULERONGCHENG:
                    builder = new JuLeRongChengBuilder(apkParser);
                    break;

                case Platforms.SDK_YESHEN:
                    builder = new YeShenBuilder(apkParser);
                    break;

                case Platforms.SDK_KaLiuZaiXian:
                    builder = new KaLiuZaiXianBuilder(apkParser);
                    break;

                case Platforms.SDK_KuaiYou:
                    builder = new KuaiYouBuilder(apkParser);
                    break;


                default:
                    builder = new BaseBuilder(apkParser);
                    break;
            }

            builder.xbuild();
        } else {

            System.out.println(">>>>>无法识别的SDK");
        }

    }

}
