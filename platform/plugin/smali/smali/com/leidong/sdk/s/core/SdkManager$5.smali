.class Lcom/leidong/sdk/s/core/SdkManager$5;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/SdkManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/core/SdkManager;

    .line 340
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$5;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 343
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isLoginShowing:Z

    .line 344
    return-void
.end method
