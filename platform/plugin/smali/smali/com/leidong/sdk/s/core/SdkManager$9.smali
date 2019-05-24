.class Lcom/leidong/sdk/s/core/SdkManager$9;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->handleVisitordialogTips(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/SdkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;Landroid/content/Context;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$9;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 500
    iget-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$9;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iget-object p3, p0, Lcom/leidong/sdk/s/core/SdkManager$9;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/s/core/SdkManager;->showFloat(Landroid/content/Context;)V

    .line 501
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
