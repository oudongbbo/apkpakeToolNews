.class public final Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED_STRING:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([^ \"=]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lcom/leidong/open/http/okhttp3/Headers;)J
    .locals 2

    const-string v0, "Content-Length"

    .line 54
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/leidong/open/http/okhttp3/Response;)J
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/leidong/open/http/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lcom/leidong/open/http/okhttp3/Response;)Z
    .locals 8

    .line 189
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 202
    :cond_2
    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/leidong/open/http/okhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    .line 203
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static hasVaryAll(Lcom/leidong/open/http/okhttp3/Headers;)Z
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/leidong/open/http/okhttp3/Headers;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasVaryAll(Lcom/leidong/open/http/okhttp3/Response;)Z
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lcom/leidong/open/http/okhttp3/Headers;)Z

    move-result p0

    return p0
.end method

.method public static parseChallenges(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x20

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v1, -0x1

    if-ne v7, v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    sget-object v1, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v1, v7

    .line 163
    :goto_1
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    const-string v4, "realm"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 166
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 168
    new-instance p1, Lcom/leidong/open/http/okhttp3/Challenge;

    invoke-direct {p1, v1, v2}, Lcom/leidong/open/http/okhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 3

    .line 243
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, v0

    return p0

    :catch_0
    return p1
.end method

.method public static receiveHeaders(Lcom/leidong/open/http/okhttp3/CookieJar;Lcom/leidong/open/http/okhttp3/HttpUrl;Lcom/leidong/open/http/okhttp3/Headers;)V
    .locals 1

    .line 178
    sget-object v0, Lcom/leidong/open/http/okhttp3/CookieJar;->NO_COOKIES:Lcom/leidong/open/http/okhttp3/CookieJar;

    if-ne p0, v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/Cookie;->parseAll(Lcom/leidong/open/http/okhttp3/HttpUrl;Lcom/leidong/open/http/okhttp3/Headers;)Ljava/util/List;

    move-result-object p2

    .line 181
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 183
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/leidong/open/http/okhttp3/CookieJar;->saveFromResponse(Lcom/leidong/open/http/okhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 215
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2

    .line 228
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method public static varyFields(Lcom/leidong/open/http/okhttp3/Headers;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okhttp3/Headers;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    const-string v4, "Vary"

    .line 102
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    new-instance v3, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    const-string v5, ","

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 109
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static varyFields(Lcom/leidong/open/http/okhttp3/Response;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okhttp3/Response;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/leidong/open/http/okhttp3/Headers;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varyHeaders(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Headers;
    .locals 5

    .line 133
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/leidong/open/http/okhttp3/Headers;)Ljava/util/Set;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->build()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    new-instance v0, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 138
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->build()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static varyHeaders(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Headers;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->networkResponse()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Request;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static varyMatches(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/Request;)Z
    .locals 2

    .line 72
    invoke-static {p0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/leidong/open/http/okhttp3/Response;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/leidong/open/http/okhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
