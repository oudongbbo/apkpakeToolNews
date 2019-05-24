.class public Lcom/leidong/sdk/m/utils/MsdkUtils;
.super Ljava/lang/Object;
.source "MsdkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccount(Landroid/content/Context;Lcom/leidong/sdk/framework/user/UserInfoBean;)V
    .locals 1

    .line 69
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Lcom/leidong/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/leidong/sdk/framework/user/UserInfoBean;)V

    return-void
.end method

.method public static showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/leidong/sdk/framework/web/SdkWebManager;->showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method

.method public static showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/leidong/sdk/framework/web/SdkWebManager;->showSdkWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method public static unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->decodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unZipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->decodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public showSdkCustomerServiceActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/leidong/sdk/m/http/MReqUtils;

    invoke-direct {v0}, Lcom/leidong/sdk/m/http/MReqUtils;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/http/MReqUtils;->buildCustomerServiceWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    .line 28
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
