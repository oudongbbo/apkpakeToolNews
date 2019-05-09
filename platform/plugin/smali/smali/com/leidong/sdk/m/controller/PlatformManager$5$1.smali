.class Lcom/leidong/sdk/m/controller/PlatformManager$5$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$5;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/m/controller/PlatformManager$5;

    .line 880
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 935
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onFail(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 884
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "dialogStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 890
    .local v1, "dialog":Lorg/json/JSONObject;
    const-string v2, "target_url"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "url":Ljava/lang/String;
    const-string v3, "touch_back_close"

    invoke-static {v1, v3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, "state":Ljava/lang/String;
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 893
    .local v4, "canBack":Z
    iget-object v6, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v6, v6, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v6, v6, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v5, v7}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "canBack":Z
    goto :goto_0

    .line 894
    .end local v1    # "dialog":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 900
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "type":Ljava/lang/String;
    const-string v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 903
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v3, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v3, v3, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v3, v3, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/leidong/sdk/m/controller/PlatformManager;->userLoginS(Landroid/content/Context;)V

    .line 905
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {v2}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onSwitch()V

    goto :goto_1

    .line 909
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 910
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "token"

    const-string v4, "token"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v3, "cch_data"

    const-string v4, "cch_data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v3, "app_active"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, "activeContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 917
    iget-object v4, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v4, v4, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {v4, v2}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_1

    .line 919
    :cond_2
    iget-object v4, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v4, v4, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    new-instance v5, Lcom/leidong/sdk/m/controller/PlatformManager$5$1$1;

    invoke-direct {v5, p0, v2}, Lcom/leidong/sdk/m/controller/PlatformManager$5$1$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$5$1;Landroid/os/Bundle;)V

    # invokes: Lcom/leidong/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    invoke-static {v4, v3, v5}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$100(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    .line 932
    .end local v2    # "result":Landroid/os/Bundle;
    .end local v3    # "activeContent":Ljava/lang/String;
    :goto_1
    return-void
.end method
