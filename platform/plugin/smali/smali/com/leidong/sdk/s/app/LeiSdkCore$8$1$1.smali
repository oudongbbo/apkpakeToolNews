.class Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    .line 361
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;

    .line 366
    const-string v0, "hasNameAuth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 367
    .local v0, "hasNameAuth":Z
    const-string v1, "isAdult"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 368
    .local v1, "isAdult":Z
    const-string v2, "age"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 369
    .local v2, "age":I
    const-string v3, "hasGuard"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 372
    .local v3, "hasGuard":Z
    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserAuth(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 373
    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserAdult(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 374
    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserAge(Landroid/content/Context;Ljava/lang/String;I)V

    .line 375
    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserGuard(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 377
    if-eqz v0, :cond_0

    .line 379
    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v4}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v5, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v5, v5, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1$1;

    invoke-direct {v7, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserNameAuth(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 394
    :goto_0
    return-void
.end method
