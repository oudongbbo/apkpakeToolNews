.class public Lcom/leidong/sdk/framework/model/config/ConfigManager;
.super Lcom/leidong/sdk/framework/model/config/ConfigBase;
.source "ConfigManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/leidong/sdk/framework/model/config/ConfigBase;-><init>()V

    return-void
.end method

.method public static getGameId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "gid"

    const-string v1, ""

    .line 24
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGameKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "gKey"

    const-string v1, ""

    .line 32
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGameMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mid"

    const-string v1, ""

    .line 48
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGamePid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pid"

    const-string v1, ""

    .line 40
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInitGameData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "data_init"

    const-string v1, ""

    .line 14
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileDevid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "dev"

    const-string v1, ""

    .line 56
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_imei"

    const-string v1, ""

    .line 69
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_mac"

    const-string v1, ""

    .line 63
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOtherSdkReyunAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "reyun_appkey"

    const-string v1, ""

    .line 289
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "user_phone_number"

    const-string v1, ""

    .line 193
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleBalance(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "balance"

    const-string v1, "0"

    .line 247
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "createtime"

    const-string v1, ""

    .line 280
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleExtra(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "extra"

    const-string v1, "0"

    .line 271
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "roleId"

    const-string v1, "0"

    .line 207
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "roleLevel"

    const-string v1, "0"

    .line 223
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "roleName"

    const-string v1, "0"

    .line 215
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRolePartyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "partyName"

    const-string v1, "0"

    .line 263
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleServerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "serverId"

    const-string v1, "0"

    .line 231
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "serverName"

    const-string v1, "0"

    .line 239
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoleVip(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "vip"

    const-string v1, "0"

    .line 255
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkDebugS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_debug"

    const-string v1, "0"

    .line 102
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkFloatPosition(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sdk_float_position"

    const/4 v1, 0x2

    .line 86
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSdkRunID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_run_id"

    const-string v1, ""

    .line 184
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkSpecial(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sdk_special"

    const/4 v1, 0x0

    .line 94
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdkversion"

    const-string v1, "1.0.0"

    .line 77
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserAdult(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_adult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserAge(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_age"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserGuard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_guard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "user_id"

    const-string v1, ""

    .line 111
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "user_name"

    const-string v1, ""

    .line 119
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "user_pwd"

    const-string v1, ""

    .line 135
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "user_token"

    const-string v1, ""

    .line 143
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserVname(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "user_vname"

    const-string v1, ""

    .line 127
    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSdkSpecial(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sdk_special"

    .line 90
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGameId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "gid"

    .line 20
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGameKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "gKey"

    .line 28
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGameMid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mid"

    .line 44
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGamePid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pid"

    .line 36
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setInitGameData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data_init"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMobileDevid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dev"

    .line 53
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMobileIMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_imei"

    .line 66
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMobileMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_mac"

    .line 59
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOtherSdkReyunAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reyun_appkey"

    .line 285
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPhoneNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user_phone_number"

    .line 189
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleBalance(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "balance"

    .line 243
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleCreateTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "createtime"

    .line 276
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleExtra(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "extra"

    .line 267
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "roleId"

    .line 203
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "roleLevel"

    .line 219
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "roleName"

    .line 211
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRolePartyName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "partyName"

    .line 259
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleServerId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "serverId"

    .line 227
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleServerName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "serverName"

    .line 235
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRoleVip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vip"

    .line 251
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkDebugS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdk_debug"

    .line 98
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkFloatPosition(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sdk_float_position"

    .line 81
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSdkRunID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdk_run_id"

    .line 180
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdkversion"

    .line 73
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserAdult(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_adult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserAge(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_age"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setUserAuth(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserGuard(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_guard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user_id"

    .line 107
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user_name"

    .line 115
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user_pwd"

    .line 131
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user_token"

    .line 139
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserVname(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user_vname"

    .line 123
    invoke-static {p0, v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
