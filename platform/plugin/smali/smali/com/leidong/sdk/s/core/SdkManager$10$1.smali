.class Lcom/leidong/sdk/s/core/SdkManager$10$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager$10;->autoEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/core/SdkManager$10;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/core/SdkManager$10;

    .line 563
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$10;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p2}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$10$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$10;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$10;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    # getter for: Lcom/leidong/sdk/s/core/SdkManager;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;
    invoke-static {v0}, Lcom/leidong/sdk/s/core/SdkManager;->access$000(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$10$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/core/SdkManager$10$1$1;-><init>(Lcom/leidong/sdk/s/core/SdkManager$10$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    .line 578
    return-void
.end method