.class Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;
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
    name = "ExitDialogGiftListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/exit/ExitDialog;

    .line 171
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 174
    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    const-string v1, "\u5efa\u8bbe\u4e2d\uff0c\u5c3d\u60c5\u671f\u5f85"

    # invokes: Lcom/leidong/sdk/s/app/exit/ExitDialog;->showToas(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$500(Lcom/leidong/sdk/s/app/exit/ExitDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$400(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void
.end method
