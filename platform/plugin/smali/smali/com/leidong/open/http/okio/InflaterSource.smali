.class public final Lcom/leidong/open/http/okio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/leidong/open/http/okio/InflaterSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 60
    iput-object p2, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okio/Source;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/leidong/open/http/okio/InflaterSource;-><init>(Lcom/leidong/open/http/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private releaseInflatedBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v1, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 122
    iget v1, p0, Lcom/leidong/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/leidong/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 123
    iget-object v1, p0, Lcom/leidong/open/http/okio/InflaterSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->closed:Z

    .line 134
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_0
    iget-boolean v2, p0, Lcom/leidong/open/http/okio/InflaterSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    return-wide v0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/InflaterSource;->refill()Z

    move-result p2

    const/4 p3, 0x1

    .line 74
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object p3

    .line 75
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v1, p3, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v2, p3, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v3, p3, Lcom/leidong/open/http/okio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    iget p2, p3, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr p2, v0

    iput p2, p3, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 78
    iget-wide p2, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long v2, p2, v0

    iput-wide v2, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-wide v0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_2

    .line 90
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/leidong/open/http/okio/InflaterSource;->releaseInflatedBytes()V

    .line 83
    iget p2, p3, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v0, p3, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p2, v0, :cond_6

    .line 85
    invoke-virtual {p3}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p2

    iput-object p2, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 86
    invoke-static {p3}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public refill()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/leidong/open/http/okio/InflaterSource;->releaseInflatedBytes()V

    .line 106
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 113
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/leidong/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 114
    iget-object v2, p0, Lcom/leidong/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v0, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v4, p0, Lcom/leidong/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/leidong/open/http/okio/InflaterSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
