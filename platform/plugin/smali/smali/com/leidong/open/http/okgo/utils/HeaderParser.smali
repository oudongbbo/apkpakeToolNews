.class public Lcom/leidong/open/http/okgo/utils/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCacheHeaders(Lcom/leidong/open/http/okgo/request/BaseRequest;Lcom/leidong/open/http/okgo/cache/CacheEntity;Lcom/leidong/open/http/okgo/cache/CacheMode;)V
    .locals 7
    .param p0, "request"    # Lcom/leidong/open/http/okgo/request/BaseRequest;
    .param p2, "cacheMode"    # Lcom/leidong/open/http/okgo/cache/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/leidong/open/http/okgo/request/BaseRequest;",
            "Lcom/leidong/open/http/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/leidong/open/http/okgo/cache/CacheMode;",
            ")V"
        }
    .end annotation

    .line 125
    .local p1, "cacheEntity":Lcom/leidong/open/http/okgo/cache/CacheEntity;, "Lcom/leidong/open/http/okgo/cache/CacheEntity<TT;>;"
    if-eqz p1, :cond_1

    sget-object v0, Lcom/leidong/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne p2, v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/leidong/open/http/okgo/model/HttpHeaders;

    move-result-object v0

    .line 127
    .local v0, "responseHeaders":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    if-eqz v0, :cond_1

    .line 128
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "eTag":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "If-None-Match"

    invoke-virtual {p0, v2, v1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okgo/request/BaseRequest;

    .line 130
    :cond_0
    const-string v2, "Last-Modified"

    invoke-virtual {v0, v2}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->getLastModified(Ljava/lang/String;)J

    move-result-wide v2

    .line 131
    .local v2, "lastModified":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v4, "If-Modified-Since"

    invoke-static {v2, v3}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/leidong/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okgo/request/BaseRequest;

    .line 134
    .end local v0    # "responseHeaders":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    .end local v1    # "eTag":Ljava/lang/String;
    .end local v2    # "lastModified":J
    :cond_1
    return-void
.end method

.method public static createCacheEntity(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/Object;Lcom/leidong/open/http/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/leidong/open/http/okgo/cache/CacheEntity;
    .locals 18
    .param p0, "responseHeaders"    # Lcom/leidong/open/http/okhttp3/Headers;
    .param p2, "cacheMode"    # Lcom/leidong/open/http/okgo/cache/CacheMode;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/leidong/open/http/okhttp3/Headers;",
            "TT;",
            "Lcom/leidong/open/http/okgo/cache/CacheMode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leidong/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p1, "data":Ljava/lang/Object;, "TT;"
    move-object/from16 v1, p0

    .line 47
    const-wide/16 v2, 0x0

    .line 49
    .local v2, "localExpire":J
    sget-object v4, Lcom/leidong/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-object/from16 v5, p2

    if-ne v5, v4, :cond_9

    .line 50
    const-string v4, "Date"

    invoke-virtual {v1, v4}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->getDate(Ljava/lang/String;)J

    move-result-wide v6

    .line 51
    .local v6, "date":J
    const-string v4, "Expires"

    invoke-virtual {v1, v4}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->getExpiration(Ljava/lang/String;)J

    move-result-wide v8

    .line 52
    .local v8, "expires":J
    const-string v4, "Cache-Control"

    invoke-virtual {v1, v4}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "Pragma"

    invoke-virtual {v1, v10}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "cacheControl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_0

    cmp-long v10, v8, v12

    if-gtz v10, :cond_0

    return-object v11

    .line 57
    :cond_0
    const-wide/16 v14, 0x0

    .line 58
    .local v14, "maxAge":J
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 59
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v10, v4, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v10, "tokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 61
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "token":Ljava/lang/String;
    const-string v12, "no-cache"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "no-store"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    .line 65
    :cond_1
    const-string v12, "max-age="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 68
    const/16 v12, 0x8

    :try_start_0
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v14, v12

    .line 70
    const-wide/16 v12, 0x0

    cmp-long v17, v14, v12

    if-gtz v17, :cond_2

    const/4 v12, 0x0

    return-object v12

    .line 73
    :cond_2
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 72
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 75
    .end local v11    # "token":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    nop

    .line 59
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 64
    .restart local v11    # "token":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v12, 0x0

    return-object v12

    .line 79
    .end local v10    # "tokens":Ljava/util/StringTokenizer;
    .end local v11    # "token":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 80
    .local v10, "now":J
    const-wide/16 v12, 0x0

    cmp-long v16, v6, v12

    if-lez v16, :cond_6

    move-wide v10, v6

    .line 82
    :cond_6
    cmp-long v16, v14, v12

    if-lez v16, :cond_7

    .line 84
    const-wide/16 v12, 0x3e8

    mul-long v12, v12, v14

    add-long v2, v10, v12

    goto :goto_3

    .line 85
    :cond_7
    cmp-long v16, v8, v12

    if-ltz v16, :cond_8

    .line 87
    move-wide v2, v8

    .line 89
    .end local v4    # "cacheControl":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v8    # "expires":J
    .end local v10    # "now":J
    .end local v14    # "maxAge":J
    :cond_8
    :goto_3
    goto :goto_4

    .line 90
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    :goto_4
    new-instance v4, Lcom/leidong/open/http/okgo/model/HttpHeaders;

    invoke-direct {v4}, Lcom/leidong/open/http/okgo/model/HttpHeaders;-><init>()V

    .line 95
    .local v4, "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 96
    .local v7, "headerName":Ljava/lang/String;
    invoke-virtual {v1, v7}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v7    # "headerName":Ljava/lang/String;
    goto :goto_5

    .line 100
    :cond_a
    new-instance v6, Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-direct {v6}, Lcom/leidong/open/http/okgo/cache/CacheEntity;-><init>()V

    .line 101
    .local v6, "cacheEntity":Lcom/leidong/open/http/okgo/cache/CacheEntity;, "Lcom/leidong/open/http/okgo/cache/CacheEntity<TT;>;"
    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 102
    move-object/from16 v8, p1

    invoke-virtual {v6, v8}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->setData(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v6, v2, v3}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->setLocalExpire(J)V

    .line 104
    invoke-virtual {v6, v4}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->setResponseHeaders(Lcom/leidong/open/http/okgo/model/HttpHeaders;)V

    .line 105
    return-object v6
.end method
