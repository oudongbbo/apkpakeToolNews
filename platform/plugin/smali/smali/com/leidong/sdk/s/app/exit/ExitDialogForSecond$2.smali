.class Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;Landroid/widget/ImageView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;->val$view:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 236
    iget-object p2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
