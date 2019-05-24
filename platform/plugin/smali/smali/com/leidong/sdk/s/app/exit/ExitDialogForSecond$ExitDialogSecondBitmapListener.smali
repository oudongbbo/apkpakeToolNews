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

    .line 178
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$200(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p1, Lcom/leidong/sdk/framework/web/SdkWebManager;

    invoke-direct {p1}, Lcom/leidong/sdk/framework/web/SdkWebManager;-><init>()V

    .line 187
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$300(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$200(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/web/SdkWebManager;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
