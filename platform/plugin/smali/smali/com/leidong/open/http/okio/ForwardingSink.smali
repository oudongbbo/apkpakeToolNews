.class public abstract Lcom/leidong/open/http/okio/ForwardingSink;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Sink;


# instance fields
.field private final delegate:Lcom/leidong/open/http/okio/Sink;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okio/Sink;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

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

    .line 51
    iget-object v0, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/Sink;->close()V

    return-void
.end method

.method public final delegate()Lcom/leidong/open/http/okio/Sink;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/Sink;->flush()V

    return-void
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/Sink;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/leidong/open/http/okio/ForwardingSink;->delegate:Lcom/leidong/open/http/okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/Sink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    return-void
.end method
