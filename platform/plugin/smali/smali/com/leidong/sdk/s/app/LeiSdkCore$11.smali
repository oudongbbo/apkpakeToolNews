.class Lcom/leidong/sdk/s/app/LeiSdkCore$11;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->handleNoAdultPayNotice(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 560
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$11;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$11;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$11;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$11;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 565
    return-void
.end method
