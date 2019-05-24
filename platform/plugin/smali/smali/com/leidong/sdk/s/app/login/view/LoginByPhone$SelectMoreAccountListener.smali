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

    .line 160
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    .line 177
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
