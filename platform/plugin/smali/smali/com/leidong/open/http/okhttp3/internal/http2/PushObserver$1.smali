.class final Lcom/leidong/open/http/okhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/internal/http2/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http2/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILcom/leidong/open/http/okio/BufferedSource;IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long p3, p3

    .line 90
    invoke-interface {p2, p3, p4}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onReset(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 0

    return-void
.end method
