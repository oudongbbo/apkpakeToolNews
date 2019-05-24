.class Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/exit/ExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogBitmapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 149
    sget-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$400(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
