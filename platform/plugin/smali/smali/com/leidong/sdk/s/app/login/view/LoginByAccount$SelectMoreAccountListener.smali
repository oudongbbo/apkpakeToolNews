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

    .line 236
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    .line 253
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 256
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
