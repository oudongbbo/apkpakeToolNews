.class final Lcom/leidong/open/http/okio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okio/Okio;->blackhole()Lcom/leidong/open/http/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 207
    sget-object v0, Lcom/leidong/open/http/okio/Timeout;->NONE:Lcom/leidong/open/http/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    return-void
.end method
