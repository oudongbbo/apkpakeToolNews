.class final Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$Listener$1;
.super Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$Listener;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->close(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
