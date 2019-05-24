.class public Lcom/leidong/open/http/okhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lcom/leidong/open/http/okhttp3/ResponseBody;

.field cacheResponse:Lcom/leidong/open/http/okhttp3/Response;

.field code:I

.field handshake:Lcom/leidong/open/http/okhttp3/Handshake;

.field headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lcom/leidong/open/http/okhttp3/Response;

.field priorResponse:Lcom/leidong/open/http/okhttp3/Response;

.field protocol:Lcom/leidong/open/http/okhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Lcom/leidong/open/http/okhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->code:I

    .line 304
    new-instance v0, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 2

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->code:I

    .line 308
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->request:Lcom/leidong/open/http/okhttp3/Request;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->request:Lcom/leidong/open/http/okhttp3/Request;

    .line 309
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    .line 310
    iget v0, p1, Lcom/leidong/open/http/okhttp3/Response;->code:I

    iput v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->code:I

    .line 311
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    .line 313
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->headers:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Headers;->newBuilder()Lcom/leidong/open/http/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

    .line 314
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->body:Lcom/leidong/open/http/okhttp3/ResponseBody;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->body:Lcom/leidong/open/http/okhttp3/ResponseBody;

    .line 315
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->networkResponse:Lcom/leidong/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->networkResponse:Lcom/leidong/open/http/okhttp3/Response;

    .line 316
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->cacheResponse:Lcom/leidong/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->cacheResponse:Lcom/leidong/open/http/okhttp3/Response;

    .line 317
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/Response;->priorResponse:Lcom/leidong/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->priorResponse:Lcom/leidong/open/http/okhttp3/Response;

    .line 318
    iget-wide v0, p1, Lcom/leidong/open/http/okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 319
    iget-wide v0, p1, Lcom/leidong/open/http/okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 1

    .line 412
    iget-object p1, p1, Lcom/leidong/open/http/okhttp3/Response;->body:Lcom/leidong/open/http/okhttp3/ResponseBody;

    if-eqz p1, :cond_0

    .line 413
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 1

    .line 394
    iget-object v0, p2, Lcom/leidong/open/http/okhttp3/Response;->body:Lcom/leidong/open/http/okhttp3/ResponseBody;

    if-eqz v0, :cond_0

    .line 395
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 396
    :cond_0
    iget-object v0, p2, Lcom/leidong/open/http/okhttp3/Response;->networkResponse:Lcom/leidong/open/http/okhttp3/Response;

    if-eqz v0, :cond_1

    .line 397
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 398
    :cond_1
    iget-object v0, p2, Lcom/leidong/open/http/okhttp3/Response;->cacheResponse:Lcom/leidong/open/http/okhttp3/Response;

    if-eqz v0, :cond_2

    .line 399
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 400
    :cond_2
    iget-object p2, p2, Lcom/leidong/open/http/okhttp3/Response;->priorResponse:Lcom/leidong/open/http/okhttp3/Response;

    if-eqz p2, :cond_3

    .line 401
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Lcom/leidong/open/http/okhttp3/ResponseBody;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->body:Lcom/leidong/open/http/okhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Lcom/leidong/open/http/okhttp3/Response;
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->request:Lcom/leidong/open/http/okhttp3/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1
    iget v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->code:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    new-instance v0, Lcom/leidong/open/http/okhttp3/Response;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/Response;-><init>(Lcom/leidong/open/http/okhttp3/Response$Builder;)V

    return-object v0
.end method

.method public cacheResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 388
    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/leidong/open/http/okhttp3/Response;)V

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->cacheResponse:Lcom/leidong/open/http/okhttp3/Response;

    return-object p0
.end method

.method public code(I)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 333
    iput p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Lcom/leidong/open/http/okhttp3/Handshake;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 372
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Headers;->newBuilder()Lcom/leidong/open/http/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 382
    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/leidong/open/http/okhttp3/Response;)V

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->networkResponse:Lcom/leidong/open/http/okhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->checkPriorResponse(Lcom/leidong/open/http/okhttp3/Response;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->priorResponse:Lcom/leidong/open/http/okhttp3/Response;

    return-object p0
.end method

.method public protocol(Lcom/leidong/open/http/okhttp3/Protocol;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 423
    iput-wide p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers:Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public request(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->request:Lcom/leidong/open/http/okhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 0

    .line 418
    iput-wide p1, p0, Lcom/leidong/open/http/okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
