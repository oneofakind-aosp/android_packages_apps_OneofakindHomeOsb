.class public Lcom/sonymobile/home/presenter/view/SimpleBadgeView;
.super Lcom/sonymobile/flix/components/Image;
.source "SimpleBadgeView.java"


# instance fields
.field private mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;I)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resId"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    .line 30
    const-string v0, "SimpleBadge"

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->setName(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mShowing:Z

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mShowing:Z

    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 71
    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getFastOutSlowInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRemoveOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 79
    :cond_1
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mShowing:Z

    if-nez v0, :cond_1

    .line 47
    iput-boolean v4, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mShowing:Z

    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 51
    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getFastOutSlowInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->mBadgeAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 59
    :cond_1
    return-void
.end method
