.class Lcom/leidong/sdk/s/core/SdkManager$6;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->userExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/SdkManager;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "leidong_exit_tips_cancel"

    .line 395
    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getExitGameData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-static {v2}, Lcom/leidong/sdk/s/core/SdkManager;->access$000(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleExitGameData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-nez v2, :cond_0

    .line 442
    sget-object v3, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 443
    new-instance v2, Lcom/leidong/sdk/s/app/exit/ExitDialog;

    iget-object v3, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$context:Landroid/content/Context;

    new-instance v4, Lcom/leidong/sdk/s/core/SdkManager$6$1;

    invoke-direct {v4, p0, v0}, Lcom/leidong/sdk/s/core/SdkManager$6$1;-><init>(Lcom/leidong/sdk/s/core/SdkManager$6;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/leidong/sdk/s/app/exit/ExitDialog;-><init>(Landroid/content/Context;Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;)V

    .line 453
    invoke-virtual {v2, v1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->setCancelable(Z)V

    .line 454
    invoke-virtual {v2, v1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    invoke-virtual {v2}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->show()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 457
    new-instance v3, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    iget-object v4, p0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$context:Landroid/content/Context;

    new-instance v5, Lcom/leidong/sdk/s/core/SdkManager$6$2;

    invoke-direct {v5, p0, v0}, Lcom/leidong/sdk/s/core/SdkManager$6$2;-><init>(Lcom/leidong/sdk/s/core/SdkManager$6;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2, v5}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;)V

    .line 468
    invoke-virtual {v3, v1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->setCancelable(Z)V

    .line 469
    invoke-virtual {v3, v1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->setCanceledOnTouchOutside(Z)V

    .line 470
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->show()V

    :cond_1
    :goto_0
    return-void
.end method
