.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneClearLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
