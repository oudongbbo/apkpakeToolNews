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

    .line 294
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 304
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .line 298
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v3, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->val$pwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 299
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v6

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;IZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
