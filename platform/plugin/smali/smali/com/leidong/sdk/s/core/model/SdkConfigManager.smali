.class public Lcom/leidong/sdk/s/core/model/SdkConfigManager;
.super Lcom/leidong/sdk/framework/model/config/ConfigManager;
.source "SdkConfigManager.java"


# static fields
.field public static final SDK_IS_SWITCH_LOGIN:Ljava/lang/String; = "sdk_is_switch_login"

.field public static final SDK_IS_SWITCH_TYPE:Ljava/lang/String; = "sdk_is_switch_type"

.field public static final SDK_USER_CAN_ADULT_CLOSE:Ljava/lang/String; = "sdk_user_noAdultClose"

.field public static final SDK_USER_CAN_AUTH_CLOSE:Ljava/lang/String; = "sdk_user_noAuthClose"

.field public static final SDK_USER_IS_ADULT_NOTICE:Ljava/lang/String; = "sdk_user_isAdultNotice"

.field public static final SDK_USER_IS_ADULT_NOTICE_TIME:Ljava/lang/String; = "sdk_user_isAdultNoticeTime"

.field public static final SDK_USER_IS_AUTH_NOTICE:Ljava/lang/String; = "sdk_user_isAuthNotice"

.field public static final SDK_USER_IS_AUTH_NOTICE_TIME:Ljava/lang/String; = "sdk_user_isAuthNoticeTime"

.field public static final SDK_USER_IS_LOGIN_AUTH:Ljava/lang/String; = "sdk_user_isLoginAuth"

.field public static final SDK_USER_IS_PAY_AUTH:Ljava/lang/String; = "sdk_user_isPayAuth"

.field public static final SDK_USER_IS_PAY_NOTICE:Ljava/lang/String; = "sdk_user_isPayNotice"

.field public static final SDK_USER_NO_ADULT_PAYMAX:Ljava/lang/String; = "sdk_user_noAdultPayMax"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;-><init>()V

    return-void
.end method

.method public static getExitGameData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "data_exitgame"

    const-string v1, ""

    .line 148
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIsPhoneQuickLogin(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_boolean_visitor"

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getScrollMessageText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "scroll_message_text"

    const-string v1, ""

    .line 131
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScrollMessageUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "scroll_message_url"

    const-string v1, ""

    .line 139
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkFloatSwitch(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_float_switch"

    const-string v1, "0"

    .line 40
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_id"

    const-string v1, "0"

    .line 32
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkInitFirstTime(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_init_firsttime"

    const/4 v1, 0x1

    .line 16
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSdkSelfLogin(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_self_login"

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSkinFloatLogo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "skin_float_logo_icon_full"

    const-string v1, ""

    .line 101
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSkinFloatLogoLeft(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "skin_float_logo_icon_left"

    const-string v1, ""

    .line 109
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSkinFloatLogoRight(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "skin_float_logo_icon_right"

    const-string v1, ""

    .line 117
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSkinLgoinBg(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "skin_login_bg_url"

    const-string v1, ""

    .line 65
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSkinLgoinBgStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "skin_login_bg_starttime"

    const-string v1, ""

    .line 74
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "skin_login_logo_url"

    const-string v1, ""

    .line 83
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSkinLgoinLogoDisplay(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "skin_login_logo_display"

    const/4 v1, 0x1

    .line 92
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserCanAdultClose(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_noAdultClose"

    const/4 v1, 0x1

    .line 246
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserCanAuthClose(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_noAuthClose"

    const/4 v1, 0x1

    .line 238
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserIsAdultNotice(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_isAdultNotice"

    const/4 v1, 0x0

    .line 196
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserIsAdultNoticeTime(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sdk_user_isAdultNoticeTime"

    const/4 v1, 0x0

    .line 221
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getUserIsAuthNotice(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_isAuthNotice"

    const/4 v1, 0x0

    .line 188
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserIsAuthNoticeTime(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sdk_user_isAuthNoticeTime"

    const/4 v1, 0x0

    .line 213
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getUserIsLoginAuth(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_isLoginAuth"

    const/4 v1, 0x0

    .line 173
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserIsPayAuth(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_isPayAuth"

    const/4 v1, 0x0

    .line 180
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserIsPayNotice(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_user_isPayNotice"

    const/4 v1, 0x0

    .line 204
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserIsVisitor(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_boolean_visitor"

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserNoAdultPayMax(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sdk_user_noAdultPayMax"

    const/4 v1, 0x0

    .line 229
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setExitGameData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data_exitgame"

    .line 144
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsPhoneQuickLogin(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_boolean_visitor"

    .line 52
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setScrollMessageText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "scroll_message_text"

    .line 127
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setScrollMessageUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "scroll_message_url"

    .line 135
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkFloatSwitch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdk_float_switch"

    .line 36
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdk_id"

    .line 28
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkInitFirstTime(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_init_firsttime"

    .line 12
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSdkSelfLogin(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_self_login"

    .line 20
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSkinFloatLogo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "skin_float_logo_icon_full"

    .line 97
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSkinFloatLogoLeft(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "skin_float_logo_icon_left"

    .line 105
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSkinFloatLogoRight(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "skin_float_logo_icon_right"

    .line 113
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSkinLgoinBg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "skin_login_bg_url"

    .line 61
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSkinLgoinBgStartTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "skin_login_bg_starttime"

    .line 70
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSkinLgoinLogo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "skin_login_logo_url"

    .line 79
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSkinLgoinLogoDisplay(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "skin_login_logo_display"

    .line 88
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserCanAdultClose(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_noAdultClose"

    .line 242
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserCanAuthClose(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_noAuthClose"

    .line 234
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserIsAdultNotice(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_isAdultNotice"

    .line 192
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserIsAdultNoticeTime(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sdk_user_isAdultNoticeTime"

    .line 217
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setUserIsAuthNotice(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_isAuthNotice"

    .line 184
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserIsAuthNoticeTime(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sdk_user_isAuthNoticeTime"

    .line 209
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setUserIsLoginAuth(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_isLoginAuth"

    .line 169
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserIsPayAuth(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_isPayAuth"

    .line 176
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserIsPayNotice(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_user_isPayNotice"

    .line 200
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserIsVisitor(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_boolean_visitor"

    .line 44
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserNoAdultPayMax(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sdk_user_noAdultPayMax"

    .line 225
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static skipUserSwitchView(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
