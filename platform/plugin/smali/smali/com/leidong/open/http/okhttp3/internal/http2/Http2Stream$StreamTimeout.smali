.class Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lcom/leidong/open/http/okio/AsyncTimeout;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 594
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected timedOut()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->closeLater(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
