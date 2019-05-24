.class Lcom/leidong/sdk/framework/pay/PayWebDialog$2;
.super Ljava/lang/Object;
.source "PayWebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/pay/PayWebDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

.field final synthetic val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$2;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    iput-object p2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$2;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$2;->val$mMaterialDialog:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    return-void
.end method
