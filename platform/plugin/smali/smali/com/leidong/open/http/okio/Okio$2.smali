.class final Lcom/leidong/open/http/okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okio/Okio;->source(Ljava/io/InputStream;Lcom/leidong/open/http/okio/Timeout;)Lcom/leidong/open/http/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lcom/leidong/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okio/Timeout;Ljava/io/InputStream;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/leidong/open/http/okio/Okio$2;->val$timeout:Lcom/leidong/open/http/okio/Timeout;

    iput-object p2, p0, Lcom/leidong/open/http/okio/Okio$2;->val$in:Ljava/io/InputStream;

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

    .line 149
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 150
    return-void
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 9
    .param p1, "sink"    # Lcom/leidong/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-wide v0

    .line 134
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$2;->val$timeout:Lcom/leidong/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Timeout;->throwIfReached()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    .line 136
    .local v0, "tail":Lcom/leidong/open/http/okio/Segment;
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 137
    .local v1, "maxToCopy":I
    iget-object v2, p0, Lcom/leidong/open/http/okio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 138
    .local v2, "bytesRead":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-wide/16 v3, -0x1

    return-wide v3

    .line 139
    :cond_2
    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 140
    iget-wide v3, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long v7, v3, v5

    iput-wide v7, p1, Lcom/leidong/open/http/okio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    int-to-long v3, v2

    return-wide v3

    .line 142
    .end local v0    # "tail":Lcom/leidong/open/http/okio/Segment;
    .end local v1    # "maxToCopy":I
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lcom/leidong/open/http/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :cond_3
    throw v0
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/leidong/open/http/okio/Okio$2;->val$timeout:Lcom/leidong/open/http/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
