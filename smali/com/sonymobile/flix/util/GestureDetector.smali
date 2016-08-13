.class public Lcom/sonymobile/flix/util/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;,
        Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;,
        Lcom/sonymobile/flix/util/GestureDetector$GestureAdapter;,
        Lcom/sonymobile/flix/util/GestureDetector$GestureListener;,
        Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;,
        Lcom/sonymobile/flix/util/GestureDetector$TouchState;
    }
.end annotation


# instance fields
.field protected mDragSlop:I

.field private mDraggingOutsideDragSlop:Z

.field private mDx:F

.field private mDy:F

.field protected mGestureEventListener:Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;

.field protected mGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/GestureDetector$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mHorizontalDraggingEnabled:Z

.field protected mIsPointerIdInitialized:Z

.field protected mLastX:F

.field protected mLastY:F

.field protected mLongPressDelay:J

.field protected mLongPressEnabled:Z

.field protected mLongPressRunnable:Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

.field protected mPointerId:I

.field protected mPressX:F

.field protected mPressY:F

.field private mSloppyDraggingEnabled:Z

.field protected mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

.field protected mTouchSlopSq:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalDraggingEnabled:Z

.field private mVx:F

.field private mVy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v1, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;-><init>(Lcom/sonymobile/flix/util/GestureDetector;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressRunnable:Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

    .line 278
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 279
    .local v0, "touchSlop":I
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;->init(IJ)V

    .line 280
    return-void
.end method

.method private init(IJ)V
    .locals 2
    .param p1, "touchSlop"    # I
    .param p2, "longPressDelay"    # J

    .prologue
    const/4 v1, 0x1

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/GestureDetector;->setTouchSlop(I)V

    .line 295
    mul-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->setDragSlop(I)V

    .line 296
    iput-wide p2, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressDelay:J

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressEnabled:Z

    .line 298
    iput-boolean v1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHorizontalDraggingEnabled:Z

    .line 299
    iput-boolean v1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVerticalDraggingEnabled:Z

    .line 300
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 302
    return-void
.end method


# virtual methods
.method public addGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressRunnable:Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->setEvent(Landroid/view/MotionEvent;)V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressRunnable:Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method protected gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureEventListener:Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureEventListener:Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;

    invoke-interface {v0, p0, p1}, Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;->onGestureEvent(Lcom/sonymobile/flix/util/GestureDetector;Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 766
    :cond_0
    return-void
.end method

.method protected handleTouchDown(Landroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 541
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 542
    .local v4, "pointerIndex":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 543
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 544
    iget-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 545
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 546
    .local v5, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 547
    .local v6, "y":F
    iput p2, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPointerId:I

    .line 548
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mIsPointerIdInitialized:Z

    .line 549
    iput v5, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressX:F

    .line 550
    iput v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressY:F

    .line 551
    iput v5, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastX:F

    .line 552
    iput v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastY:F

    .line 553
    sget-object v7, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 555
    sget-object v7, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v7}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 556
    iget-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 557
    .local v1, "nbrGestureListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 558
    iget-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    invoke-interface {v7, v5, v6, p1}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onPress(FFLandroid/view/MotionEvent;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    iget-boolean v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressEnabled:Z

    if-eqz v7, :cond_1

    .line 562
    iget-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressRunnable:Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

    invoke-virtual {v7, p1}, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->setEvent(Landroid/view/MotionEvent;)V

    .line 563
    iget-wide v8, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressDelay:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    iget-wide v2, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressDelay:J

    .line 565
    .local v2, "longPressDelay":J
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressRunnable:Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;

    invoke-virtual {v7, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    .end local v0    # "i":I
    .end local v1    # "nbrGestureListeners":I
    .end local v2    # "longPressDelay":J
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    return-void

    .line 563
    .restart local v0    # "i":I
    .restart local v1    # "nbrGestureListeners":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v2, v7

    goto :goto_1
.end method

.method protected handleTouchEnd()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v1, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v1, :cond_0

    .line 718
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/GestureDetector;->cancelLongPress()V

    .line 712
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 716
    :cond_1
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mIsPointerIdInitialized:Z

    goto :goto_0
.end method

.method protected handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 576
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 582
    iget v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 583
    .local v10, "pointerIndex":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    .line 584
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 585
    .local v1, "x":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 586
    .local v2, "y":F
    iget v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastX:F

    .line 587
    .local v7, "lastX":F
    iget v8, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastY:F

    .line 588
    .local v8, "lastY":F
    iput v1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastX:F

    .line 589
    iput v2, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastY:F

    .line 591
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_3

    .line 592
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/util/GestureDetector;->startDragIfNeeded(FF)V

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_8

    .line 597
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDraggingOutsideDragSlop:Z

    if-nez v0, :cond_4

    .line 598
    iget v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressX:F

    sub-float v0, v1, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDragSlop:I

    if-le v0, v3, :cond_6

    .line 599
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHorizontalDraggingEnabled:Z

    if-eqz v0, :cond_5

    .line 600
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 601
    iput-boolean v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDraggingOutsideDragSlop:Z

    .line 619
    :cond_4
    :goto_1
    sub-float v0, v1, v7

    iput v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDx:F

    .line 620
    sub-float v0, v2, v8

    iput v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDy:F

    .line 621
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->DRAGGED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 622
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 623
    .local v9, "nbrGestureListeners":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    iget v3, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDx:F

    iget v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDy:F

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onDrag(FFFFLandroid/view/MotionEvent;)V

    .line 623
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 602
    .end local v6    # "i":I
    .end local v9    # "nbrGestureListeners":I
    :cond_5
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mSloppyDraggingEnabled:Z

    if-eqz v0, :cond_4

    .line 603
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 604
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 605
    iput-boolean v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDraggingOutsideDragSlop:Z

    goto :goto_1

    .line 607
    :cond_6
    iget v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressY:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDragSlop:I

    if-le v0, v3, :cond_4

    .line 608
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVerticalDraggingEnabled:Z

    if-eqz v0, :cond_7

    .line 609
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 610
    iput-boolean v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDraggingOutsideDragSlop:Z

    goto :goto_1

    .line 611
    :cond_7
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mSloppyDraggingEnabled:Z

    if-eqz v0, :cond_4

    .line 612
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 613
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 614
    iput-boolean v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDraggingOutsideDragSlop:Z

    goto :goto_1

    .line 626
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_0

    .line 627
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->DRAGGED_INSIDE_TOUCH_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    goto/16 :goto_0
.end method

.method protected handleTouchPointerUp(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 676
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v7, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v6, v7, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 681
    .local v5, "pointerIndex":I
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 682
    .local v1, "nbrGestureListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 683
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-interface {v6, v7, v8, p1}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onSecondaryClick(FFLandroid/view/MotionEvent;)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 687
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 688
    .local v4, "pointerId":I
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mIsPointerIdInitialized:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPointerId:I

    if-ne v4, v6, :cond_0

    .line 692
    if-nez v5, :cond_3

    const/4 v3, 0x1

    .line 693
    .local v3, "newPointerIndex":I
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 694
    .local v2, "newPointerId":I
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchEnd()V

    .line 695
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->RELEASED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 696
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 697
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 698
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    invoke-interface {v6}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onReleased()V

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 692
    .end local v2    # "newPointerId":I
    .end local v3    # "newPointerIndex":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 700
    .restart local v2    # "newPointerId":I
    .restart local v3    # "newPointerIndex":I
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchDown(Landroid/view/MotionEvent;I)V

    goto :goto_0
.end method

.method protected handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->RESTING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_1

    .line 668
    :cond_0
    return-void

    .line 641
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 642
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 643
    .local v2, "y":F
    iput v1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastX:F

    .line 644
    iput v2, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLastY:F

    .line 645
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_2

    .line 646
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 647
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 648
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVx:F

    .line 649
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVy:F

    .line 650
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->SWIPED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 651
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 652
    .local v7, "nbrGestureListeners":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 653
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    iget v3, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVx:F

    iget v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVy:F

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onSwipe(FFFFLandroid/view/MotionEvent;)V

    .line 652
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 655
    .end local v6    # "i":I
    .end local v7    # "nbrGestureListeners":I
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v0, v3, :cond_3

    .line 656
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 657
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 658
    .restart local v7    # "nbrGestureListeners":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 659
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    iget v3, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressX:F

    iget v4, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressY:F

    invoke-interface {v0, v3, v4, p1}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onClick(FFLandroid/view/MotionEvent;)V

    .line 658
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 662
    .end local v6    # "i":I
    .end local v7    # "nbrGestureListeners":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchEnd()V

    .line 663
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->RELEASED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 664
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 665
    .restart local v7    # "nbrGestureListeners":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v7, :cond_0

    .line 666
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    invoke-interface {v0}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onReleased()V

    .line 665
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    if-eqz p1, :cond_0

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 526
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchEnd()V

    .line 527
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->CANCELED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 531
    :cond_0
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 507
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 514
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 518
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 522
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/GestureDetector;->handleTouchPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public removeGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public setDragSlop(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 345
    iput p1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDragSlop:I

    .line 346
    return-void
.end method

.method public setGestureEventListener(Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureEventListener:Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;

    .line 318
    return-void
.end method

.method public setHorizontalDraggingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHorizontalDraggingEnabled:Z

    .line 365
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mLongPressEnabled:Z

    .line 388
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 1
    .param p1, "touchSlop"    # I

    .prologue
    .line 326
    mul-int v0, p1, p1

    iput v0, p0, Lcom/sonymobile/flix/util/GestureDetector;->mTouchSlopSq:I

    .line 327
    return-void
.end method

.method public setVerticalDraggingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVerticalDraggingEnabled:Z

    .line 374
    return-void
.end method

.method protected startDragIfNeeded(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 728
    iget v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressX:F

    sub-float v6, p1, v6

    float-to-int v0, v6

    .line 729
    .local v0, "dx":I
    iget v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mPressY:F

    sub-float v6, p2, v6

    float-to-int v2, v6

    .line 730
    .local v2, "dy":I
    mul-int v1, v0, v0

    .line 731
    .local v1, "dx2":I
    mul-int v3, v2, v2

    .line 732
    .local v3, "dy2":I
    add-int v6, v1, v3

    iget v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mTouchSlopSq:I

    if-le v6, v7, :cond_4

    .line 733
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHorizontalDraggingEnabled:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVerticalDraggingEnabled:Z

    if-eqz v6, :cond_1

    .line 734
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 741
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v7, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v6, v7, :cond_3

    .line 742
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 743
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDraggingOutsideDragSlop:Z

    .line 744
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 745
    .local v5, "nbrGestureListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 746
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    int-to-float v7, v0

    int-to-float v8, v2

    invoke-interface {v6, v7, v8}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onDraggingStarted(FF)V

    .line 745
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 735
    .end local v4    # "i":I
    .end local v5    # "nbrGestureListeners":I
    :cond_1
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHorizontalDraggingEnabled:Z

    if-eqz v6, :cond_2

    if-le v1, v3, :cond_2

    .line 736
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    goto :goto_0

    .line 737
    :cond_2
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVerticalDraggingEnabled:Z

    if-eqz v6, :cond_0

    if-le v3, v1, :cond_0

    .line 738
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DRAGGING:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    goto :goto_0

    .line 748
    :cond_3
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mHorizontalDraggingEnabled:Z

    if-nez v6, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDragSlop:I

    if-le v6, v7, :cond_5

    .line 749
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 750
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 760
    :cond_4
    :goto_2
    return-void

    .line 751
    :cond_5
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mVerticalDraggingEnabled:Z

    if-nez v6, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/sonymobile/flix/util/GestureDetector;->mDragSlop:I

    if-le v6, v7, :cond_6

    .line 752
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 753
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG_OUTSIDE_DRAG_SLOP:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    goto :goto_2

    .line 754
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v7, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v6, v7, :cond_4

    .line 755
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/GestureDetector;->cancelLongPress()V

    .line 756
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v6, p0, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 757
    sget-object v6, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->STARTED_DISABLED_DRAG:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    goto :goto_2
.end method
