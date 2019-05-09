.class final Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;J)V
    .locals 1
    .param p2, "bytesRemaining"    # J

    .line 272
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance p1, Lcom/leidong/open/http/okio/ForwardingTimeout;

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/open/http/okio/ForwardingTimeout;-><init>(Lcom/leidong/open/http/okio/Timeout;)V

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;

    .line 273
    iput-wide p2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 274
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 299
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lcom/leidong/open/http/okio/ForwardingTimeout;)V

    .line 301
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 302
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->flush()V

    .line 294
    return-void
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lcom/leidong/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lcom/leidong/open/http/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 283
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 284
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/BufferedSink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 288
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    sub-long v2, v0, p2

    iput-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    .line 289
    return-void
.end method
