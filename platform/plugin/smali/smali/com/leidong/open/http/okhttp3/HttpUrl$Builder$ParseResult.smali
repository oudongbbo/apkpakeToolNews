.class final enum Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_HOST:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1284
    new-instance v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1285
    new-instance v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1286
    new-instance v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "UNSUPPORTED_SCHEME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1287
    new-instance v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_PORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1288
    new-instance v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_HOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    const/4 v0, 0x5

    .line 1283
    new-array v0, v0, [Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    sget-object v1, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    .line 1283
    const-class v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object p0
.end method

.method public static values()[Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    .line 1283
    sget-object v0, Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    invoke-virtual {v0}, [Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leidong/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
