.class final Lcom/leidong/open/http/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/leidong/open/http/okio/BufferedSink;


# instance fields
.field public final buffer:Lcom/leidong/open/http/okio/Buffer;

.field closed:Z

.field public final sink:Lcom/leidong/open/http/okio/Sink;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okio/Sink;)V
    .locals 2
    .param p1, "sink"    # Lcom/leidong/open/http/okio/Sink;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    .line 41
    return-void
.end method


# virtual methods
.method public buffer()Lcom/leidong/open/http/okio/Buffer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-wide v1, v1, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 239
    iget-object v1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    iget-object v2, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-object v3, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-wide v3, v3, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-interface {v1, v2, v3, v4}, Lcom/leidong/open/http/okio/Sink;->write(Lcom/leidong/open/http/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_1
    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 246
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    goto :goto_1

    .line 247
    :catch_1
    move-exception v1

    .line 248
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 250
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    .line 252
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/leidong/open/http/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 253
    :cond_3
    return-void
.end method

.method public emit()Lcom/leidong/open/http/okio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v0

    .line 188
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    iget-object v3, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/leidong/open/http/okio/Sink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 189
    :cond_1
    return-object p0
.end method

.method public emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    .line 181
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    iget-object v3, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/leidong/open/http/okio/Sink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 182
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-wide v0, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 226
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    iget-object v1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-object v2, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lcom/leidong/open/http/okio/Sink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/Sink;->flush()V

    .line 229
    return-void
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 193
    new-instance v0, Lcom/leidong/open/http/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okio/RealBufferedSink$1;-><init>(Lcom/leidong/open/http/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/Sink;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->sink:Lcom/leidong/open/http/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "byteString"    # Lcom/leidong/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Buffer;

    .line 57
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Source;J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 5
    .param p1, "source"    # Lcom/leidong/open/http/okio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lcom/leidong/open/http/okio/Source;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v0

    .line 117
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 118
    :cond_0
    const/4 v2, 0x0

    sub-long v2, p2, v0

    .line 119
    .end local p2    # "byteCount":J
    .local v2, "byteCount":J
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    .line 120
    .end local v0    # "read":J
    nop

    .line 115
    move-wide p2, v2

    goto :goto_0

    .line 121
    .end local v2    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_1
    return-object p0
.end method

.method public write([B)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->write([B)Lcom/leidong/open/http/okio/Buffer;

    .line 95
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write([BII)Lcom/leidong/open/http/okio/Buffer;

    .line 101
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lcom/leidong/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 51
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    .line 52
    return-void
.end method

.method public writeAll(Lcom/leidong/open/http/okio/Source;)J
    .locals 9
    .param p1, "source"    # Lcom/leidong/open/http/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const-wide/16 v0, 0x0

    .line 107
    .local v0, "totalBytesRead":J
    :goto_0
    iget-object v2, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lcom/leidong/open/http/okio/Source;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v2

    move-wide v4, v2

    .line 107
    .local v4, "readCount":J
    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    .line 108
    add-long v2, v0, v4

    .line 109
    .end local v0    # "totalBytesRead":J
    .local v2, "totalBytesRead":J
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    .line 106
    move-wide v0, v2

    goto :goto_0

    .line 111
    .end local v2    # "totalBytesRead":J
    .end local v4    # "readCount":J
    .restart local v0    # "totalBytesRead":J
    :cond_1
    return-wide v0
.end method

.method public writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    .line 127
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeDecimalLong(J)Lcom/leidong/open/http/okio/Buffer;

    .line 169
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/leidong/open/http/okio/Buffer;

    .line 175
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeInt(I)Lcom/leidong/open/http/okio/Buffer;

    .line 145
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeIntLe(I)Lcom/leidong/open/http/okio/Buffer;

    .line 151
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeLong(J)Lcom/leidong/open/http/okio/Buffer;

    .line 157
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeLongLe(J)Lcom/leidong/open/http/okio/Buffer;

    .line 163
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeShort(I)Lcom/leidong/open/http/okio/Buffer;

    .line 133
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeShortLe(I)Lcom/leidong/open/http/okio/Buffer;

    .line 139
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/leidong/open/http/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;

    .line 89
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;

    .line 82
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/Buffer;

    .line 63
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/Buffer;

    .line 70
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 2
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/RealBufferedSink;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/leidong/open/http/okio/Buffer;

    .line 76
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method
