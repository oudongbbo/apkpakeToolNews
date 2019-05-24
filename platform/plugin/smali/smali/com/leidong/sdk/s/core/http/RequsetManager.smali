.class public Lcom/leidong/sdk/s/core/http/RequsetManager;
.super Ljava/lang/Object;
.source "RequsetManager.java"


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# instance fields
.field private httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

.field private mContext:Landroid/content/Context;

.field private reqUtil:Lcom/leidong/sdk/framework/utils/ReqUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/framework/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    .line 37
    new-instance p1, Lcom/leidong/sdk/framework/utils/ReqUtil;

    invoke-direct {p1}, Lcom/leidong/sdk/framework/utils/ReqUtil;-><init>()V

    iput-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->reqUtil:Lcom/leidong/sdk/framework/utils/ReqUtil;

    return-void
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 312
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x194

    const-string p2, "url\u4e3a\u7a7a"

    .line 313
    invoke-interface {p6, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    return-void

    .line 317
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/http/HttpBean;-><init>()V

    .line 318
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/leidong/sdk/framework/utils/ReqUtil;->addCommonParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 320
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 321
    invoke-virtual {v0, p5}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 323
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    const-string p2, "GET"

    .line 324
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 325
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method

.method private request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x194

    const-string p2, "url\u4e3a\u7a7a"

    .line 343
    invoke-interface {p6, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/http/HttpBean;-><init>()V

    .line 348
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 349
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/leidong/sdk/framework/utils/ReqUtil;->addCommonParamsWithoutDevice(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 350
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 351
    invoke-virtual {v0, p5}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 353
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    const-string p2, "GET"

    .line 354
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method

.method private requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x194

    const-string p2, "url\u4e3a\u7a7a"

    .line 369
    invoke-interface {p6, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/http/HttpBean;-><init>()V

    .line 373
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 374
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/leidong/sdk/framework/utils/ReqUtil;->addSignParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 375
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 376
    invoke-virtual {v0, p5}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 378
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    const-string p2, "GET"

    .line 379
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method

.method private requestNoSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x194

    const-string p2, "url\u4e3a\u7a7a"

    .line 390
    invoke-interface {p6, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    return-void

    .line 394
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/http/HttpBean;-><init>()V

    .line 395
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p3}, Lcom/leidong/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 397
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 398
    invoke-virtual {v0, p5}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 400
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    const-string p2, "GET"

    .line 401
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p6}, Lcom/leidong/sdk/framework/http/HttpManager;->post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public requestAccessTokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V
    .locals 7

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uname"

    .line 86
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "vname"

    .line 87
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uinfo"

    .line 90
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "access_token"

    .line 94
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 95
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestBindInfo(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 7

    .line 258
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uname"

    .line 259
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client"

    const-string v0, "android"

    .line 260
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 261
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    const-string v5, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestFindPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 7

    .line 269
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mobile"

    .line 270
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "new_pwd"

    .line 271
    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "code"

    .line 272
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string p2, "findpwd"

    .line 273
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client"

    const-string p2, "android"

    .line 274
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 276
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestGetRegName(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 8

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "tm"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gid"

    .line 246
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    .line 247
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_id"

    .line 248
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v1, "android"

    .line 249
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 251
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 7

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mobile"

    .line 177
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    .line 178
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "access_token"

    .line 179
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client"

    const-string p2, "android"

    .line 180
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 181
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V
    .locals 7

    .line 43
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uname"

    .line 46
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 48
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uinfo = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    const-string p2, "uinfo"

    .line 56
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u767b\u5f55\u52a0\u5bc6\u51fa\u9519"

    .line 58
    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "leidong_tips_waiting"

    .line 62
    iget-object p2, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    move-object v5, p5

    const-string v1, "POST"

    .line 65
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    move-object v0, p0

    move v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestPayOrder(Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 7

    .line 186
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "amt"

    .line 187
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getMoney()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "goods_name"

    .line 188
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getOrder_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_order_no"

    .line 189
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_ext"

    .line 190
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getOrder_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    .line 191
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getRole_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    .line 192
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getRole_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    .line 193
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getRole_level()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    .line 194
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getServer_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    .line 195
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getServer_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "access_token"

    .line 196
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client"

    const-string v0, "android"

    .line 197
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sdk_ver"

    .line 198
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 201
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V
    .locals 7

    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mobile"

    .line 107
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "uinfo"

    .line 110
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "code"

    .line 115
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 117
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    move-object v0, p0

    move v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestRegVisitor(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 7

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "POST"

    .line 73
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_VISITOR:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestRegisterByName(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 7

    .line 125
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 128
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uname"

    .line 129
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 131
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uinfo = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    const-string p2, "uinfo"

    .line 137
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "POST"

    .line 141
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestRegisterByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 7

    .line 149
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "mobile"

    .line 152
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 154
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uinfo = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    const-string p2, "uinfo"

    .line 160
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "code"

    .line 163
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 167
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestUserAuth(Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 8

    .line 280
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "access_token"

    .line 281
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v1, "android"

    .line 282
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uname"

    .line 283
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tm"

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gid"

    .line 286
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    .line 287
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 289
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    const-string v5, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestUserNoAdultPayMount(Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 7

    .line 296
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "access_token"

    .line 297
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uname"

    .line 298
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v1, "android"

    .line 299
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 301
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    const-string v5, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;)V
    .locals 7

    .line 209
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "run_id"

    .line 210
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action"

    .line 211
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_ver"

    .line 212
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 214
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const-string v5, "submit"

    new-instance v6, Lcom/leidong/sdk/s/core/http/RequsetManager$1;

    invoke-direct {v6, p0, p1}, Lcom/leidong/sdk/s/core/http/RequsetManager$1;-><init>(Lcom/leidong/sdk/s/core/http/RequsetManager;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 7

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "run_id"

    .line 232
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action"

    .line 233
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sdk_ver"

    .line 234
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GET"

    .line 235
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const-string v5, "submit"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
