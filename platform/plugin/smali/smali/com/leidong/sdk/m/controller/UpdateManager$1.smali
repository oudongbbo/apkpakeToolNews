.class final Lcom/leidong/sdk/m/controller/UpdateManager$1;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/UpdateManager;->checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isForce:Z

.field final synthetic val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$1;->val$isForce:Z

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/UpdateManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leidong/sdk/m/controller/UpdateManager$1;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-boolean p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$1;->val$isForce:Z

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$1;->val$context:Landroid/content/Context;

    const-string v0, "\u4e3a\u4e86\u66f4\u597d\u7684\u6e38\u620f\u4f53\u9a8c\uff0c\u5f53\u524d\u7248\u672c\u9700\u8981\u66f4\u65b0\u540e\u624d\u80fd\u7ee7\u7eed\u6e38\u620f."

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$1;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    :goto_0
    return-void
.end method
