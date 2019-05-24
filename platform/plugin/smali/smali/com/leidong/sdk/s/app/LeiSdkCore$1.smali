.class Lcom/leidong/sdk/s/app/LeiSdkCore$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->setUserLogoutCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->isLoginSuccess:Z

    .line 81
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
