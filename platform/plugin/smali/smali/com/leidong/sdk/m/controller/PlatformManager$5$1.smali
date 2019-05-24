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

    .line 883
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "dialog"

    .line 887
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 892
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "target_url"

    .line 893
    invoke-static {v1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "touch_back_close"

    .line 894
    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 895
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 896
    iget-object v3, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v3, v3, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v3, v3, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 898
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "type"

    .line 903
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new"

    .line 904
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->userLoginS(Landroid/content/Context;)V

    .line 908
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onSwitch()V

    goto :goto_1

    .line 912
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    const-string v2, "token"

    .line 913
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cch_data"

    const-string v2, "cch_data"

    .line 914
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_active"

    .line 917
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {p1, v0}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_1

    .line 922
    :cond_2
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$5;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    new-instance v2, Lcom/leidong/sdk/m/controller/PlatformManager$5$1$1;

    invoke-direct {v2, p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager$5$1$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$5$1;Landroid/os/Bundle;)V

    invoke-static {v1, p1, v2}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$100(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    :goto_1
    return-void
.end method
