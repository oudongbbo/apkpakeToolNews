.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 122
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
