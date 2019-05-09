.class Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody$1;
.super Lcom/leidong/open/http/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;Lcom/leidong/open/http/okio/Source;Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;
    .param p2, "delegate"    # Lcom/leidong/open/http/okio/Source;

    .line 750
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lcom/leidong/open/http/okio/ForwardingSource;-><init>(Lcom/leidong/open/http/okio/Source;)V

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

    .line 752
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 753
    invoke-super {p0}, Lcom/leidong/open/http/okio/ForwardingSource;->close()V

    .line 754
    return-void
.end method
