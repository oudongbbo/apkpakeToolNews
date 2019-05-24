.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 470
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .line 458
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "is_reg"

    const/4 v1, 0x1

    .line 459
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 460
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v1

    .line 461
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;

    iget-object v3, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;->val$pwd:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 462
    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v6

    .line 461
    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;IZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 464
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
