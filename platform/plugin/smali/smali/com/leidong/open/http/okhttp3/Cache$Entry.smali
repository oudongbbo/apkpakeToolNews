.class final Lcom/leidong/open/http/okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lcom/leidong/open/http/okhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/leidong/open/http/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/leidong/open/http/okhttp3/Response;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Request;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 596
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 597
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->protocol()Lcom/leidong/open/http/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    .line 599
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->code:I

    .line 600
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 602
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->handshake()Lcom/leidong/open/http/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    .line 603
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 604
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 605
    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okio/Source;)V
    .locals 18
    .param p1, "in"    # Lcom/leidong/open/http/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object v2

    .line 543
    .local v2, "source":Lcom/leidong/open/http/okio/BufferedSource;
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 544
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 545
    new-instance v3, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {v3}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 546
    .local v3, "varyHeadersBuilder":Lcom/leidong/open/http/okhttp3/Headers$Builder;
    invoke-static {v2}, Lcom/leidong/open/http/okhttp3/Cache;->readInt(Lcom/leidong/open/http/okio/BufferedSource;)I

    move-result v4

    .line 547
    .local v4, "varyRequestHeaderLineCount":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 547
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 548
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 550
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->build()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v6

    iput-object v6, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 552
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;

    move-result-object v6

    .line 553
    .local v6, "statusLine":Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;
    iget-object v7, v6, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    iput-object v7, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    .line 554
    iget v7, v6, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->code:I

    iput v7, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->code:I

    .line 555
    iget-object v7, v6, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v7, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 556
    new-instance v7, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {v7}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 557
    .local v7, "responseHeadersBuilder":Lcom/leidong/open/http/okhttp3/Headers$Builder;
    invoke-static {v2}, Lcom/leidong/open/http/okhttp3/Cache;->readInt(Lcom/leidong/open/http/okio/BufferedSource;)I

    move-result v8

    .line 558
    .local v8, "responseHeaderLineCount":I
    nop

    .line 558
    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 559
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    .line 558
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 561
    .end local v5    # "i":I
    :cond_1
    sget-object v5, Lcom/leidong/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, "sendRequestMillisString":Ljava/lang/String;
    sget-object v9, Lcom/leidong/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 563
    .local v9, "receivedResponseMillisString":Ljava/lang/String;
    sget-object v10, Lcom/leidong/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    .line 564
    sget-object v10, Lcom/leidong/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Headers$Builder;

    .line 565
    const-wide/16 v10, 0x0

    if-eqz v5, :cond_2

    .line 566
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_2

    :cond_2
    move-wide v12, v10

    :goto_2
    iput-wide v12, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 568
    if-eqz v9, :cond_3

    .line 569
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    nop

    :cond_3
    iput-wide v10, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 571
    invoke-virtual {v7}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->build()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v10

    iput-object v10, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/leidong/open/http/okhttp3/Cache$Entry;->isHttps()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    .line 574
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    .line 575
    .local v10, "blank":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 576
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "expected \"\" but was \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 578
    :cond_4
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v12

    .line 579
    .local v12, "cipherSuiteString":Ljava/lang/String;
    invoke-static {v12}, Lcom/leidong/open/http/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/CipherSuite;

    move-result-object v13

    .line 580
    .local v13, "cipherSuite":Lcom/leidong/open/http/okhttp3/CipherSuite;
    invoke-direct {v1, v2}, Lcom/leidong/open/http/okhttp3/Cache$Entry;->readCertificateList(Lcom/leidong/open/http/okio/BufferedSource;)Ljava/util/List;

    move-result-object v14

    .line 581
    .local v14, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {v1, v2}, Lcom/leidong/open/http/okhttp3/Cache$Entry;->readCertificateList(Lcom/leidong/open/http/okio/BufferedSource;)Ljava/util/List;

    move-result-object v15

    .line 582
    .local v15, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->exhausted()Z

    move-result v16

    if-nez v16, :cond_5

    .line 583
    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/leidong/open/http/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/TlsVersion;

    move-result-object v11

    nop

    .line 585
    .local v11, "tlsVersion":Lcom/leidong/open/http/okhttp3/TlsVersion;
    :cond_5
    move-object/from16 v17, v2

    invoke-static {v11, v13, v14, v15}, Lcom/leidong/open/http/okhttp3/Handshake;->get(Lcom/leidong/open/http/okhttp3/TlsVersion;Lcom/leidong/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lcom/leidong/open/http/okhttp3/Handshake;

    move-result-object v2

    .line 585
    .end local v2    # "source":Lcom/leidong/open/http/okio/BufferedSource;
    .local v17, "source":Lcom/leidong/open/http/okio/BufferedSource;
    iput-object v2, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    .line 586
    .end local v10    # "blank":Ljava/lang/String;
    .end local v11    # "tlsVersion":Lcom/leidong/open/http/okhttp3/TlsVersion;
    .end local v12    # "cipherSuiteString":Ljava/lang/String;
    .end local v13    # "cipherSuite":Lcom/leidong/open/http/okhttp3/CipherSuite;
    .end local v14    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v15    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_3

    .line 587
    .end local v17    # "source":Lcom/leidong/open/http/okio/BufferedSource;
    .restart local v2    # "source":Lcom/leidong/open/http/okio/BufferedSource;
    :cond_6
    move-object/from16 v17, v2

    .line 587
    .end local v2    # "source":Lcom/leidong/open/http/okio/BufferedSource;
    .restart local v17    # "source":Lcom/leidong/open/http/okio/BufferedSource;
    iput-object v11, v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v3    # "varyHeadersBuilder":Lcom/leidong/open/http/okhttp3/Headers$Builder;
    .end local v4    # "varyRequestHeaderLineCount":I
    .end local v5    # "sendRequestMillisString":Ljava/lang/String;
    .end local v6    # "statusLine":Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;
    .end local v7    # "responseHeadersBuilder":Lcom/leidong/open/http/okhttp3/Headers$Builder;
    .end local v8    # "responseHeaderLineCount":I
    .end local v9    # "receivedResponseMillisString":Ljava/lang/String;
    .end local v17    # "source":Lcom/leidong/open/http/okio/BufferedSource;
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/leidong/open/http/okio/Source;->close()V

    .line 591
    nop

    .line 592
    return-void

    .line 590
    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface/range {p1 .. p1}, Lcom/leidong/open/http/okio/Source;->close()V

    throw v2
.end method

.method private isHttps()Z
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lcom/leidong/open/http/okio/BufferedSource;)Ljava/util/List;
    .locals 7
    .param p1, "source"    # Lcom/leidong/open/http/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/Cache;->readInt(Lcom/leidong/open/http/okio/BufferedSource;)I

    move-result v0

    .line 663
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 666
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 667
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .line 668
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 669
    invoke-interface {p1}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v5}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 671
    .local v5, "bytes":Lcom/leidong/open/http/okio/Buffer;
    invoke-static {v4}, Lcom/leidong/open/http/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Buffer;

    .line 672
    invoke-virtual {v5}, Lcom/leidong/open/http/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytes":Lcom/leidong/open/http/okio/Buffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 675
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeCertList(Lcom/leidong/open/http/okio/BufferedSink;Ljava/util/List;)V
    .locals 6
    .param p1, "sink"    # Lcom/leidong/open/http/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    .line 684
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 685
    const/4 v0, 0x0

    .line 685
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 685
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 686
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 687
    .local v3, "bytes":[B
    invoke-static {v3}, Lcom/leidong/open/http/okio/ByteString;->of([B)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/leidong/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "line":Ljava/lang/String;
    invoke-interface {p1, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v5

    .line 689
    invoke-interface {v5, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    nop

    .line 694
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public matches(Lcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/Response;)Z
    .locals 2
    .param p1, "request"    # Lcom/leidong/open/http/okhttp3/Request;
    .param p2, "response"    # Lcom/leidong/open/http/okhttp3/Response;

    .line 697
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Request;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 699
    invoke-static {p2, v0, p1}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->varyMatches(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0
.end method

.method public response(Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 6
    .param p1, "snapshot"    # Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 703
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v2, Lcom/leidong/open/http/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/leidong/open/http/okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 706
    invoke-virtual {v2, v3}, Lcom/leidong/open/http/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 707
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/leidong/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 708
    invoke-virtual {v2, v3}, Lcom/leidong/open/http/okhttp3/Request$Builder;->headers(Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Lcom/leidong/open/http/okhttp3/Request$Builder;->build()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v2

    .line 710
    .local v2, "cacheRequest":Lcom/leidong/open/http/okhttp3/Request;
    new-instance v3, Lcom/leidong/open/http/okhttp3/Response$Builder;

    invoke-direct {v3}, Lcom/leidong/open/http/okhttp3/Response$Builder;-><init>()V

    .line 711
    invoke-virtual {v3, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->request(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    .line 712
    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/Response$Builder;->protocol(Lcom/leidong/open/http/okhttp3/Protocol;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->code:I

    .line 713
    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/Response$Builder;->code(I)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 714
    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 715
    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers(Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    new-instance v4, Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v4, p1, v0, v1}, Lcom/leidong/open/http/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/Response$Builder;->body(Lcom/leidong/open/http/okhttp3/ResponseBody;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    .line 717
    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/Response$Builder;->handshake(Lcom/leidong/open/http/okhttp3/Handshake;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 718
    invoke-virtual {v3, v4, v5}, Lcom/leidong/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 719
    invoke-virtual {v3, v4, v5}, Lcom/leidong/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v3

    .line 720
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v3

    .line 710
    return-object v3
.end method

.method public writeTo(Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 6
    .param p1, "editor"    # Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lcom/leidong/open/http/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Sink;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    .line 610
    .local v0, "sink":Lcom/leidong/open/http/okio/BufferedSink;
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 611
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 612
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 613
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 614
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 615
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 616
    const/4 v1, 0x0

    .line 616
    .local v1, "i":I
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v3

    .line 616
    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 617
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v4, v1}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    .line 618
    invoke-interface {v4, v5}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 619
    invoke-virtual {v5, v1}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v4

    .line 620
    invoke-interface {v4, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    iget v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->code:I

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;-><init>(Lcom/leidong/open/http/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 624
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 625
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 626
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 627
    const/4 v1, 0x0

    .line 627
    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v3

    .line 627
    .restart local v3    # "size":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 628
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-virtual {v4, v1}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    .line 629
    invoke-interface {v4, v5}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/leidong/open/http/okhttp3/Headers;

    .line 630
    invoke-virtual {v5, v1}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v4

    .line 631
    invoke-interface {v4, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    sget-object v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    const-string v3, ": "

    .line 634
    invoke-interface {v1, v3}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 635
    invoke-interface {v1, v3, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 636
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 637
    sget-object v1, Lcom/leidong/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    const-string v3, ": "

    .line 638
    invoke-interface {v1, v3}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 639
    invoke-interface {v1, v3, v4}, Lcom/leidong/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 640
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 642
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    invoke-interface {v0, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 644
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Handshake;->cipherSuite()Lcom/leidong/open/http/okhttp3/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 645
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 646
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/Cache$Entry;->writeCertList(Lcom/leidong/open/http/okio/BufferedSink;Ljava/util/List;)V

    .line 647
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/Cache$Entry;->writeCertList(Lcom/leidong/open/http/okio/BufferedSink;Ljava/util/List;)V

    .line 649
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Handshake;->tlsVersion()Lcom/leidong/open/http/okhttp3/TlsVersion;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/Cache$Entry;->handshake:Lcom/leidong/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Handshake;->tlsVersion()Lcom/leidong/open/http/okhttp3/TlsVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 651
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;

    .line 654
    :cond_2
    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->close()V

    .line 655
    return-void
.end method
