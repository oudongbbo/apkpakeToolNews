.class Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$8;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$8;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 403
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$400(Lcom/leidong/sdk/s/app/LeiSdkCore;)Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleUserAuth(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback2;)V

    return-void
.end method
