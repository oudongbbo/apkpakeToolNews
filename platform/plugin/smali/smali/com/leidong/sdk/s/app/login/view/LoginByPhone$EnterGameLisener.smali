.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;
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
    name = "EnterGameLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 258
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v1, p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
