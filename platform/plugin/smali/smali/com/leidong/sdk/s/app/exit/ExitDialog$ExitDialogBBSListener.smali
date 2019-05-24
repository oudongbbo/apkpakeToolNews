.class Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;
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
    name = "ExitDialogBBSListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    sget-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    const-string v0, "\u8bba\u575b\u5efa\u8bbe\u4e2d\uff0c\u5c3d\u60c5\u671f\u5f85"

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$500(Lcom/leidong/sdk/s/app/exit/ExitDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$400(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
