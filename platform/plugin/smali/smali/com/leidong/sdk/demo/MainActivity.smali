.class public Lcom/leidong/sdk/demo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private appkey:Ljava/lang/String;

.field times:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "fWaptYonECeI2Vzu30ySPDTXJ"

    .line 25
    iput-object v0, p0, Lcom/leidong/sdk/demo/MainActivity;->appkey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 244
    iput v0, p0, Lcom/leidong/sdk/demo/MainActivity;->times:I

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/demo/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/LeiMsdk;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f05000e

    const-wide/16 v1, 0x3e8

    if-eq p1, v0, :cond_2

    const v0, 0x7f050017

    if-eq p1, v0, :cond_1

    const v0, 0x7f0500f1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 325
    :pswitch_0
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->userSwitch(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 360
    :pswitch_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "money"

    const-string v3, "0"

    .line 361
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_no"

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_name"

    const-string v1, "\u4e0d\u5b9a\u989d\u5145\u503c"

    .line 363
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_ext"

    const-string v1, "\u6d4b\u8bd5\u6570\u636e"

    .line 364
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v1, "007"

    .line 365
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v1, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    .line 366
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v1, "88"

    .line 367
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    const-string v1, "001"

    .line 368
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v1, "\u5f00\u5929\u8f9f\u5730"

    .line 369
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 340
    :pswitch_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "money"

    const-string v3, "0.01"

    .line 341
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_no"

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_name"

    const-string v1, "\u4e00\u6bdb\u94b1\u7684\u5546\u54c1"

    .line 343
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "order_ext"

    const-string v1, "\u6d4b\u8bd5\u6570\u636e"

    .line 344
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v1, "007"

    .line 345
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v1, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    .line 346
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v1, "88"

    .line 347
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    const-string v1, "001"

    .line 348
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v1, "\u5f00\u5929\u8f9f\u5730"

    .line 349
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 332
    :pswitch_3
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->userLogout(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 314
    :pswitch_4
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->userLogin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 443
    :pswitch_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 444
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 445
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 446
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 447
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 448
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u65e0"

    .line 449
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u65e0"

    .line 451
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "7"

    .line 452
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "10000"

    .line 453
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "1000"

    .line 454
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 455
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u82b1\u679c\u5c71"

    .line 456
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 457
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->roleLevelUp(Ljava/util/HashMap;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u5347\u7ea7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :pswitch_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 417
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 418
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 419
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 420
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 421
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u65e0"

    .line 422
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u7537"

    .line 424
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "1"

    .line 425
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "10"

    .line 426
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "100"

    .line 427
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 428
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u82b1\u679c\u5c71"

    .line 429
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 430
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->roleEnterGame(Ljava/util/HashMap;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fdb\u5165\u6e38\u620f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :pswitch_7
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->doExitGame(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 527
    :pswitch_8
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->openUserSuperVip(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 519
    :pswitch_9
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/leidong/sdk/m/LeiMsdk;->openUserNameAuth(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 511
    :pswitch_a
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->openSdkCustomerService(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 470
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 471
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 472
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 474
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 475
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u9f50\u5929\u5927\u5723"

    .line 476
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 477
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u7537"

    .line 480
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "10"

    .line 481
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "10000"

    .line 482
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "999"

    .line 483
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 484
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u82b1\u679c\u5c71"

    .line 485
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 486
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->roleChangeName(Ljava/util/HashMap;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u6362\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :cond_1
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getSdkVer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u6e38\u620f\u53c2\u6570\uff1a\n gid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n pid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n mid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n sdkver="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "server_id"

    const-string v3, "001"

    .line 392
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v3, "\u534e\u590f\u4e00\u670d"

    .line 393
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v3, "1"

    .line 394
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v3, "1"

    .line 395
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v3, "\u5b59\u609f\u7a7a"

    .line 396
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_oldname"

    const-string v3, "\u65e0"

    .line 397
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_createtime"

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_gender"

    const-string v1, "\u7537"

    .line 399
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_vip"

    const-string v1, "0"

    .line 400
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_balance"

    const-string v1, "0"

    .line 401
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_fightvalue"

    const-string v1, "0"

    .line 402
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_profession"

    const-string v1, "\u6218\u58eb"

    .line 403
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_partyname"

    const-string v1, "\u65e0"

    .line 404
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_extra"

    const-string v1, "\u65e0"

    .line 405
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->roleCreate(Ljava/util/HashMap;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521b\u5efa\u89d2\u8272:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0500e4
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0500eb
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0500fc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f060000

    .line 34
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/demo/MainActivity;->appkey:Ljava/lang/String;

    new-instance v1, Lcom/leidong/sdk/demo/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/demo/MainActivity$1;-><init>(Lcom/leidong/sdk/demo/MainActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/leidong/sdk/m/LeiMsdk;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    const p1, 0x7f0500fd

    .line 147
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f050101

    .line 148
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500ff

    .line 149
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f050100

    .line 150
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500eb

    .line 151
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f05000e

    .line 152
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500ec

    .line 153
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500fc

    .line 154
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500f1

    .line 155
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500fe

    .line 156
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f050017

    .line 157
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500e4

    .line 158
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500e5

    .line 159
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0500e6

    .line 160
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 537
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->doExitGame(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    .line 540
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 212
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 176
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 170
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 194
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onStop()V

    return-void
.end method
