.class Lcom/leidong/sdk/m/views/UpdateDialog$5;
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

.field final synthetic val$down_url:Ljava/lang/String;

.field final synthetic val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/UpdateDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$5;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iput-object p2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$5;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iput-object p3, p0, Lcom/leidong/sdk/m/views/UpdateDialog$5;->val$down_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$5;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 318
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$5;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$5;->val$down_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->startDownloadApk(Ljava/lang/String;)V

    return-void
.end method
