.class public final Lcom/leidong/open/http/okhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lcom/leidong/open/http/okhttp3/RequestBody;

.field final headers:Lcom/leidong/open/http/okhttp3/Headers;


# direct methods
.method private constructor <init>(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/RequestBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/leidong/open/http/okhttp3/Headers;
    .param p2, "body"    # Lcom/leidong/open/http/okhttp3/RequestBody;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->headers:Lcom/leidong/open/http/okhttp3/Headers;

    .line 266
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->body:Lcom/leidong/open/http/okhttp3/RequestBody;

    .line 267
    return-void
.end method

.method public static create(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;
    .locals 2
    .param p0, "headers"    # Lcom/leidong/open/http/okhttp3/Headers;
    .param p1, "body"    # Lcom/leidong/open/http/okhttp3/RequestBody;

    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    new-instance v0, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;-><init>(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/RequestBody;)V

    return-object v0
.end method

.method public static create(Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;
    .locals 1
    .param p0, "body"    # Lcom/leidong/open/http/okhttp3/RequestBody;

    .line 226
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->create(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/leidong/open/http/okhttp3/RequestBody;->create(Lcom/leidong/open/http/okhttp3/MediaType;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/RequestBody;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/leidong/open/http/okhttp3/RequestBody;

    .line 247
    if-nez p0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/leidong/open/http/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    if-eqz p1, :cond_1

    .line 254
    const-string v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {v0, p1}, Lcom/leidong/open/http/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Disposition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/Headers;->of([Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->create(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/MultipartBody$Part;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public body()Lcom/leidong/open/http/okhttp3/RequestBody;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->body:Lcom/leidong/open/http/okhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Lcom/leidong/open/http/okhttp3/Headers;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/MultipartBody$Part;->headers:Lcom/leidong/open/http/okhttp3/Headers;

    return-object v0
.end method
