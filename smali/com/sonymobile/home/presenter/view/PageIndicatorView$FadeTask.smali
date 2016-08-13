.class Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;
.super Ljava/lang/Object;
.source "PageIndicatorView.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/presenter/view/PageIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/presenter/view/PageIndicatorView;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/presenter/view/PageIndicatorView;Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/presenter/view/PageIndicatorView;
    .param p2, "x1"    # Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;-><init>(Lcom/sonymobile/home/presenter/view/PageIndicatorView;)V

    return-void
.end method


# virtual methods
.method public onUpdate(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    iget-object v0, v0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/SpringDynamics;->update(J)V

    .line 377
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    iget-object v1, v1, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/SpringDynamics;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setDescendantAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    iget-object v0, v0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/SpringDynamics;->isAtRest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
