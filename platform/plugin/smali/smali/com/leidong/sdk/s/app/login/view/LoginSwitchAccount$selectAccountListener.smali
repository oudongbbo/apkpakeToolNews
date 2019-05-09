.class Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;
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
    name = "selectAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    .line 225
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->initPopWindows()V
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    .line 243
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 251
    :goto_0
    return-void
.end method
