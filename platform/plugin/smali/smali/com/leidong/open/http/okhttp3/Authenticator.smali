.class public interface abstract Lcom/leidong/open/http/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lcom/leidong/open/http/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/leidong/open/http/okhttp3/Authenticator$1;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lcom/leidong/open/http/okhttp3/Authenticator;->NONE:Lcom/leidong/open/http/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/leidong/open/http/okhttp3/Route;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
