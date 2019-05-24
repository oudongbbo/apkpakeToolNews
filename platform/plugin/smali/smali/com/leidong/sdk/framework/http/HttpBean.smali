.class public Lcom/leidong/sdk/framework/http/HttpBean;
.super Ljava/lang/Object;
.source "HttpBean.java"


# instance fields
.field private isLoading:Z

.field private loadingText:Ljava/lang/String;

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpBean;->loadingText:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpBean;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpBean;->reqUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/http/HttpBean;->isLoading:Z

    return v0
.end method

.method public setLoading(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/http/HttpBean;->isLoading:Z

    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/leidong/sdk/framework/http/HttpBean;->loadingText:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/leidong/sdk/framework/http/HttpBean;->params:Ljava/util/HashMap;

    return-void
.end method

.method public setReqUrl(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/leidong/sdk/framework/http/HttpBean;->reqUrl:Ljava/lang/String;

    return-void
.end method
