.class Lcom/leidong/sdk/s/app/login/LoginDialog$2;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/LoginDialog;->requestLoginBitmap(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/LoginDialog;Landroid/widget/ImageView;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$2;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 173
    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$2;->val$view:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
