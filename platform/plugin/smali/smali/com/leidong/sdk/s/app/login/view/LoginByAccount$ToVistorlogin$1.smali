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

    .line 404
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
