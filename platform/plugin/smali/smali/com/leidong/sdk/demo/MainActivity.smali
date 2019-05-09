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

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-string v0, "fWaptYonECeI2Vzu30ySPDTXJ"

    iput-object v0, p0, Lcom/leidong/sdk/demo/MainActivity;->appkey:Ljava/lang/String;

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/leidong/sdk/demo/MainActivity;->times:I

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/demo/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/sdk/demo/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 541
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/LeiMsdk;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000e

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_2

    const v1, 0x7f050017

    if-eq v0, v1, :cond_1

    const v1, 0x7f0500f1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 322
    :pswitch_0
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->userSwitch(Landroid/content/Context;)V

    .line 323
    goto/16 :goto_0

    .line 357
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v0, "payinfos11":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "money"

    const-string v4, "0"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "order_no"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "order_name"

    const-string v2, "\u4e0d\u5b9a\u989d\u5145\u503c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "order_ext"

    const-string v2, "\u6d4b\u8bd5\u6570\u636e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "role_id"

    const-string v2, "007"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "role_name"

    const-string v2, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "role_level"

    const-string v2, "88"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v1, "server_id"

    const-string v2, "001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v1, "server_name"

    const-string v2, "\u5f00\u5929\u8f9f\u5730"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/leidong/sdk/m/LeiMsdk;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 369
    goto/16 :goto_0

    .line 337
    .end local v0    # "payinfos11":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "payinfos1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "money"

    const-string v4, "0.01"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "order_no"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "order_name"

    const-string v2, "\u4e00\u6bdb\u94b1\u7684\u5546\u54c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "order_ext"

    const-string v2, "\u6d4b\u8bd5\u6570\u636e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "role_id"

    const-string v2, "007"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "role_name"

    const-string v2, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "role_level"

    const-string v2, "88"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "server_id"

    const-string v2, "001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "server_name"

    const-string v2, "\u5f00\u5929\u8f9f\u5730"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/leidong/sdk/m/LeiMsdk;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 350
    goto/16 :goto_0

    .line 329
    .end local v0    # "payinfos1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->userLogout(Landroid/content/Context;)V

    .line 331
    goto/16 :goto_0

    .line 311
    :pswitch_4
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->userLogin(Landroid/content/Context;)V

    .line 316
    goto/16 :goto_0

    .line 440
    :pswitch_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v0, "infos3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "server_id"

    const-string v4, "001"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "server_name"

    const-string v4, "\u534e\u590f\u4e00\u670d"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v1, "role_id"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "role_level"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "role_name"

    const-string v4, "\u5b59\u609f\u7a7a"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "role_oldname"

    const-string v4, "\u65e0"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "role_createtime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v1, "role_gender"

    const-string v2, "\u65e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v1, "role_vip"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v1, "role_balance"

    const-string v2, "10000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v1, "role_fightvalue"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "role_profession"

    const-string v2, "\u6218\u58eb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "role_partyname"

    const-string v2, "\u82b1\u679c\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "role_extra"

    const-string v2, "\u65e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leidong/sdk/m/LeiMsdk;->roleLevelUp(Ljava/util/HashMap;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89d2\u8272\u5347\u7ea7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    .line 460
    goto/16 :goto_0

    .line 413
    .end local v0    # "infos3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v0, "infos2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "server_id"

    const-string v4, "001"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "server_name"

    const-string v4, "\u534e\u590f\u4e00\u670d"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v1, "role_id"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v1, "role_level"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v1, "role_name"

    const-string v4, "\u5b59\u609f\u7a7a"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "role_oldname"

    const-string v4, "\u65e0"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v1, "role_createtime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v1, "role_gender"

    const-string v2, "\u7537"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v1, "role_vip"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "role_balance"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v1, "role_fightvalue"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v1, "role_profession"

    const-string v2, "\u6218\u58eb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v1, "role_partyname"

    const-string v2, "\u82b1\u679c\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v1, "role_extra"

    const-string v2, "\u65e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leidong/sdk/m/LeiMsdk;->roleEnterGame(Ljava/util/HashMap;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u5165\u6e38\u620f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    .line 433
    goto/16 :goto_0

    .line 376
    .end local v0    # "infos2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->doExitGame(Landroid/content/Context;)V

    .line 378
    goto/16 :goto_0

    .line 524
    :pswitch_8
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->openUserSuperVip(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 516
    :pswitch_9
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/leidong/sdk/m/LeiMsdk;->openUserNameAuth(Landroid/content/Context;Z)V

    .line 518
    goto/16 :goto_0

    .line 508
    :pswitch_a
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->openSdkCustomerService(Landroid/content/Context;)V

    .line 510
    goto/16 :goto_0

    .line 467
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v0, "info4":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "server_id"

    const-string v4, "001"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v1, "server_name"

    const-string v4, "\u534e\u590f\u4e00\u670d"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v1, "role_id"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "role_level"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v1, "role_name"

    const-string v4, "\u9f50\u5929\u5927\u5723"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "role_oldname"

    const-string v4, "\u5b59\u609f\u7a7a"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v1, "role_createtime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v1, "role_gender"

    const-string v2, "\u7537"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "role_vip"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v1, "role_balance"

    const-string v2, "10000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v1, "role_fightvalue"

    const-string v2, "999"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v1, "role_profession"

    const-string v2, "\u6218\u58eb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "role_partyname"

    const-string v2, "\u82b1\u679c\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v1, "role_extra"

    const-string v2, "\u65e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leidong/sdk/m/LeiMsdk;->roleChangeName(Ljava/util/HashMap;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89d2\u8272\u6362\u540d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    .line 488
    goto/16 :goto_0

    .line 495
    .end local v0    # "info4":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "gid":Ljava/lang/String;
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "pid":Ljava/lang/String;
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "mid":Ljava/lang/String;
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/leidong/sdk/m/LeiMsdk;->getSdkVer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "sdkVer":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u524d\u6e38\u620f\u53c2\u6570\uff1a\n gid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n mid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n sdkver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    .line 502
    goto/16 :goto_0

    .line 388
    .end local v0    # "gid":Ljava/lang/String;
    .end local v1    # "pid":Ljava/lang/String;
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "sdkVer":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v0, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "server_id"

    const-string v4, "001"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v1, "server_name"

    const-string v4, "\u534e\u590f\u4e00\u670d"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v1, "role_id"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "role_level"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "role_name"

    const-string v4, "\u5b59\u609f\u7a7a"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v1, "role_oldname"

    const-string v4, "\u65e0"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v1, "role_createtime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "role_gender"

    const-string v2, "\u7537"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "role_vip"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "role_balance"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "role_fightvalue"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "role_profession"

    const-string v2, "\u6218\u58eb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "role_partyname"

    const-string v2, "\u65e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v1, "role_extra"

    const-string v2, "\u65e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leidong/sdk/m/LeiMsdk;->roleCreate(Ljava/util/HashMap;)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521b\u5efa\u89d2\u8272:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leidong/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V

    .line 406
    nop

    .line 528
    .end local v0    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

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
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->setContentView(I)V

    .line 36
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/demo/MainActivity;->appkey:Ljava/lang/String;

    new-instance v2, Lcom/leidong/sdk/demo/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/demo/MainActivity$1;-><init>(Lcom/leidong/sdk/demo/MainActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/leidong/sdk/m/LeiMsdk;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    .line 144
    const v0, 0x7f0500fd

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f050101

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f0500ff

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f050100

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0500eb

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0500ec

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0500fc

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0500f1

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0500fe

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0500e4

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f0500e5

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0500e6

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 197
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onDestroy()V

    .line 198
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 533
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 534
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/LeiMsdk;->doExitGame(Landroid/content/Context;)V

    .line 535
    const/4 v0, 0x1

    return v0

    .line 537
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 209
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/LeiMsdk;->onNewIntent(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onPause()V

    .line 186
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 173
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onRestart()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onResume()V

    .line 180
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 167
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onStart()V

    .line 168
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 191
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getInstance()Lcom/leidong/sdk/m/LeiMsdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/LeiMsdk;->onStop()V

    .line 192
    return-void
.end method
