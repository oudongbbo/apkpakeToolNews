.class final Lcom/leidong/sdk/m/utils/MViewUtil$1;
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

    .line 25
    iput-object p1, p0, Lcom/leidong/sdk/m/utils/MViewUtil$1;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iput-object p2, p0, Lcom/leidong/sdk/m/utils/MViewUtil$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/leidong/sdk/m/utils/MViewUtil$1;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 29
    iget-object p1, p0, Lcom/leidong/sdk/m/utils/MViewUtil$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/leidong/sdk/m/utils/MViewUtil$1;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    const-string v0, "\u53d6\u6d88\u9000\u51fa"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
