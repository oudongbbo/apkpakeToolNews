.class Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lcom/leidong/open/http/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;Lcom/leidong/open/http/okio/BufferedSource;Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;Lcom/leidong/open/http/okio/BufferedSink;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/leidong/open/http/okio/BufferedSource;

    iput-object p3, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 211
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    invoke-static {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/Util;->discard(Lcom/leidong/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 214
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/leidong/open/http/okio/BufferedSource;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 194
    iget-boolean p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    .line 195
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 196
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {p1}, Lcom/leidong/open/http/okio/BufferedSink;->close()V

    :cond_0
    return-wide v1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/leidong/open/http/okio/Buffer;->copyTo(Lcom/leidong/open/http/okio/Buffer;JJ)Lcom/leidong/open/http/okio/Buffer;

    .line 202
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {p1}, Lcom/leidong/open/http/okio/BufferedSink;->emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;

    return-wide p2

    :catch_0
    move-exception p1

    .line 186
    iget-boolean p2, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    .line 187
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 188
    iget-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

    invoke-interface {p2}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 190
    :cond_2
    throw p1
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
