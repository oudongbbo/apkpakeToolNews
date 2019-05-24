.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;
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
    name = "NormalRegistListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 554
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    return-void
.end method
