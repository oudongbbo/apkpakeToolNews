.class Lcom/leidong/sdk/s/core/SdkManager$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/SdkManager;

.field final synthetic val$resultCallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$1;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$1;->val$resultCallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$1;->val$resultCallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$1;->val$resultCallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    return-void
.end method
