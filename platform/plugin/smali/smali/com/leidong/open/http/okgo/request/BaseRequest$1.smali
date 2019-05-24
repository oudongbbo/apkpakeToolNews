.class Lcom/leidong/open/http/okgo/request/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okgo/request/BaseRequest;->wrapRequestBody(Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okgo/request/BaseRequest;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okgo/request/BaseRequest;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/leidong/open/http/okgo/request/BaseRequest$1;->this$0:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestProgress(JJJ)V
    .locals 10

    .line 326
    invoke-static {}, Lcom/leidong/open/http/okgo/OkGo;->getInstance()Lcom/leidong/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/leidong/open/http/okgo/request/BaseRequest$1$1;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/leidong/open/http/okgo/request/BaseRequest$1$1;-><init>(Lcom/leidong/open/http/okgo/request/BaseRequest$1;JJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
