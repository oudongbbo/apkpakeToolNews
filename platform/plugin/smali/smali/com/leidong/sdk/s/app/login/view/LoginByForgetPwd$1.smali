.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 119
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
