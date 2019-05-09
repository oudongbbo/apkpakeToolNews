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
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    .line 254
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "loginName":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "pwd":Ljava/lang/String;
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;
    invoke-static {v2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "vname":Ljava/lang/String;
    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;
    invoke-static {v3}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "uname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    const-string v5, "leidong_tips_login_no_name"

    iget-object v6, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v6}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->showToast(Ljava/lang/String;)V

    .line 274
    return-void

    .line 289
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v4, v3, v2, v2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v4, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v4, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->LoginByAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void
.end method
