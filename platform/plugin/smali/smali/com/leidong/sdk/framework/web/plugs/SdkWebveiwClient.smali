.class public Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;
.super Landroid/webkit/WebViewClient;
.source "SdkWebveiwClient.java"


# static fields
.field private static final MAILTO:Ljava/lang/String; = "mailto:"

.field private static final QQ:Ljava/lang/String; = "qq:"

.field private static final TEL:Ljava/lang/String; = "tel:"

.field private static final WEIXIN:Ljava/lang/String; = "weixin:"


# instance fields
.field private mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/leidong/sdk/framework/web/SdkWebCallback;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    .line 39
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleAlipayWebUrl(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "scheme=(.*?);"

    .line 169
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "package=(.*?);"

    .line 174
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 175
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 177
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "intent"

    .line 181
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 185
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v0, "\u6ca1\u6709\u627e\u5230\u53ef\u7528\u7684\u5e94\u7528"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleAppUrl(Ljava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v0, "\u6ca1\u6709\u627e\u5230\u53ef\u7528\u7684\u5e94\u7528."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private openQQ(Ljava/lang/String;)V
    .locals 3

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5df2\u590d\u5236QQ\u53f7\u7801\u5230\u526a\u8d34\u7248"

    .line 151
    iget-object v2, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->copyString2System(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "android.intent.action.SENDTO"

    .line 152
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "imto://qq"

    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v0, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u624b\u673aQQ"

    invoke-virtual {p0, p1, v0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/framework/web/SdkWebCallback;->loadFinish()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 132
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/framework/web/SdkWebCallback;->loadStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    invoke-interface {p1, p3}, Lcom/leidong/sdk/framework/web/SdkWebCallback;->loadError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 123
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 45
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    const-string v1, "weixin://"

    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->handleAppUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "alipay"

    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-direct {p0, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->handleAppUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "intent"

    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "alipay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->handleAlipayWebUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "tel:"

    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    iget-object p2, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "qq:"

    .line 70
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->openQQ(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "weixin:"

    .line 75
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "com.tencent.mm"

    const/4 v1, 0x7

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 79
    iget-object v1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v1, "\u5fae\u4fe1\u53f7\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    invoke-static {p1, p2, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->copyString2System(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 83
    :cond_5
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string p2, "\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u65e0\u6cd5\u6253\u5f00"

    invoke-virtual {p0, p1, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "mailto:"

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Referer"

    const-string v3, "https://syplay.thunderplaygame.com"

    .line 98
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return v0

    :cond_8
    return v0
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
