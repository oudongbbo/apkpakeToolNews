.class Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogSecondBitmapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    .line 178
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$200(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/web/SdkWebManager;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/web/SdkWebManager;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$300(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;
    invoke-static {v2}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$200(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/web/SdkWebManager;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void
.end method
