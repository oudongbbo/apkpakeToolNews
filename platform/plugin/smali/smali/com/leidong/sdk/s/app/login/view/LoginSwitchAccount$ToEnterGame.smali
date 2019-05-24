.class Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToEnterGame"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 275
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {v2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    const-string v0, "leidong_tips_login_no_name"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->showToast(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {p1, v2, v1, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v1, p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->LoginByAccount(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
