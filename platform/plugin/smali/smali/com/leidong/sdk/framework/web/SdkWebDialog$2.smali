.class Lcom/leidong/sdk/framework/web/SdkWebDialog$2;
.super Landroid/os/Handler;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$2;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 173
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$2;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->dismiss()V

    return-void
.end method
