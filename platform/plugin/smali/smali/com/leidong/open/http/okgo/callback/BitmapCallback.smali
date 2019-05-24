.class public abstract Lcom/leidong/open/http/okgo/callback/BitmapCallback;
.super Lcom/leidong/open/http/okgo/callback/AbsCallback;
.source "BitmapCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/leidong/open/http/okgo/callback/AbsCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/leidong/open/http/okgo/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/leidong/open/http/okgo/convert/BitmapConvert;->create()Lcom/leidong/open/http/okgo/convert/BitmapConvert;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okgo/convert/BitmapConvert;->convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->close()V

    return-object v0
.end method

.method public bridge synthetic convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okgo/callback/BitmapCallback;->convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
