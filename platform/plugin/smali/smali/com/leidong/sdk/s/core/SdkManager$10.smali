.class Lcom/leidong/sdk/s/core/SdkManager$10;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->autoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/SdkManager;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$uame:Ljava/lang/String;

.field final synthetic val$vname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    iput-object p3, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$uame:Ljava/lang/String;

    iput-object p4, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$vname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoEnd()V
    .locals 8

    .line 560
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "leidong_login_ing"

    .line 561
    sget-object v1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 562
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/SdkManager;->access$100(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/RequsetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$uame:Ljava/lang/String;

    iget-object v3, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$vname:Ljava/lang/String;

    new-instance v5, Lcom/leidong/sdk/s/core/SdkManager$10$1;

    invoke-direct {v5, p0}, Lcom/leidong/sdk/s/core/SdkManager$10$1;-><init>(Lcom/leidong/sdk/s/core/SdkManager$10;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestAccessTokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    return-void
.end method

.method public clickSwitch()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    sget-object v1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
