.class final Lcom/leidong/open/http/okhttp3/RequestBody$1;
.super Lcom/leidong/open/http/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/RequestBody;->create(Lcom/leidong/open/http/okhttp3/MediaType;Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/leidong/open/http/okio/ByteString;

.field final synthetic val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/MediaType;Lcom/leidong/open/http/okio/ByteString;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/RequestBody$1;->val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/RequestBody$1;->val$content:Lcom/leidong/open/http/okio/ByteString;

    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RequestBody$1;->val$content:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/leidong/open/http/okhttp3/MediaType;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RequestBody$1;->val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/leidong/open/http/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lcom/leidong/open/http/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RequestBody$1;->val$content:Lcom/leidong/open/http/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/leidong/open/http/okio/BufferedSink;->write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/BufferedSink;

    .line 76
    return-void
.end method
