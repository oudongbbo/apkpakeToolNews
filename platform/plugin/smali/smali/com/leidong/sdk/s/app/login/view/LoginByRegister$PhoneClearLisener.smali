.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneClearLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 645
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
