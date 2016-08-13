.class public Lcom/sonymobile/home/presenter/view/PageIndicatorView;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "PageIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;,
        Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;
    }
.end annotation


# instance fields
.field protected mAutoHide:Z

.field protected mDeselected:Lcom/sonymobile/flix/components/Component;

.field protected final mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

.field protected final mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

.field protected mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

.field protected final mFadeTask:Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;

.field protected final mIconSpacing:F

.field protected mIndicatorPosition:F

.field protected mListener:Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

.field protected mNbrPages:I

.field protected mPage:I

.field protected mSelected:Lcom/sonymobile/flix/components/Component;

.field protected final mSelectedTemplate:Lcom/sonymobile/flix/components/Image;

.field protected final mTouchPaddingX:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 7
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resIdDeselected"    # I
    .param p3, "resIdSelected"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 61
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mAutoHide:Z

    .line 63
    new-instance v4, Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-direct {v4}, Lcom/sonymobile/flix/util/SpringDynamics;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    .line 65
    new-instance v4, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;-><init>(Lcom/sonymobile/home/presenter/view/PageIndicatorView;Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;)V

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeTask:Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;

    .line 80
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    .line 81
    const/high16 v4, 0x7fc00000    # NaNf

    iput v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mIndicatorPosition:F

    .line 85
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 86
    .local v1, "iconSize":I
    invoke-direct {p0, v1, p2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->createScaledPageIndicatorIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "deselectedBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1, p3}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->createScaledPageIndicatorIcon(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 91
    .local v2, "selectedBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v4, p1, v0}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    .line 92
    new-instance v4, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v4, p1, v2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelectedTemplate:Lcom/sonymobile/flix/components/Image;

    .line 95
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/util/SpringDynamics;->setSpring(FF)V

    .line 98
    invoke-static {}, Lcom/sonymobile/home/HomeApplication;->useTabletLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mIconSpacing:F

    .line 105
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mTouchPaddingX:F

    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, "touchPaddingY":F
    invoke-static {}, Lcom/sonymobile/home/HomeApplication;->useTabletLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    mul-float v3, v4, v5

    .line 113
    :cond_0
    iget v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mTouchPaddingX:F

    iget v5, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mTouchPaddingX:F

    invoke-virtual {p0, v4, v3, v5, v3}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setTouchPadding(FFFF)V

    .line 114
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setTrackTouchDragging(Z)V

    .line 115
    return-void

    .line 101
    .end local v3    # "touchPaddingY":F
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mIconSpacing:F

    goto :goto_0
.end method

.method private createScaledPageIndicatorIcon(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "iconSize"    # I
    .param p2, "iconResId"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 120
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1, p1, v1}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected animatePageIndicatorAlphaTo(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 302
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/SpringDynamics;->getTarget()F

    move-result v1

    invoke-static {v1, p1}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    .line 304
    .local v0, "scene":Lcom/sonymobile/flix/components/Scene;
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/SpringDynamics;->reset()V

    .line 306
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/util/SpringDynamics;->setTarget(F)V

    .line 307
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeTask:Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 308
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeTask:Lcom/sonymobile/home/presenter/view/PageIndicatorView$FadeTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 310
    .end local v0    # "scene":Lcom/sonymobile/flix/components/Scene;
    :cond_0
    return-void
.end method

.method protected calculateTouchPosition(F)F
    .locals 4
    .param p1, "localX"    # F

    .prologue
    .line 342
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v1, v2

    .line 343
    .local v0, "margin":F
    iget v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mNbrPages:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    neg-float v2, v0

    iget v3, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mTouchPaddingX:F

    sub-float/2addr v2, v3

    add-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    return v1
.end method

.method protected exists(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 267
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mNbrPages:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePageIndicator()V
    .locals 2

    .prologue
    .line 298
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->hidePageIndicator(J)V

    .line 299
    return-void
.end method

.method public hidePageIndicator(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 279
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;-><init>(Lcom/sonymobile/home/presenter/view/PageIndicatorView;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 290
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/Scene;->addDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;JJ)Z

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->animatePageIndicatorAlphaTo(F)V

    goto :goto_0
.end method

.method public hidePageIndicatorIfAutoHidingIsEnabled()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 262
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->hidePageIndicator(J)V

    .line 264
    :cond_0
    return-void
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 0
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    return p2
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mAutoHide:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getDescendantAlpha()F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->abortTouchGesture()V

    .line 319
    const/4 p2, 0x0

    .line 338
    .end local p2    # "inside":Z
    :cond_0
    :goto_0
    return p2

    .line 321
    .restart local p2    # "inside":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mListener:Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0, p3}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->calculateTouchPosition(F)F

    move-result v0

    .line 323
    .local v0, "position":F
    sparse-switch p1, :sswitch_data_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch(): Unknown touch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :sswitch_0
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mListener:Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;->onIndicatorPressed(F)V

    goto :goto_0

    .line 328
    :sswitch_1
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mListener:Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;->onIndicatorDragged(F)V

    goto :goto_0

    .line 332
    :sswitch_2
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mListener:Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;->onIndicatorReleased(F)V

    goto :goto_0

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method public setAutoHide(Z)V
    .locals 2
    .param p1, "autoHide"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mAutoHide:Z

    .line 239
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 240
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->hidePageIndicator(J)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->showPageIndicator()V

    goto :goto_0
.end method

.method public setIndicatorPosition(F)V
    .locals 7
    .param p1, "position"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 186
    iput p1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mIndicatorPosition:F

    .line 187
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 190
    .local v0, "page":I
    iget v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    if-eq v0, v2, :cond_4

    .line 191
    iget v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 193
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 195
    :cond_0
    iget v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 197
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 199
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 202
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 205
    :cond_3
    iput v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    .line 209
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    int-to-float v2, v0

    sub-float v1, p1, v2

    .line 211
    .local v1, "transparency":F
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    sub-float v3, v4, v1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 212
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 214
    .end local v1    # "transparency":F
    :cond_5
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 215
    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 216
    .restart local v1    # "transparency":F
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    sub-float v3, v4, v1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 217
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 219
    .end local v1    # "transparency":F
    :cond_6
    return-void
.end method

.method public setListener(Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mListener:Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;

    .line 359
    return-void
.end method

.method public setNbrPages(I)Z
    .locals 11
    .param p1, "nbrPages"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 131
    iget v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mNbrPages:I

    if-eq v8, p1, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->clear()V

    .line 133
    iput p1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mNbrPages:I

    .line 134
    new-instance v8, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    .line 135
    new-instance v8, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 138
    int-to-float v8, v1

    iget v9, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mIconSpacing:F

    mul-float v3, v8, v9

    .line 140
    .local v3, "posX":F
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v9}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    .line 141
    .local v0, "deselected":Lcom/sonymobile/flix/components/Image;
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v8, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 142
    invoke-virtual {v0, v3, v10}, Lcom/sonymobile/flix/components/Image;->setPosition(FF)V

    .line 143
    invoke-static {v0}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;)V

    .line 145
    new-instance v4, Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v9}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    .line 146
    .local v4, "selected":Lcom/sonymobile/flix/components/Image;
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v8, v4}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 147
    invoke-virtual {v4, v3, v10}, Lcom/sonymobile/flix/components/Image;->setPosition(FF)V

    .line 148
    invoke-static {v4}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "deselected":Lcom/sonymobile/flix/components/Image;
    .end local v3    # "posX":F
    .end local v4    # "selected":Lcom/sonymobile/flix/components/Image;
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    invoke-static {v8}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 152
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-static {v8}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 153
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 154
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 155
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-static {v8}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;)V

    .line 156
    invoke-static {p0}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 161
    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v8}, Lcom/sonymobile/flix/components/Component;->getChildrenSorted()Ljava/util/List;

    move-result-object v6

    .line 162
    .local v6, "sortedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/components/Component;>;"
    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/flix/components/Component;

    .line 164
    .local v5, "selectedComponent":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v5, v7}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    goto :goto_1

    .line 169
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "selectedComponent":Lcom/sonymobile/flix/components/Component;
    :cond_1
    const/high16 v7, -0x80000000

    iput v7, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mPage:I

    .line 170
    const/high16 v7, 0x7fc00000    # NaNf

    iput v7, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mIndicatorPosition:F

    .line 172
    const/4 v7, 0x1

    .line 175
    .end local v1    # "i":I
    .end local v6    # "sortedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/components/Component;>;"
    :cond_2
    return v7
.end method

.method public showPageIndicator()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mFadeOutTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 275
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->animatePageIndicatorAlphaTo(F)V

    .line 276
    return-void
.end method

.method public showPageIndicatorIfAutoHidingIsEnabled()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->showPageIndicator()V

    .line 254
    :cond_0
    return-void
.end method
