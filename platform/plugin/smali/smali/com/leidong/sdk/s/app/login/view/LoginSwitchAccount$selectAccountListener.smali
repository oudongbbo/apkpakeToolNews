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

    .line 242
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 250
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    .line 260
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 263
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
