.class Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;
.super Ljava/lang/Object;
.source "AnimCircular.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;


# direct methods
.method constructor <init>(Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget-object v0, v0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder;

    invoke-static {v0}, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder;->access$600(Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget-object v0, v0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget v1, v1, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->val$cx:I

    iget-object v2, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget v2, v2, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->val$cy:I

    iget-object v3, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget v3, v3, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->val$finalRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget-object v4, v4, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder;

    .line 254
    invoke-static {v4}, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder;->access$700(Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder;)F

    move-result v4

    .line 253
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;->this$1:Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;

    iget-wide v1, v1, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1;->val$finalDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 256
    new-instance v1, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1$1;-><init>(Lcom/leidong/open/utils/AnimCircular$FullActivityBuilder$1$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
