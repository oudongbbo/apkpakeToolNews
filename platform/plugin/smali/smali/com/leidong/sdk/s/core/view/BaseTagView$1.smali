.class Lcom/leidong/sdk/s/core/view/BaseTagView$1;
.super Ljava/lang/Object;
.source "BaseTagView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/view/BaseTagView;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/core/view/BaseTagView;

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/view/BaseTagView;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView$1;->this$0:Lcom/leidong/sdk/s/core/view/BaseTagView;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/view/BaseTagView$1;->val$words:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView$1;->this$0:Lcom/leidong/sdk/s/core/view/BaseTagView;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->access$000(Lcom/leidong/sdk/s/core/view/BaseTagView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView$1;->val$words:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
