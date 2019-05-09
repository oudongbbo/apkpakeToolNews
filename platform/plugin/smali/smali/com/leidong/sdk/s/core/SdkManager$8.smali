.class Lcom/leidong/sdk/s/core/SdkManager$8;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/core/SdkManager;

    .line 483
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$8;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$8;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iput-object p3, p0, Lcom/leidong/sdk/s/core/SdkManager$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 485
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$8;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 486
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$8;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$8;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/SdkManager;->vistorBind(Landroid/content/Context;)V

    .line 487
    return-void
.end method
