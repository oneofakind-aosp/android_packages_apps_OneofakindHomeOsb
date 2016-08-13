.class public Lcom/sonymobile/home/presenter/view/BackgroundGradient;
.super Lcom/sonymobile/flix/components/NinePatchImage;
.source "BackgroundGradient.java"


# instance fields
.field private final mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 23
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 24
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 25
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 28
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 32
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setAlpha(F)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setVisible(Z)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mHideAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->mShowAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setAlpha(F)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setVisible(Z)V

    goto :goto_0
.end method
