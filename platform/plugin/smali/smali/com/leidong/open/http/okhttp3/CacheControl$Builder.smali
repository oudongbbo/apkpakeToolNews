.class public final Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 269
    iput v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 270
    iput v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 271
    iput v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lcom/leidong/open/http/okhttp3/CacheControl;
    .locals 1

    .line 352
    new-instance v0, Lcom/leidong/open/http/okhttp3/CacheControl;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/CacheControl;-><init>(Lcom/leidong/open/http/okhttp3/CacheControl$Builder;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 3

    if-gez p1, :cond_0

    .line 295
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxAge < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    int-to-long v0, p1

    .line 296
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 297
    :goto_0
    iput p1, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    return-object p0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 3

    if-gez p1, :cond_0

    .line 311
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    int-to-long v0, p1

    .line 312
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 313
    :goto_0
    iput p1, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return-object p0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 3

    if-gez p1, :cond_0

    .line 328
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minFresh < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    int-to-long v0, p1

    .line 329
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 330
    :goto_0
    iput p1, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-object p0
.end method

.method public noCache()Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->noCache:Z

    return-object p0
.end method

.method public noStore()Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->noStore:Z

    return-object p0
.end method

.method public noTransform()Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->noTransform:Z

    return-object p0
.end method

.method public onlyIfCached()Lcom/leidong/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/CacheControl$Builder;->onlyIfCached:Z

    return-object p0
.end method
