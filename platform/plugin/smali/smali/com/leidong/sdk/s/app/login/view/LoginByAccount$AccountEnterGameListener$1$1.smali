.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    .line 274
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v3, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->val$pwd:Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 279
    return-void
.end method