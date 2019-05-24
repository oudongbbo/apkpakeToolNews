.class Lcom/leidong/sdk/s/core/SdkManager$10$1$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager$10$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/core/SdkManager$10$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager$10$1;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 574
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$10$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/core/SdkManager$10$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$10;

    iget-object p1, p1, Lcom/leidong/sdk/s/core/SdkManager$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 575
    sget-object p1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .line 570
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$10$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$10$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$10;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$10;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/SdkManager;->access$000(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v1

    const-string v3, ""

    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$10$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$10$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$10;

    iget-object v6, v0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;IZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
