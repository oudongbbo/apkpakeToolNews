.class abstract Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .line 344
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance p1, Lcom/leidong/open/http/okio/ForwardingTimeout;

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/open/http/okio/ForwardingTimeout;-><init>(Lcom/leidong/open/http/okio/Timeout;)V

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget v1, v1, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;

    invoke-virtual {v0, v2}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lcom/leidong/open/http/okio/ForwardingTimeout;)V

    .line 362
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iput v1, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 363
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    invoke-virtual {v0, p1, v1}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLcom/leidong/open/http/okhttp3/internal/http/HttpCodec;)V

    :cond_2
    return-void
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lcom/leidong/open/http/okio/ForwardingTimeout;

    return-object v0
.end method
