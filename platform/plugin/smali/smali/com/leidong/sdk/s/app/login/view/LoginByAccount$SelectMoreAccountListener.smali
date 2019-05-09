.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;
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
    name = "SelectMoreAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 219
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->initPopWindows()V
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    .line 235
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 243
    :goto_0
    return-void
.end method
