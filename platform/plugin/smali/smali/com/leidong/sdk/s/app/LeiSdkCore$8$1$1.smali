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

    .line 361
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "hasNameAuth"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isAdult"

    .line 367
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "age"

    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "hasGuard"

    .line 369
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 372
    iget-object v3, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v3, v3, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v3, v3, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v3}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserAuth(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 373
    iget-object v3, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v3, v3, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v3, v3, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v3}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v4, v4, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserAdult(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 374
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v3, v3, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v3, v3, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserAge(Landroid/content/Context;Ljava/lang/String;I)V

    .line 375
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$uid:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserGuard(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    .line 379
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$8;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$8$1$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserNameAuth(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    :goto_0
    return-void
.end method
