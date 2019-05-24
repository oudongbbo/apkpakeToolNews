.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    sget-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    const-string v0, "leidong_tips_url_not_exit"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
