.class Lcom/leidong/sdk/s/app/LeiSdkCore$14;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserNameAuth(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 653
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$14;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 661
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 657
    return-void
.end method
