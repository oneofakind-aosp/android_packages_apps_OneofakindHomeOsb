.class public Lcom/sonymobile/flix/components/TouchArea;
.super Lcom/sonymobile/flix/components/Component;
.source "TouchArea.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/TouchArea$Listener;,
        Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;
    }
.end annotation


# instance fields
.field protected mCurrentX:F

.field protected mCurrentY:F

.field protected mHandlingEvents:Z

.field protected mHoveringInside:Z

.field protected mLocalLatest:[F

.field protected mLongPressDelay:J

.field protected mLongPressEnabled:Z

.field protected mLongPressRunnable:Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;

.field protected mLongPressing:Z

.field protected mPadBottom:F

.field protected mPadLeft:F

.field protected mPadRight:F

.field protected mPadTop:F

.field protected mPressedX:F

.field protected mPressedY:F

.field protected mPreviousX:F

.field protected mPreviousY:F

.field protected mTempFloats:[F

.field protected mTouchAreaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/components/TouchArea$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchEnabled:Z

.field protected mTouchSlopSq:I

.field protected mTouchingInside:Z

.field protected mTrackDragging:Z

.field protected mTrackTouchFromOutside:Z

.field protected mWithinTouchSlop:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->init(Lcom/sonymobile/flix/components/Scene;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FF)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 174
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 175
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->init(Lcom/sonymobile/flix/components/Scene;)V

    .line 176
    return-void
.end method

.method private init(Lcom/sonymobile/flix/components/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v2, 0x1

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    .line 180
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/TouchArea;->setTouchEnabled(Z)V

    .line 181
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/TouchArea;->setTouchSlop(I)V

    .line 182
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/TouchArea;->setLongPressDelay(J)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/TouchArea;->setKeepUpdatedTransformMatrix(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->prepareForDrawing()V

    .line 188
    return-void
.end method


# virtual methods
.method public abortTouchGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->cancelLongPress()V

    .line 416
    iput-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    .line 417
    iput-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 418
    return-void
.end method

.method protected cancelLongPress()V
    .locals 2

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressing:Z

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressing:Z

    .line 825
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressRunnable:Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 827
    :cond_0
    return-void
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 730
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sonymobile/flix/components/TouchArea;->transformToLocalCoordinates(FFZ[F)Z

    move-result v0

    return v0
.end method

.method protected drawSelf(Landroid/graphics/Canvas;Lcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    const/4 v1, 0x0

    .line 831
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->drawSelf(Landroid/graphics/Canvas;Lcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 833
    sget-boolean v0, Lcom/sonymobile/flix/components/ComponentDebug;->sDebugRenderAllBorders:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    iget-boolean v0, v0, Lcom/sonymobile/flix/components/ComponentDebug;->mRenderBorders:Z

    if-eqz v0, :cond_1

    .line 835
    :cond_0
    iget v3, p0, Lcom/sonymobile/flix/components/TouchArea;->mWidth:F

    iget v4, p0, Lcom/sonymobile/flix/components/TouchArea;->mHeight:F

    iget v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadLeft:F

    neg-float v5, v0

    iget v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadTop:F

    neg-float v6, v0

    iget v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mWidth:F

    iget v2, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadRight:F

    add-float v7, v0, v2

    iget v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mHeight:F

    iget v2, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadBottom:F

    add-float v8, v0, v2

    const v9, 0x7f00ffff

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledBorder(Landroid/graphics/Canvas;FFFFFFFFI)V

    .line 837
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget v3, p0, Lcom/sonymobile/flix/components/TouchArea;->mWidth:F

    iget v4, p0, Lcom/sonymobile/flix/components/TouchArea;->mHeight:F

    const v5, 0x7fffff7f

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledRect(Landroid/graphics/Canvas;FFFFI)V

    .line 842
    :cond_1
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    return v0
.end method

.method public isWithinTouchSlop()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mWithinTouchSlop:Z

    return v0
.end method

.method protected notifyHover(IZLandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 656
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v3, v0, v10

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v4, v0, v11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/TouchArea;->onHover(IZFFLandroid/view/MotionEvent;)Z

    move-result v7

    .line 657
    .local v7, "consumed":Z
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchAreaListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchAreaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 658
    .local v9, "nbrListeners":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 659
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchAreaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/TouchArea$Listener;

    iget-object v1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v4, v1, v10

    iget-object v1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v5, v1, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/flix/components/TouchArea$Listener;->onHover(Lcom/sonymobile/flix/components/TouchArea;IZFFLandroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 658
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    .end local v9    # "nbrListeners":I
    :cond_0
    move v9, v10

    .line 657
    goto :goto_0

    .line 662
    .restart local v8    # "i":I
    .restart local v9    # "nbrListeners":I
    :cond_1
    return v7
.end method

.method protected notifyTouch(IZLandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 637
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v3, v0, v10

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v4, v0, v11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/TouchArea;->onTouch(IZFFLandroid/view/MotionEvent;)Z

    move-result v7

    .line 638
    .local v7, "consumed":Z
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchAreaListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchAreaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 639
    .local v9, "nbrListeners":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 640
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchAreaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/TouchArea$Listener;

    iget-object v1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v4, v1, v10

    iget-object v1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    aget v5, v1, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/flix/components/TouchArea$Listener;->onTouch(Lcom/sonymobile/flix/components/TouchArea;IZFFLandroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 639
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    .end local v9    # "nbrListeners":I
    :cond_0
    move v9, v10

    .line 638
    goto :goto_0

    .line 643
    .restart local v8    # "i":I
    .restart local v9    # "nbrListeners":I
    :cond_1
    return v7
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x11

    const/16 v9, 0x10

    const/4 v8, 0x7

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 585
    iget-boolean v6, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchEnabled:Z

    if-nez v6, :cond_1

    move v1, v5

    .line 624
    :cond_0
    :goto_0
    return v1

    .line 588
    :cond_1
    const/4 v1, 0x0

    .line 589
    .local v1, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 590
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 591
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 594
    .local v4, "y":F
    iget-object v6, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    invoke-virtual {p0, v3, v4, v7, v6}, Lcom/sonymobile/flix/components/TouchArea;->transformToLocalCoordinates(FFZ[F)Z

    move-result v2

    .line 595
    .local v2, "inside":Z
    iget-boolean v6, p0, Lcom/sonymobile/flix/components/TouchArea;->mHoveringInside:Z

    if-nez v6, :cond_4

    .line 600
    if-eqz v2, :cond_2

    .line 601
    if-ne v0, v8, :cond_3

    .line 602
    iput-boolean v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mHoveringInside:Z

    .line 603
    const/4 v5, 0x0

    invoke-virtual {p0, v10, v7, v5}, Lcom/sonymobile/flix/components/TouchArea;->notifyHover(IZLandroid/view/MotionEvent;)Z

    move-result v1

    .line 621
    :cond_2
    :goto_1
    if-ne v0, v8, :cond_0

    .line 622
    const/16 v5, 0x12

    iget-boolean v6, p0, Lcom/sonymobile/flix/components/TouchArea;->mHoveringInside:Z

    invoke-virtual {p0, v5, v6, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyHover(IZLandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 604
    :cond_3
    const/16 v5, 0x9

    if-ne v0, v5, :cond_2

    .line 605
    iput-boolean v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mHoveringInside:Z

    .line 606
    invoke-virtual {p0, v10, v7, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyHover(IZLandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 612
    :cond_4
    if-nez v2, :cond_5

    if-ne v0, v8, :cond_5

    .line 613
    iput-boolean v5, p0, Lcom/sonymobile/flix/components/TouchArea;->mHoveringInside:Z

    .line 614
    const/4 v5, 0x0

    invoke-virtual {p0, v9, v7, v5}, Lcom/sonymobile/flix/components/TouchArea;->notifyHover(IZLandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 615
    :cond_5
    const/16 v6, 0xa

    if-ne v0, v6, :cond_2

    .line 616
    iput-boolean v5, p0, Lcom/sonymobile/flix/components/TouchArea;->mHoveringInside:Z

    .line 617
    invoke-virtual {p0, v9, v7, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyHover(IZLandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchEnabled:Z

    if-nez v10, :cond_1

    .line 456
    const/4 v1, 0x0

    .line 580
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    const/4 v1, 0x0

    .line 459
    .local v1, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 460
    .local v0, "action":I
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    if-nez v10, :cond_2

    if-nez v0, :cond_0

    .line 466
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 467
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 468
    .local v9, "y":F
    iget v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mCurrentX:F

    iput v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mPreviousX:F

    .line 469
    iget v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mCurrentY:F

    iput v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mPreviousY:F

    .line 470
    iput v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mCurrentX:F

    .line 471
    iput v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mCurrentY:F

    .line 472
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 474
    :pswitch_0
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTrackTouchFromOutside:Z

    if-eqz v10, :cond_5

    .line 478
    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v8

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v9

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/sonymobile/flix/components/TouchArea;->transformToLocalCoordinates(FFZ[F)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 480
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    .line 490
    :goto_1
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    if-eqz v10, :cond_0

    .line 491
    iput v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPressedX:F

    .line 492
    iput v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mPressedY:F

    .line 493
    iput v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPreviousX:F

    .line 494
    iput v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mPreviousY:F

    .line 495
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mWithinTouchSlop:Z

    .line 496
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressEnabled:Z

    if-eqz v10, :cond_3

    .line 497
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressing:Z

    .line 498
    iget-wide v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressDelay:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    iget-wide v6, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressDelay:J

    .line 500
    .local v6, "longPressDelay":J
    :goto_2
    iget-object v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Scene;->getHandler()Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressRunnable:Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;

    invoke-virtual {v10, v11, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    .end local v6    # "longPressDelay":J
    :cond_3
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    invoke-virtual {p0, v10, v11, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    move-result v1

    .line 504
    sget-boolean v10, Lcom/sonymobile/flix/components/ComponentDebug;->sDebugRenderAllBorders:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    iget-boolean v10, v10, Lcom/sonymobile/flix/components/ComponentDebug;->mRenderBorders:Z

    if-eqz v10, :cond_0

    .line 506
    :cond_4
    if-eqz v1, :cond_0

    .line 507
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ComponentDebug: Touched: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/flix/debug/Logx;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :cond_5
    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v8

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v9

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/sonymobile/flix/components/TouchArea;->transformToLocalCoordinates(FFZ[F)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 486
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    goto :goto_1

    .line 498
    :cond_6
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v6, v10

    goto :goto_2

    .line 518
    :pswitch_1
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mWithinTouchSlop:Z

    if-eqz v10, :cond_7

    .line 519
    iget v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mPressedX:F

    sub-float v3, v8, v10

    .line 520
    .local v3, "dx":F
    iget v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mPressedY:F

    sub-float v4, v9, v10

    .line 522
    .local v4, "dy":F
    mul-float v10, v3, v3

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchSlopSq:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 523
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->cancelLongPress()V

    .line 524
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mWithinTouchSlop:Z

    .line 530
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    :cond_7
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTrackDragging:Z

    if-eqz v10, :cond_8

    .line 531
    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v8

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v9

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/sonymobile/flix/components/TouchArea;->mLocalLatest:[F

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/sonymobile/flix/components/TouchArea;->transformToLocalCoordinates(FFZ[F)Z

    move-result v2

    .line 533
    .local v2, "contains":Z
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    if-nez v10, :cond_9

    .line 534
    if-eqz v2, :cond_8

    .line 535
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 538
    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    move-result v1

    .line 550
    .end local v2    # "contains":Z
    :cond_8
    :goto_3
    iget-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mWithinTouchSlop:Z

    if-eqz v10, :cond_a

    const/4 v10, 0x3

    :goto_4
    iget-boolean v11, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    invoke-virtual {p0, v10, v11, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    move-result v1

    .line 552
    goto/16 :goto_0

    .line 541
    .restart local v2    # "contains":Z
    :cond_9
    if-nez v2, :cond_8

    .line 542
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 545
    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_3

    .line 550
    .end local v2    # "contains":Z
    :cond_a
    const/4 v10, 0x2

    goto :goto_4

    .line 555
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->cancelLongPress()V

    .line 558
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 560
    .local v5, "inside":Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 561
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    move-result v1

    .line 562
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    goto/16 :goto_0

    .line 566
    .end local v5    # "inside":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->cancelLongPress()V

    .line 569
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 571
    .restart local v5    # "inside":Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    .line 572
    const/16 v10, 0xf

    invoke-virtual {p0, v10, v5, p1}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    move-result v1

    .line 573
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/flix/components/TouchArea;->mHandlingEvents:Z

    goto/16 :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected projectPointOnArea(FFZ[F)Z
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "projectIfOutside"    # Z
    .param p4, "outCoords"    # [F

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mPadLeft:F

    neg-float v2, v6

    .line 786
    .local v2, "left":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mPadTop:F

    neg-float v3, v6

    .line 787
    .local v3, "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/flix/components/TouchArea;->mPadRight:F

    add-float v4, v6, v7

    .line 788
    .local v4, "right":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mHeight:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/flix/components/TouchArea;->mPadBottom:F

    add-float v5, v6, v7

    .line 790
    .local v5, "bottom":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    if-nez v6, :cond_0

    .line 791
    const/16 v6, 0x8

    new-array v6, v6, [F

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    .line 796
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/ComponentTransform;->transformRectangle(FFFFLandroid/graphics/Matrix;[F)V

    .line 801
    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x0

    const/16 v8, 0x8

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v6, v7, v8}, Lcom/sonymobile/flix/components/ComponentTransform;->intersectPointWithBoundingRect(FF[FII)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 806
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x0

    aget v8, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x1

    aget v9, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x2

    aget v10, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x3

    aget v11, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x4

    aget v12, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v7, 0x5

    aget v13, v6, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v6 .. v14}, Lcom/sonymobile/flix/components/ComponentTransform;->projectPointOnRectangle(FFFFFFFF[F)Z

    move-result v15

    .line 811
    .local v15, "insideRectangle":Z
    if-eqz p4, :cond_4

    if-nez p3, :cond_3

    if-eqz v15, :cond_4

    .line 813
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float v8, v4, v2

    mul-float/2addr v7, v8

    aput v7, p4, v6

    .line 814
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/flix/components/TouchArea;->mTempFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-float v8, v5, v3

    mul-float/2addr v7, v8

    aput v7, p4, v6

    .line 819
    .end local v15    # "insideRectangle":Z
    :cond_4
    :goto_0
    return v15

    :cond_5
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public final setLongPressDelay(J)V
    .locals 1
    .param p1, "longPressDelay"    # J

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressDelay:J

    .line 275
    return-void
.end method

.method public final setLongPressEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressEnabled:Z

    if-eq p1, v0, :cond_1

    .line 257
    if-nez p1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/TouchArea;->cancelLongPress()V

    .line 260
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressEnabled:Z

    .line 261
    if-eqz p1, :cond_2

    new-instance v0, Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;-><init>(Lcom/sonymobile/flix/components/TouchArea;)V

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mLongPressRunnable:Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;

    .line 263
    :cond_1
    return-void

    .line 261
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchEnabled:Z

    .line 198
    return-void
.end method

.method public final setTouchPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 208
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/sonymobile/flix/components/TouchArea;->setTouchPadding(FFFF)V

    .line 209
    return-void
.end method

.method public final setTouchPadding(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 221
    iput p1, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadLeft:F

    .line 222
    iput p2, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadTop:F

    .line 223
    iput p3, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadRight:F

    .line 224
    iput p4, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadBottom:F

    .line 225
    return-void
.end method

.method public final setTouchSlop(I)V
    .locals 1
    .param p1, "touchSlop"    # I

    .prologue
    .line 238
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 243
    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sonymobile/flix/components/TouchArea;->mTouchSlopSq:I

    .line 244
    return-void

    .line 243
    :cond_1
    mul-int v0, p1, p1

    goto :goto_0
.end method

.method public final setTrackTouchDragging(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/TouchArea;->mTrackDragging:Z

    .line 322
    return-void
.end method

.method public final setTrackTouchFromOutside(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/TouchArea;->mTrackTouchFromOutside:Z

    .line 298
    return-void
.end method

.method public transformToLocalCoordinates(FFZ[F)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "calcIfOutside"    # Z
    .param p4, "outCoords"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 756
    iget-object v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_1

    .line 757
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/TouchArea;->projectPointOnArea(FFZ[F)Z

    move-result v1

    .line 779
    :cond_0
    :goto_0
    return v1

    .line 758
    :cond_1
    iget-boolean v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mScaled:Z

    if-eqz v7, :cond_4

    .line 759
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadLeft:F

    iget v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mScalingX:F

    mul-float/2addr v8, v9

    sub-float v2, v7, v8

    .line 760
    .local v2, "left":F
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnTop:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadTop:F

    iget v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mScalingY:F

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 761
    .local v4, "top":F
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mWidth:F

    iget v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadRight:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mScalingX:F

    mul-float/2addr v8, v9

    add-float v3, v7, v8

    .line 762
    .local v3, "right":F
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnTop:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mHeight:F

    iget v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadBottom:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sonymobile/flix/components/TouchArea;->mScalingY:F

    mul-float/2addr v8, v9

    add-float v0, v7, v8

    .line 763
    .local v0, "bottom":F
    cmpl-float v7, p1, v2

    if-ltz v7, :cond_3

    cmpl-float v7, p2, v4

    if-ltz v7, :cond_3

    cmpg-float v7, p1, v3

    if-gtz v7, :cond_3

    cmpg-float v7, p2, v0

    if-gtz v7, :cond_3

    move v1, v5

    .line 764
    .local v1, "insideRectangle":Z
    :goto_1
    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    if-eqz v1, :cond_0

    .line 765
    :cond_2
    sub-float v7, p1, v2

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mScalingX:F

    div-float/2addr v7, v8

    aput v7, p4, v6

    .line 766
    sub-float v6, p2, v4

    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mScalingY:F

    div-float/2addr v6, v7

    aput v6, p4, v5

    goto :goto_0

    .end local v1    # "insideRectangle":Z
    :cond_3
    move v1, v6

    .line 763
    goto :goto_1

    .line 770
    .end local v0    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "top":F
    :cond_4
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadLeft:F

    sub-float v2, v7, v8

    .line 771
    .restart local v2    # "left":F
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnTop:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadTop:F

    sub-float v4, v7, v8

    .line 772
    .restart local v4    # "top":F
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mWidth:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadRight:F

    add-float v3, v7, v8

    .line 773
    .restart local v3    # "right":F
    iget v7, p0, Lcom/sonymobile/flix/components/TouchArea;->mDrawnTop:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mHeight:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sonymobile/flix/components/TouchArea;->mPadBottom:F

    add-float v0, v7, v8

    .line 774
    .restart local v0    # "bottom":F
    cmpl-float v7, p1, v2

    if-ltz v7, :cond_6

    cmpl-float v7, p2, v4

    if-ltz v7, :cond_6

    cmpg-float v7, p1, v3

    if-gtz v7, :cond_6

    cmpg-float v7, p2, v0

    if-gtz v7, :cond_6

    move v1, v5

    .line 775
    .restart local v1    # "insideRectangle":Z
    :goto_2
    if-eqz p4, :cond_0

    if-nez p3, :cond_5

    if-eqz v1, :cond_0

    .line 776
    :cond_5
    sub-float v7, p1, v2

    aput v7, p4, v6

    .line 777
    sub-float v6, p2, v4

    aput v6, p4, v5

    goto/16 :goto_0

    .end local v1    # "insideRectangle":Z
    :cond_6
    move v1, v6

    .line 774
    goto :goto_2
.end method
