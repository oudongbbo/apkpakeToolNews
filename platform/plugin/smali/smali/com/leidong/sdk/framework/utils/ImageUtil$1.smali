.class Lcom/leidong/sdk/framework/utils/ImageUtil$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Lcom/leidong/open/main/OpenImageUtils$OpenImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/utils/ImageUtil;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/utils/ImageUtil;Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/leidong/sdk/framework/utils/ImageUtil$1;->this$0:Lcom/leidong/sdk/framework/utils/ImageUtil;

    iput-object p2, p0, Lcom/leidong/sdk/framework/utils/ImageUtil$1;->val$callback:Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/leidong/sdk/framework/utils/ImageUtil$1;->val$callback:Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/leidong/sdk/framework/utils/ImageUtil$1;->val$callback:Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-interface {v0, p1, p2}, Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;->onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
