.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 306
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/framework/view/common/CountDownView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/CountDownView;->stopCountDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 301
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    const-string v0, "leidong_common_toast_vcode_sent"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    return-void
.end method
