.class Lcom/leidong/sdk/s/app/LeiSdkCore$13;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserNameAuth(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserCanAuthClose(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$13;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    const-string v1, "\u60a8\u8fd8\u672a\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1"

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
