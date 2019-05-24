.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountEnterGameListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 269
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 274
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/core/http/RequsetManager;

    move-result-object v0

    new-instance v3, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    invoke-direct {v3, p0, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    return-void

    .line 277
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    const-string v0, "leidong_tips_login_no_name_or_pwd"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    return-void
.end method
