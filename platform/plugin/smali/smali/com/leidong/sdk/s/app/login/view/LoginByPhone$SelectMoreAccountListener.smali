.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectMoreAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    .line 159
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->isQuickClick()Z
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->initPopWindows()V
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    .line 176
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 184
    :goto_0
    return-void
.end method
