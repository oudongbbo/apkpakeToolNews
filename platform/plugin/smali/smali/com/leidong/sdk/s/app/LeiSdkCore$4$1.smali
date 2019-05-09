.class Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$4;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    .line 194
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 221
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$200(Lcom/leidong/sdk/s/app/LeiSdkCore;)Lcom/leidong/sdk/s/core/SdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payinfos:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    new-instance v3, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;

    invoke-direct {v3, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/leidong/sdk/s/core/SdkManager;->userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 217
    return-void
.end method
