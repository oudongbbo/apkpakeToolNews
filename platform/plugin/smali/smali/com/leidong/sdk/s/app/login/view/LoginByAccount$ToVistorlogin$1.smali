.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    .line 375
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 403
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    .line 399
    return-void
.end method