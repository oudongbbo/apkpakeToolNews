.class Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor$1;
.super Lcom/leidong/open/http/okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lcom/leidong/open/http/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;Lcom/leidong/open/http/okio/Sink;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/leidong/open/http/okhttp3/internal/cache/FaultHidingSink;-><init>(Lcom/leidong/open/http/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 1

    .line 907
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    iget-object p1, p1, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache;

    monitor-enter p1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    .line 909
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
