.class Lcom/leidong/sdk/m/controller/MsdkCore$1;
.super Ljava/lang/Object;
.source "MsdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkCore;->openUserSuperVip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkCore;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/MsdkCore;

    .line 152
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkCore$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 158
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 155
    return-void
.end method
