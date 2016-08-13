.class public abstract Lcom/sonymobile/home/ui/pageview/PageItemView;
.super Lcom/sonymobile/flix/components/Component;
.source "PageItemView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;
.implements Lcom/sonymobile/flix/util/Animation$Listener;
.implements Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    }
.end annotation


# instance fields
.field private mAnimateClick:Z

.field private mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

.field private final mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

.field private mClickAlpha:I

.field private mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

.field protected mColorFilter:Landroid/graphics/ColorFilter;

.field private final mItem:Lcom/sonymobile/home/data/Item;

.field private mLifeCycleState:I

.field private final mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

.field private mStayPressed:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 49
    iput v3, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 74
    iput-object p2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mItem:Lcom/sonymobile/home/data/Item;

    .line 75
    iput-object p3, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .line 76
    iput-boolean v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z

    .line 77
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setCullingEnabled(Z)V

    .line 79
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageItemView$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemView$1;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

    const-string v1, "PageItemView blocking area"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/TouchArea;->setName(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemView$2;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    .line 132
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    const-string v1, "PageItemViewButton"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setName(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setLongPressEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setReleaseOnLongPress(Z)V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setReleaseOnClick(Z)V

    .line 136
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setConsumeTouchEvents(Z)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/TouchArea;->setProperty(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setProperty(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->animateCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mStayPressed:Z

    return v0
.end method

.method private animateCancel()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->removeClickAnimation()V

    .line 292
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtainCancelAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 293
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->start()V

    .line 294
    return-void
.end method

.method private removeClickAnimation()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->cancel()V

    .line 305
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->recycle()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method protected animatePress()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->removeClickAnimation()V

    .line 280
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtainPressAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->start()V

    .line 282
    return-void
.end method

.method protected animateRelease()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->removeClickAnimation()V

    .line 286
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtainReleaseAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->start()V

    .line 288
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 713
    :cond_0
    return-void
.end method

.method protected clearClickAnimation()V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->removeClickAnimation()V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setClickAlpha(I)V

    .line 299
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->invalidate()V

    .line 300
    return-void
.end method

.method public final create()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 403
    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    if-ge v1, v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onCreate()V

    .line 405
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final defocus()Z
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onDefocus()V

    .line 470
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 471
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final destroy()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    iget v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->stop()Z

    .line 519
    :cond_0
    iget v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    if-lt v2, v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onDestroy()V

    .line 521
    iput v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 524
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected doClick()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    invoke-interface {v0, p0}, Lcom/sonymobile/home/ui/pageview/PageItemViewListener;->onClicked(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 370
    return-void
.end method

.method protected doHandleClick(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method protected doLongPress(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemViewListener;->onLongPress(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V

    .line 374
    return-void
.end method

.method public final focus()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 451
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->resume()Z

    .line 454
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    if-ge v0, v2, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onFocus()V

    .line 456
    iput v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 457
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlockingArea()Lcom/sonymobile/flix/components/TouchArea;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

    return-object v0
.end method

.method public getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    return-object v0
.end method

.method public getClickAlpha()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAlpha:I

    return v0
.end method

.method public getDefaultPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getItem()Lcom/sonymobile/home/data/Item;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mItem:Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method public getLifeCycleState()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    return v0
.end method

.method public getResizeInfo()Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 731
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWorldX()F

    move-result v2

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getPointX(F)F

    move-result v3

    add-float v0, v2, v3

    .line 732
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWorldY()F

    move-result v2

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getPointY(F)F

    move-result v3

    add-float v1, v2, v3

    .line 734
    .local v1, "top":F
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWidth()F

    move-result v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getHeight()F

    move-result v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public final handleClick(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->doHandleClick(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hasUninstallOption()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 346
    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public isResizable()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public final layout(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 267
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setSize(FF)V

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onLayout(II)V

    .line 269
    return-void
.end method

.method public onClickAnimationFinish()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->recycle()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 341
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public onDefocus()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 723
    return-void
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z
    .locals 1
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract onLayout(II)V
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 606
    return-void
.end method

.method public onResizeLayout(II)V
    .locals 0
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    .line 366
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 718
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method public final pause()Z
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->defocus()Z

    .line 485
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onPause()V

    .line 487
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 488
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->destroy()Z

    .line 532
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onRelease()V

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 534
    return-void
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->destroy()Z

    .line 541
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onRemove()V

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 543
    return-void
.end method

.method public final resume()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 434
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->start()Z

    .line 437
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    if-ge v0, v2, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onResume()V

    .line 439
    iput v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 440
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimateClick(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z

    .line 159
    return-void
.end method

.method public setClickAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 321
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAlpha:I

    if-eq v0, p1, :cond_0

    .line 322
    iput p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mClickAlpha:I

    .line 324
    if-lez p1, :cond_1

    .line 325
    invoke-static {p1}, Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setClickColorFilter(Landroid/graphics/ColorFilter;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setClickColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method protected setClickColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 317
    return-void
.end method

.method public setClickSound(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setClickSoundEnabled(Z)V

    .line 182
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 273
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mBlockingArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 275
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setSize(FF)V

    .line 276
    return-void
.end method

.method public setStayPressed(Z)V
    .locals 1
    .param p1, "stayPressed"    # Z

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mStayPressed:Z

    if-eq v0, p1, :cond_0

    .line 168
    iput-boolean p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mStayPressed:Z

    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->clearClickAnimation()V

    .line 173
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setTouchEnabled(Z)V

    .line 210
    return-void
.end method

.method public setTouchable(Z)V
    .locals 2
    .param p1, "touchable"    # Z

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mButton:Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->setConsumeTouchEvents(Z)V

    .line 200
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUninstallOption(Z)V
    .locals 0
    .param p1, "hasUninstallOption"    # Z

    .prologue
    .line 743
    return-void
.end method

.method public showUninstallOption(Z)V
    .locals 0
    .param p1, "showUninstallOption"    # Z

    .prologue
    .line 760
    return-void
.end method

.method public final start()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 417
    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    if-ge v1, v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->create()Z

    .line 420
    :cond_0
    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    if-ge v1, v2, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onStart()V

    .line 422
    iput v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 425
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 700
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 701
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 702
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 703
    return-void
.end method

.method public final stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 499
    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->pause()Z

    .line 502
    :cond_0
    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onStop()V

    .line 504
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    .line 507
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportResizing()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected updateLifecycleState()V
    .locals 3

    .prologue
    .line 629
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    packed-switch v0, :pswitch_data_0

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown lifecycle state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemView;->mLifeCycleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onCreate()V

    .line 648
    :goto_0
    :pswitch_1
    return-void

    .line 634
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onStart()V

    goto :goto_0

    .line 637
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onResume()V

    goto :goto_0

    .line 640
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onFocus()V

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
