.class Lcom/leidong/sdk/s/app/LeiSdkCore$4;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$payinfos:Lcom/leidong/sdk/framework/pay/PayInfoBean;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payinfos:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    iput-object p4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$4;)V

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$300(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$200(Lcom/leidong/sdk/s/app/LeiSdkCore;)Lcom/leidong/sdk/s/core/SdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payinfos:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    new-instance v3, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;

    invoke-direct {v3, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$4;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/leidong/sdk/s/core/SdkManager;->userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    :goto_0
    return-void
.end method
