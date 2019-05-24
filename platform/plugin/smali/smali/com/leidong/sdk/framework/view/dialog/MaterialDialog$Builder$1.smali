.class Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder$1;->this$1:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 427
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder$1;->this$1:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->access$2400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;)Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 429
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder$1;->this$1:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    .line 430
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x2

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
