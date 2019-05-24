.class final Lcom/leidong/open/http/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/leidong/open/http/okio/Timeout;)Lcom/leidong/open/http/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lcom/leidong/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/leidong/open/http/okio/Okio$1;->val$timeout:Lcom/leidong/open/http/okio/Timeout;

    iput-object p2, p0, Lcom/leidong/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 95
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$1;->val$timeout:Lcom/leidong/open/http/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-wide v0, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$1;->val$timeout:Lcom/leidong/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Timeout;->throwIfReached()V

    .line 75
    iget-object v0, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 76
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 77
    iget-object v2, p0, Lcom/leidong/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 79
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v1, v1

    sub-long v3, p2, v1

    .line 81
    iget-wide p2, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v5, p2, v1

    iput-wide v5, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 83
    iget p2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget p3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p2, p3, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p2

    iput-object p2, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 85
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    :cond_0
    move-wide p2, v3

    goto :goto_0

    :cond_1
    return-void
.end method
