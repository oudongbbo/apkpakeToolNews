.class Lcom/leidong/open/http/okhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/Cache;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/Cache;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Cache;->get(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Cache;->put(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lcom/leidong/open/http/okhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Cache;->remove(Lcom/leidong/open/http/okhttp3/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method public trackResponse(Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Cache;->trackResponse(Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okhttp3/Cache;->update(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Response;)V

    return-void
.end method
