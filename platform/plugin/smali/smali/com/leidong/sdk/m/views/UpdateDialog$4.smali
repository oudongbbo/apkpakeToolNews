.class Lcom/leidong/sdk/m/views/UpdateDialog$4;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/views/UpdateDialog;->checkDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

.field final synthetic val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/UpdateDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$4;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iput-object p2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$4;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 323
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$4;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    return-void
.end method
