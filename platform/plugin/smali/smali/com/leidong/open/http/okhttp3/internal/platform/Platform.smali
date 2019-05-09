.class public Lcom/leidong/open/http/okhttp3/internal/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final INFO:I = 0x4

.field private static final PLATFORM:Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

.field public static final WARN:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->findPlatform()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->PLATFORM:Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    .line 82
    const-class v0, Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Protocol;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 164
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/leidong/open/http/okhttp3/Protocol;

    .line 166
    .local v3, "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    sget-object v4, Lcom/leidong/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/leidong/open/http/okhttp3/Protocol;

    if-ne v3, v4, :cond_0

    .line 166
    .end local v3    # "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    goto :goto_1

    .line 167
    .restart local v3    # "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    :cond_0
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v3    # "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-object v0
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .line 205
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/Protocol;>;"
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 206
    .local v0, "result":Lcom/leidong/open/http/okio/Buffer;
    const/4 v1, 0x0

    .line 206
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 207
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/leidong/open/http/okhttp3/Protocol;

    .line 208
    .local v3, "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    sget-object v4, Lcom/leidong/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/leidong/open/http/okhttp3/Protocol;

    if-ne v3, v4, :cond_0

    .line 208
    .end local v3    # "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    goto :goto_1

    .line 209
    .restart local v3    # "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    :cond_0
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    .line 210
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/Buffer;

    .line 206
    .end local v3    # "protocol":Lcom/leidong/open/http/okhttp3/Protocol;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->readByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static findPlatform()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;
    .locals 4

    .line 178
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/AndroidPlatform;->buildIfSupported()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v0

    .line 180
    .local v0, "android":Lcom/leidong/open/http/okhttp3/internal/platform/Platform;
    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Jdk9Platform;->buildIfSupported()Lcom/leidong/open/http/okhttp3/internal/platform/Jdk9Platform;

    move-result-object v1

    .line 186
    .local v1, "jdk9":Lcom/leidong/open/http/okhttp3/internal/platform/Platform;
    if-eqz v1, :cond_1

    .line 187
    return-object v1

    .line 190
    :cond_1
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/JdkWithJettyBootPlatform;->buildIfSupported()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v2

    .line 192
    .local v2, "jdkWithJettyBoot":Lcom/leidong/open/http/okhttp3/internal/platform/Platform;
    if-eqz v2, :cond_2

    .line 193
    return-object v2

    .line 197
    :cond_2
    new-instance v3, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    invoke-direct {v3}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;-><init>()V

    return-object v3
.end method

.method public static get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;
    .locals 1

    .line 85
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->PLATFORM:Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    return-object v0
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 216
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 216
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 218
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 219
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 221
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 221
    :cond_1
    :goto_1
    return-object v2

    .line 224
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 223
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 226
    nop

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 230
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    const-class v0, Ljava/lang/Object;

    const-string v1, "delegate"

    invoke-static {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "delegate":Ljava/lang/Object;
    if-eqz v0, :cond_3

    invoke-static {v0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 235
    .end local v0    # "delegate":Ljava/lang/Object;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .line 121
    return-void
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lcom/leidong/open/http/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 2
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 173
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;

    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/tls/TrustRootIndex;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/leidong/open/http/okhttp3/internal/tls/TrustRootIndex;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lcom/leidong/open/http/okhttp3/internal/tls/TrustRootIndex;)V

    return-object v0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/Protocol;>;"
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 131
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "closer"    # Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 134
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 135
    .local v0, "logLevel":Ljava/util/logging/Level;
    :goto_0
    sget-object v1, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Object;

    .line 155
    if-nez p2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_0
    const/4 v0, 0x5

    move-object v1, p2

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, v1}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 98
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.security.ssl.SSLContextImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 99
    .local v1, "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "context"

    invoke-static {p1, v1, v2}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    .local v2, "context":Ljava/lang/Object;
    if-nez v2, :cond_0

    return-object v0

    .line 101
    :cond_0
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string v4, "trustManager"

    invoke-static {v2, v3, v4}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 102
    .end local v1    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "context":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method
