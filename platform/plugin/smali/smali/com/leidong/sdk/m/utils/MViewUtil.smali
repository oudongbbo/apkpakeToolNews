.class public Lcom/leidong/sdk/m/utils/MViewUtil;
.super Lcom/leidong/sdk/framework/utils/ViewUtil;
.source "MViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/leidong/sdk/framework/utils/ViewUtil;-><init>()V

    return-void
.end method

.method public static showAndoridExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 3

    .line 14
    new-instance v0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    const-string p0, "\u9000\u51fa\u6e38\u620f"

    .line 15
    invoke-virtual {v0, p0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object p0

    const-string v1, "\u8fd8\u6709\u66f4\u7cbe\u5f69\u7684\u5185\u5bb9\u7b49\u7740\u60a8\uff0c\u786e\u5b9a\u73b0\u5728\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    .line 16
    invoke-virtual {p0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object p0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/leidong/sdk/m/utils/MViewUtil$2;

    invoke-direct {v2, v0, p1}, Lcom/leidong/sdk/m/utils/MViewUtil$2;-><init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object p0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/leidong/sdk/m/utils/MViewUtil$1;

    invoke-direct {v2, v0, p1}, Lcom/leidong/sdk/m/utils/MViewUtil$1;-><init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 25
    invoke-virtual {p0, v1, v2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 35
    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->show()V

    return-void
.end method
