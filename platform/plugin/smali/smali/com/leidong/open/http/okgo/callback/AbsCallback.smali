.class public abstract Lcom/leidong/open/http/okgo/callback/AbsCallback;
.super Ljava/lang/Object;
.source "AbsCallback.java"

# interfaces
.implements Lcom/leidong/open/http/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/leidong/open/http/okgo/convert/Converter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(JJFJ)V
    .locals 0

    return-void
.end method

.method public onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onBefore(Lcom/leidong/open/http/okgo/request/BaseRequest;)V
    .locals 0

    return-void
.end method

.method public onCacheError(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onCacheSuccess(Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/leidong/open/http/okhttp3/Call;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onError(Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/leidong/open/http/okhttp3/Call;",
            "Lcom/leidong/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public parseError(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 0

    return-void
.end method
