.class public Lcom/sonymobile/home/desktop/HintView;
.super Lcom/sonymobile/flix/components/Component;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;,
        Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;
    }
.end annotation


# instance fields
.field private final mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

.field private mHintAnimationListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

.field private final mImageView:Lcom/sonymobile/flix/components/Image;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FF)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 55
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/HintView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    .line 56
    iget-object v1, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setAlpha(F)V

    .line 57
    iget-object v1, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/HintView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 58
    new-instance v1, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    .line 59
    new-instance v0, Lcom/sonymobile/home/desktop/HintView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/HintView$1;-><init>(Lcom/sonymobile/home/desktop/HintView;)V

    .line 74
    .local v0, "animationListener":Lcom/sonymobile/flix/util/Animation$Listener;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/home/desktop/HintView;->setSize(FF)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/HintView;)Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/HintView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mHintAnimationListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/HintView;)Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/HintView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    return-object v0
.end method

.method private runAnimation(I)V
    .locals 9
    .param p1, "animationType"    # I

    .prologue
    const/4 v8, 0x1

    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "startValue":F
    const/4 v1, 0x0

    .line 111
    .local v1, "endValue":F
    const-wide/16 v2, 0x0

    .line 112
    .local v2, "duration":J
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->getScheduler()Lcom/sonymobile/flix/util/Scheduler;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/util/Scheduler;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v5

    .line 113
    .local v5, "taskAdded":Z
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->getAnimationType()I

    move-result v0

    .line 115
    .local v0, "currentAnimationType":I
    if-eqz v5, :cond_1

    if-ne v0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-nez p1, :cond_4

    .line 122
    const/high16 v1, 0x3f000000    # 0.5f

    .line 124
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v0, v8, :cond_3

    .line 128
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->getValue()F

    move-result v4

    .line 129
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->getProgress()F

    move-result v6

    const/high16 v7, 0x44610000    # 900.0f

    mul-float/2addr v6, v7

    float-to-long v2, v6

    .line 149
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->reset()V

    .line 150
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6, v4, v1}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 151
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6, v2, v3}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 152
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6, p1}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->setAnimationType(I)V

    .line 153
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v6, v4}, Lcom/sonymobile/flix/components/Image;->setAlpha(F)V

    .line 154
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v7, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 155
    if-nez v5, :cond_0

    .line 156
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v7, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_0

    .line 131
    :cond_3
    const/4 v4, 0x0

    .line 132
    const-wide/16 v2, 0x384

    goto :goto_1

    .line 134
    :cond_4
    if-ne p1, v8, :cond_2

    .line 135
    const/4 v1, 0x0

    .line 136
    const-wide/16 v2, 0x384

    .line 138
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    .line 143
    iget-object v6, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->getValue()F

    move-result v4

    goto :goto_1

    .line 145
    :cond_5
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_1
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/HintView;->runAnimation(I)V

    .line 93
    return-void
.end method

.method public animateOut()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/HintView;->runAnimation(I)V

    .line 97
    return-void
.end method

.method public getImage()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/HintView;->setVisible(Z)V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->reset()V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setAlpha(F)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, v2, v2}, Lcom/sonymobile/flix/components/Image;->setPosition(FF)V

    .line 89
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Image;->setAlpha(F)V

    .line 171
    return-void
.end method

.method public setAnimationListener(Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/home/desktop/HintView;->mHintAnimationListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    .line 166
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "hintBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView;->mImageView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    return-void
.end method
