.class final Lcom/leidong/sdk/m/utils/MViewUtil$2;
.super Ljava/lang/Object;
.source "MViewUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

.field final synthetic val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/leidong/sdk/m/utils/MViewUtil$2;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iput-object p2, p0, Lcom/leidong/sdk/m/utils/MViewUtil$2;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/leidong/sdk/m/utils/MViewUtil$2;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 21
    iget-object v0, p0, Lcom/leidong/sdk/m/utils/MViewUtil$2;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/leidong/sdk/m/utils/MViewUtil$2;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 24
    :cond_0
    return-void
.end method
