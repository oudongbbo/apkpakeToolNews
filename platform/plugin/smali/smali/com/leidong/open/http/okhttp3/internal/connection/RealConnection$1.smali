.class Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection$1;
.super Lcom/leidong/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/leidong/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;ZLcom/leidong/open/http/okio/BufferedSource;Lcom/leidong/open/http/okio/BufferedSink;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;
    .param p2, "client"    # Z
    .param p3, "source"    # Lcom/leidong/open/http/okio/BufferedSource;
    .param p4, "sink"    # Lcom/leidong/open/http/okio/BufferedSink;

    .line 398
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection$1;->this$0:Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Lcom/leidong/open/http/okhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLcom/leidong/open/http/okio/BufferedSource;Lcom/leidong/open/http/okio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->codec()Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLcom/leidong/open/http/okhttp3/internal/http/HttpCodec;)V

    .line 401
    return-void
.end method
