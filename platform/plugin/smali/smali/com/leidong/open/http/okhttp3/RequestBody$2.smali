.class final Lcom/leidong/open/http/okhttp3/RequestBody$2;
.super Lcom/leidong/open/http/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/RequestBody;->create(Lcom/leidong/open/http/okhttp3/MediaType;[BII)Lcom/leidong/open/http/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/MediaType;I[BI)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

    iput p2, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$content:[B

    iput p4, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 96
    iget v0, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/leidong/open/http/okhttp3/MediaType;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/leidong/open/http/okio/BufferedSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$content:[B

    iget v1, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$offset:I

    iget v2, p0, Lcom/leidong/open/http/okhttp3/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->write([BII)Lcom/leidong/open/http/okio/BufferedSink;

    return-void
.end method
