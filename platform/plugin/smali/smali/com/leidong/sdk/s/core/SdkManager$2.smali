.class Lcom/leidong/sdk/s/core/SdkManager$2;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager;->vistorBind(Landroid/content/Context;)V
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

    .line 201
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$2;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$2;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/core/SdkManager;->showFloat(Landroid/content/Context;)V

    return-void
.end method
