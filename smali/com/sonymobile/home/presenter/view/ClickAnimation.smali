.class public Lcom/sonymobile/home/presenter/view/ClickAnimation;
.super Lcom/sonymobile/flix/util/Animation;
.source "ClickAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;
    }
.end annotation


# static fields
.field public static final CLICK_PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final CLICK_RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final sClickAnimationPool:Landroid/support/v4/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SimplePool",
            "<",
            "Lcom/sonymobile/home/presenter/view/ClickAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 26
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->sClickAnimationPool:Landroid/support/v4/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .line 48
    return-void
.end method

.method private static initCancelAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation;)V
    .locals 4
    .param p0, "clickAnimation"    # Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->getClickAlpha()I

    move-result v1

    int-to-float v0, v1

    .line 120
    .local v0, "currentValue":F
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 121
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 122
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 123
    return-void
.end method

.method private static initPressAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation;)V
    .locals 4
    .param p0, "clickAnimation"    # Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->getClickAlpha()I

    move-result v1

    int-to-float v0, v1

    .line 113
    .local v0, "currentValue":F
    const/high16 v1, 0x43160000    # 150.0f

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 114
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 115
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 116
    return-void
.end method

.method private static initReleaseAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation;)V
    .locals 2
    .param p0, "clickAnimation"    # Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .prologue
    .line 105
    const/high16 v0, 0x43160000    # 150.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 106
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 107
    sget-object v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 108
    return-void
.end method

.method private static obtain(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;
    .locals 2
    .param p0, "view"    # Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .prologue
    .line 77
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickAnimation;->sClickAnimationPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 78
    .local v0, "clickAnimation":Lcom/sonymobile/home/presenter/view/ClickAnimation;
    if-eqz v0, :cond_0

    .line 79
    iput-object p0, v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .line 83
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .end local v0    # "clickAnimation":Lcom/sonymobile/home/presenter/view/ClickAnimation;
    invoke-direct {v0, p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;-><init>(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)V

    .restart local v0    # "clickAnimation":Lcom/sonymobile/home/presenter/view/ClickAnimation;
    goto :goto_0
.end method

.method public static obtainCancelAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;
    .locals 1
    .param p0, "view"    # Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtain(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    .line 100
    .local v0, "clickAnimation":Lcom/sonymobile/home/presenter/view/ClickAnimation;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->initCancelAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation;)V

    .line 101
    return-object v0
.end method

.method public static obtainPressAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;
    .locals 1
    .param p0, "view"    # Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtain(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    .line 88
    .local v0, "pressAnimation":Lcom/sonymobile/home/presenter/view/ClickAnimation;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->initPressAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation;)V

    .line 89
    return-object v0
.end method

.method public static obtainReleaseAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;
    .locals 1
    .param p0, "view"    # Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtain(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    .line 94
    .local v0, "clickAnimation":Lcom/sonymobile/home/presenter/view/ClickAnimation;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->initReleaseAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation;)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 68
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->onClickAnimationFinish()V

    .line 59
    return-void
.end method

.method public onUpdate(FF)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->setClickAlpha(I)V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->invalidate()V

    .line 54
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->reset()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    .line 73
    sget-object v0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->sClickAnimationPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ClickAnimation;->mView:Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;->invalidate()V

    .line 64
    return-void
.end method
