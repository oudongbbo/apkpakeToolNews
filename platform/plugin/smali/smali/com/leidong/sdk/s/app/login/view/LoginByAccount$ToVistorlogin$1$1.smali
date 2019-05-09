.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    .line 379
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "content"    # Ljava/lang/String;

    .line 385
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "is_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 387
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v3

    .line 388
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 389
    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v8

    .line 388
    invoke-virtual/range {v3 .. v8}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 393
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
