.class Lcom/leidong/sdk/s/core/SdkManager$3;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/SdkManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$payinfo:Lcom/leidong/sdk/framework/pay/PayInfoBean;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/pay/PayInfoBean;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$payinfo:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    iput-object p3, p0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 274
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$3;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/SdkManager;->access$000(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$3$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/core/SdkManager$3$1;-><init>(Lcom/leidong/sdk/s/core/SdkManager$3;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
