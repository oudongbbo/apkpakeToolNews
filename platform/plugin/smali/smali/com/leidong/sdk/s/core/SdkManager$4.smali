.class Lcom/leidong/sdk/s/core/SdkManager$4;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->showPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
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

    .line 321
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$4;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 324
    sput-boolean p1, Lcom/leidong/sdk/s/core/SdkManager;->isPayShowing:Z

    return-void
.end method
