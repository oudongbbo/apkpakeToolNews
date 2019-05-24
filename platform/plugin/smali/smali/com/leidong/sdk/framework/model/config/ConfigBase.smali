.class public Lcom/leidong/sdk/framework/model/config/ConfigBase;
.super Ljava/lang/Object;
.source "ConfigBase.java"


# static fields
.field public static final SPNAME:Ljava/lang/String; = "leidong_pref"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "leidong_pref"

    .line 25
    invoke-static {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getIntData(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "leidong_pref"

    .line 33
    invoke-static {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->getIntData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLongData(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 1

    const-string v0, "leidong_pref"

    .line 37
    invoke-static {p0, v0, p1, p2, p3}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->getLongData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "leidong_pref"

    .line 17
    invoke-static {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "leidong_pref"

    .line 21
    invoke-static {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIntData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "leidong_pref"

    .line 29
    invoke-static {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->setIntData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setLongData(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "leidong_pref"

    .line 41
    invoke-static {p0, v0, p1, p2, p3}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->setLongData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "leidong_pref"

    .line 13
    invoke-static {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/utils/SharedPreUtil;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
