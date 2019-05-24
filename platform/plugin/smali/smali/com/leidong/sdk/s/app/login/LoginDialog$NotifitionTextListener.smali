.class Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifitionTextListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/LoginDialog;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->access$100(Lcom/leidong/sdk/s/app/login/LoginDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getScrollMessageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->access$100(Lcom/leidong/sdk/s/app/login/LoginDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/LoginDialog;->access$100(Lcom/leidong/sdk/s/app/login/LoginDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getScrollMessageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
