.class public final Lcom/leidong/open/http/okhttp3/internal/http2/StreamResetException;
.super Ljava/io/IOException;
.source "StreamResetException.java"


# instance fields
.field public final errorCode:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/StreamResetException;->errorCode:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    .line 27
    return-void
.end method