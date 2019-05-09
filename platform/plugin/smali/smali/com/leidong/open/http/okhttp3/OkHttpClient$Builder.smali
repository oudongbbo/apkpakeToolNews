.class public final Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

.field cache:Lcom/leidong/open/http/okhttp3/Cache;

.field certificateChainCleaner:Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

.field certificatePinner:Lcom/leidong/open/http/okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lcom/leidong/open/http/okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lcom/leidong/open/http/okhttp3/CookieJar;

.field dispatcher:Lcom/leidong/open/http/okhttp3/Dispatcher;

.field dns:Lcom/leidong/open/http/okhttp3/Dns;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;

.field proxyAuthenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 454
    new-instance v0, Lcom/leidong/open/http/okhttp3/Dispatcher;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/leidong/open/http/okhttp3/Dispatcher;

    .line 455
    sget-object v0, Lcom/leidong/open/http/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 456
    sget-object v0, Lcom/leidong/open/http/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 457
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 458
    sget-object v0, Lcom/leidong/open/http/okhttp3/CookieJar;->NO_COOKIES:Lcom/leidong/open/http/okhttp3/CookieJar;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/leidong/open/http/okhttp3/CookieJar;

    .line 459
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 460
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/leidong/open/http/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 461
    sget-object v0, Lcom/leidong/open/http/okhttp3/CertificatePinner;->DEFAULT:Lcom/leidong/open/http/okhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/leidong/open/http/okhttp3/CertificatePinner;

    .line 462
    sget-object v0, Lcom/leidong/open/http/okhttp3/Authenticator;->NONE:Lcom/leidong/open/http/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 463
    sget-object v0, Lcom/leidong/open/http/okhttp3/Authenticator;->NONE:Lcom/leidong/open/http/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 464
    new-instance v0, Lcom/leidong/open/http/okhttp3/ConnectionPool;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/leidong/open/http/okhttp3/ConnectionPool;

    .line 465
    sget-object v0, Lcom/leidong/open/http/okhttp3/Dns;->SYSTEM:Lcom/leidong/open/http/okhttp3/Dns;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->dns:Lcom/leidong/open/http/okhttp3/Dns;

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 467
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 468
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 469
    const/16 v0, 0x2710

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 470
    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 471
    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 473
    return-void
.end method

