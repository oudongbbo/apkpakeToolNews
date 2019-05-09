.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;

    .line 347
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    .line 366
    return-void
.end method
