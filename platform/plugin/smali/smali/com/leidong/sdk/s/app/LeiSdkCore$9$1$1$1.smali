.class Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1$1;->this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1$1;->this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$9$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$9;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$9;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1$1;->this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$9$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$9$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$9;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$9;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    return-void
.end method