.method constructor <init>(Lcom/leidong/open/http/okhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lcom/leidong/open/http/okhttp3/OkHttpClient;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 476
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->dispatcher:Lcom/leidong/open/http/okhttp3/Dispatcher;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/leidong/open/http/okhttp3/Dispatcher;

    .line 477
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 478
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 479
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 480
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 481
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 483
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->cookieJar:Lcom/leidong/open/http/okhttp3/CookieJar;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/leidong/open/http/okhttp3/CookieJar;

    .line 484
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->internalCache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    .line 485
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->cache:Lcom/leidong/open/http/okhttp3/Cache;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->cache:Lcom/leidong/open/http/okhttp3/Cache;

    .line 486
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 487
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 488
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 489
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 490
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->certificatePinner:Lcom/leidong/open/http/okhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/leidong/open/http/okhttp3/CertificatePinner;

    .line 491
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 492
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->authenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 493
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->connectionPool:Lcom/leidong/open/http/okhttp3/ConnectionPool;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/leidong/open/http/okhttp3/ConnectionPool;

    .line 494
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->dns:Lcom/leidong/open/http/okhttp3/Dns;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->dns:Lcom/leidong/open/http/okhttp3/Dns;

    .line 495
    iget-boolean v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 496
    iget-boolean v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 497
    iget-boolean v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 498
    iget v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 499
    iget v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 500
    iget v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 501
    iget v0, p1, Lcom/leidong/open/http/okhttp3/OkHttpClient;->pingInterval:I

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 502
    return-void
.end method

.method private static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 546
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 549
    .local v2, "millis":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " too large."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_2
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " too small."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_3
    long-to-int v0, v2

    return v0
.end method


# virtual methods
.method public addInterceptor(Lcom/leidong/open/http/okhttp3/Interceptor;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interceptor"    # Lcom/leidong/open/http/okhttp3/Interceptor;

    .line 862
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    return-object p0
.end method

.method public addNetworkInterceptor(Lcom/leidong/open/http/okhttp3/Interceptor;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interceptor"    # Lcom/leidong/open/http/okhttp3/Interceptor;

    .line 876
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    return-object p0
.end method

.method public authenticator(Lcom/leidong/open/http/okhttp3/Authenticator;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 718
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 720
    return-object p0
.end method

.method public build()Lcom/leidong/open/http/okhttp3/OkHttpClient;
    .locals 1

    .line 881
    new-instance v0, Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/OkHttpClient;-><init>(Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lcom/leidong/open/http/okhttp3/Cache;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lcom/leidong/open/http/okhttp3/Cache;

    .line 597
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->cache:Lcom/leidong/open/http/okhttp3/Cache;

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    .line 599
    return-object p0
.end method

.method public certificatePinner(Lcom/leidong/open/http/okhttp3/CertificatePinner;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lcom/leidong/open/http/okhttp3/CertificatePinner;

    .line 706
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/leidong/open/http/okhttp3/CertificatePinner;

    .line 708
    return-object p0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 510
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 511
    return-object p0
.end method

.method public connectionPool(Lcom/leidong/open/http/okhttp3/ConnectionPool;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lcom/leidong/open/http/okhttp3/ConnectionPool;

    .line 741
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/leidong/open/http/okhttp3/ConnectionPool;

    .line 743
    return-object p0
.end method

.method public connectionSpecs(Ljava/util/List;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/ConnectionSpec;",
            ">;)",
            "Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 848
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/ConnectionSpec;>;"
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 849
    return-object p0
.end method

.method public cookieJar(Lcom/leidong/open/http/okhttp3/CookieJar;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lcom/leidong/open/http/okhttp3/CookieJar;

    .line 584
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/leidong/open/http/okhttp3/CookieJar;

    .line 586
    return-object p0
.end method

.method public dispatcher(Lcom/leidong/open/http/okhttp3/Dispatcher;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lcom/leidong/open/http/okhttp3/Dispatcher;

    .line 790
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/leidong/open/http/okhttp3/Dispatcher;

    .line 792
    return-object p0
.end method

.method public dns(Lcom/leidong/open/http/okhttp3/Dns;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lcom/leidong/open/http/okhttp3/Dns;

    .line 608
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->dns:Lcom/leidong/open/http/okhttp3/Dns;

    .line 610
    return-object p0
.end method

.method public followRedirects(Z)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 759
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 760
    return-object p0
.end method

.method public followSslRedirects(Z)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .line 753
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 754
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 695
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 697
    return-object p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 541
    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 542
    return-object p0
.end method

.method public protocols(Ljava/util/List;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Protocol;",
            ">;)",
            "Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 824
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 827
    sget-object v0, Lcom/leidong/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/leidong/open/http/okhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    sget-object v0, Lcom/leidong/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/leidong/open/http/okhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_2
    sget-object v0, Lcom/leidong/open/http/okhttp3/Protocol;->SPDY_3:Lcom/leidong/open/http/okhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    sget-object v0, Lcom/leidong/open/http/okhttp3/Protocol;->SPDY_3:Lcom/leidong/open/http/okhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 843
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 844
    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 560
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 561
    return-object p0
.end method

.method public proxyAuthenticator(Lcom/leidong/open/http/okhttp3/Authenticator;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 730
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/leidong/open/http/okhttp3/Authenticator;

    .line 732
    return-object p0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .line 573
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 574
    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 519
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 520
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .line 782
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 783
    return-object p0
.end method

.method setInternalCache(Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    .line 591
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->cache:Lcom/leidong/open/http/okhttp3/Cache;

    .line 593
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .line 622
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 624
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_0
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 640
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_1

    .line 641
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", sslSocketFactory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_1
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 645
    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v1

    iput-object v1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 646
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 681
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_1
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 684
    invoke-static {p2}, Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 685
    return-object p0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 528
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 529
    return-object p0
.end method