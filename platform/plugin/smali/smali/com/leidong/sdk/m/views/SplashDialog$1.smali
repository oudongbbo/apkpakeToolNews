.class Lcom/leidong/sdk/m/views/SplashDialog$1;
.super Landroid/os/Handler;
.source "SplashDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/m/views/SplashDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/views/SplashDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/SplashDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/leidong/sdk/m/views/SplashDialog$1;->this$0:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object p1, p0, Lcom/leidong/sdk/m/views/SplashDialog$1;->this$0:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->dismiss()V

    .line 82
    iget-object p1, p0, Lcom/leidong/sdk/m/views/SplashDialog$1;->this$0:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->access$000(Lcom/leidong/sdk/m/views/SplashDialog;)Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/leidong/sdk/m/views/SplashDialog$1;->this$0:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->access$000(Lcom/leidong/sdk/m/views/SplashDialog;)Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;->onEnd()V

    :cond_0
    return-void
.end method
