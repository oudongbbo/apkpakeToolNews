.class public final Lcom/leidong/open/http/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/leidong/open/http/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    .line 55
    iput-object p2, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Sink;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/leidong/open/http/okio/DeflaterSink;-><init>(Lcom/leidong/open/http/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private deflate(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v4, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v5, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    .line 92
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v4, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v5, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    .line 93
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    .line 96
    iget v3, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 97
    iget-wide v3, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v1, v2

    add-long v5, v3, v1

    iput-wide v5, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 98
    iget-object v1, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    goto :goto_0

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget p1, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v2, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p1, v2, :cond_3

    .line 102
    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p1

    iput-object p1, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 103
    invoke-static {v1}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 139
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcom/leidong/open/http/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_3

    .line 145
    invoke-static {v0}, Lcom/leidong/open/http/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okio/DeflaterSink;->deflate(Z)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okio/DeflaterSink;->deflate(Z)V

    .line 112
    iget-object v0, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okio/DeflaterSink;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-wide v0, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 62
    iget-object v0, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 63
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 64
    iget-object v2, p0, Lcom/leidong/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, v2}, Lcom/leidong/open/http/okio/DeflaterSink;->deflate(Z)V

    .line 70
    iget-wide v2, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long v6, v2, v4

    iput-wide v6, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 71
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 72
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 74
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    :cond_0
    const/4 v0, 0x0

    sub-long v0, p2, v4

    move-wide p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
