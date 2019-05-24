.class final Lcom/leidong/open/http/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lcom/leidong/open/http/okio/Segment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recycle(Lcom/leidong/open/http/okio/Segment;)V
    .locals 8

    .line 53
    iget-object v0, p0, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/Segment;->shared:Z

    if-eqz v0, :cond_1

    return-void

    .line 55
    :cond_1
    const-class v0, Lcom/leidong/open/http/okio/SegmentPool;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-wide v1, Lcom/leidong/open/http/okio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v1, 0x10000

    cmp-long v7, v5, v1

    if-lez v7, :cond_2

    monitor-exit v0

    return-void

    .line 57
    :cond_2
    sget-wide v1, Lcom/leidong/open/http/okio/SegmentPool;->byteCount:J

    const/4 v5, 0x0

    add-long v5, v1, v3

    sput-wide v5, Lcom/leidong/open/http/okio/SegmentPool;->byteCount:J

    .line 58
    sget-object v1, Lcom/leidong/open/http/okio/SegmentPool;->next:Lcom/leidong/open/http/okio/Segment;

    iput-object v1, p0, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iput v1, p0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 60
    sput-object p0, Lcom/leidong/open/http/okio/SegmentPool;->next:Lcom/leidong/open/http/okio/Segment;

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 53
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static take()Lcom/leidong/open/http/okio/Segment;
    .locals 8

    .line 40
    const-class v0, Lcom/leidong/open/http/okio/SegmentPool;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/leidong/open/http/okio/SegmentPool;->next:Lcom/leidong/open/http/okio/Segment;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/leidong/open/http/okio/SegmentPool;->next:Lcom/leidong/open/http/okio/Segment;

    .line 43
    iget-object v2, v1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    sput-object v2, Lcom/leidong/open/http/okio/SegmentPool;->next:Lcom/leidong/open/http/okio/Segment;

    const/4 v2, 0x0

    .line 44
    iput-object v2, v1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    .line 45
    sget-wide v2, Lcom/leidong/open/http/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long v6, v2, v4

    sput-wide v6, Lcom/leidong/open/http/okio/SegmentPool;->byteCount:J

    .line 46
    monitor-exit v0

    return-object v1

    .line 48
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    new-instance v0, Lcom/leidong/open/http/okio/Segment;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Segment;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
