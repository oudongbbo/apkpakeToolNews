.class Lcom/leidong/sdk/framework/http/HttpManager$1;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/leidong/open/main/OpenHttpUtils$OpenCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/http/HttpManager;->httpRequest(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/http/HttpManager;

.field final synthetic val$Type:Ljava/lang/String;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/http/HttpCallBack;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    iput-object p2, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$Type:Ljava/lang/String;

    iput-object p3, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$callback:Lcom/leidong/sdk/framework/http/HttpCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-static {v0}, Lcom/leidong/sdk/framework/http/HttpManager;->access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-static {v0}, Lcom/leidong/sdk/framework/http/HttpManager;->access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-static {v0}, Lcom/leidong/sdk/framework/http/HttpManager;->access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$Type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]{Fail}: > \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/http/HttpManager;->access$200(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$callback:Lcom/leidong/sdk/framework/http/HttpCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-static {v0}, Lcom/leidong/sdk/framework/http/HttpManager;->access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-static {v0}, Lcom/leidong/sdk/framework/http/HttpManager;->access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-static {v0}, Lcom/leidong/sdk/framework/http/HttpManager;->access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->this$0:Lcom/leidong/sdk/framework/http/HttpManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<<<<<["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$Type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]{Success}: > \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/http/HttpManager;->access$100(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager$1;->val$callback:Lcom/leidong/sdk/framework/http/HttpCallBack;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
