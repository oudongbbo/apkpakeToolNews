.class public Lcom/leidong/sdk/s/core/utils/SLogUtil;
.super Ljava/lang/Object;
.source "SLogUtil.java"


# static fields
.field public static TAG:Ljava/lang/String; = "leidong_s"

.field public static isShowLog:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isShowLog(Z)V
    .locals 0

    .line 14
    sput-boolean p0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    .line 15
    sput-boolean p0, Lcom/leidong/sdk/framework/utils/LogUtil;->isShowLog:Z

    return-void
.end method

.method public static openLog(Ljava/lang/String;)V
    .locals 3

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leidong/sdk/s/core/utils/SLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static openLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]-->"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/leidong/sdk/s/core/utils/SLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
