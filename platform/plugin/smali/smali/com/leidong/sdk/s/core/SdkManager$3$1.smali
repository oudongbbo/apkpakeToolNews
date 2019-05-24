.class Lcom/leidong/sdk/s/core/SdkManager$3$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/core/SdkManager$3;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager$3;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x1396

    if-ne p1, v0, :cond_0

    .line 265
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object p1, p1, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object p1, p1, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/SdkManager;->access$000(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;-><init>(Lcom/leidong/sdk/s/core/SdkManager$3$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handlPaySuccess(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
