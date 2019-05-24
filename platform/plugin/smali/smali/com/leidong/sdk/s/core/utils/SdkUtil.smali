.class public Lcom/leidong/sdk/s/core/utils/SdkUtil;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/utils/ReqUtil;->buildWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exitWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/Object;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 1

    .line 42
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/utils/ReqUtil;->buildWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    const-string p0, "\u5730\u5740\u4e3a\u7a7a"

    .line 46
    invoke-interface {p5, p0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, p3}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setTransparent(Z)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setCanBackClose(Z)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    new-instance p0, Lcom/leidong/sdk/s/core/utils/SdkUtil$1;

    invoke-direct {p0, p5}, Lcom/leidong/sdk/s/core/utils/SdkUtil$1;-><init>(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->setJsInterface(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->show()V

    return-void
.end method

.method public static openWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->showSdkWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/leidong/sdk/framework/web/SdkWebManager;->showSdkWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method public static showSdkWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leidong/sdk/s/core/activity/SdkWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showWithOtherWebsite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/web/SdkWebManager;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->toUri(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
