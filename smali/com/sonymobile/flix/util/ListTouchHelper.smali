.class public Lcom/sonymobile/flix/util/ListTouchHelper;
.super Ljava/lang/Object;
.source "ListTouchHelper.java"

# interfaces
.implements Lcom/sonymobile/flix/util/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;,
        Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;,
        Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;,
        Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;,
        Lcom/sonymobile/flix/util/ListTouchHelper$Listener;
    }
.end annotation


# instance fields
.field protected mAutoSnappingEnabled:Z

.field protected mBoundsEnabled:Z

.field protected mBoundsMax:F

.field protected mBoundsMin:F

.field protected mDelayedStop:Z

.field protected mDeltaPosition:F

.field protected mDirection:I

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDpiScaling:F

.field protected mDragStartPosition:F

.field protected mDragging:Z

.field protected mDraggingSpeed:F

.field protected mFlickVelocityThreshold:F

.field protected mFlingAcceleration:F

.field protected mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

.field protected mFlingFriction:F

.field protected mFlingSpeed:F

.field protected mFlingStartPosition:F

.field protected mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

.field protected mFlingVelocityThreshold:F

.field protected mFlinging:Z

.field protected mInvertedDirection:Z

.field protected mLastMoveTime:J

.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/util/ListTouchHelper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMoveType:I

.field protected mPosition:F

.field protected mRubberbandAtMaxBound:Z

.field protected mRubberbandAtMinBound:Z

.field protected mRubberbandDamping:F

.field protected mRubberbandFriction:F

.field protected mRubberbandLength:F

.field protected mRubberbandSpeedMultiplier:F

.field protected mRubberbandStiffness:F

.field protected mScheduler:Lcom/sonymobile/flix/util/Scheduler;

.field protected mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

.field protected mSnapDamping:F

.field protected mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

.field protected mSnapStiffness:F

.field protected mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

.field protected mSnappedDistanceTolerance:F

.field protected mSnapping:Z

.field protected mSnappingStrategy:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;

.field protected mStoppedVelocityThreshold:F

.field protected mSwiped:Z

.field protected mToSnapVelocityThreshold:F

.field protected mVelocity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    if-nez p2, :cond_0

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Scheduler must be provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 235
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 237
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 239
    iput-object p2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    .line 241
    const-wide/16 v2, -0x1f4

    iput-wide v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDelayedStop:Z

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(I)V

    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDefaultParams()V

    .line 248
    new-instance v1, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;-><init>(F)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnappingStrategy:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;

    .line 249
    new-instance v1, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    invoke-direct {v1}, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    .line 252
    new-instance v1, Lcom/sonymobile/flix/util/FrictionDynamics;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/util/FrictionDynamics;-><init>(F)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    .line 256
    new-instance v1, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;-><init>(Lcom/sonymobile/flix/util/ListTouchHelper;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    .line 259
    new-instance v1, Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonymobile/flix/util/SpringDynamics;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    .line 262
    new-instance v1, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;-><init>(Lcom/sonymobile/flix/util/ListTouchHelper;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    .line 263
    return-void
.end method

.method protected static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 914
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "min":F
    :goto_0
    return p1

    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private final isThresholdDisabled(F)Z
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    .line 1106
    cmpl-float v0, p1, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->abortSnap()V

    .line 677
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->abortFling()V

    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 679
    return-void
.end method

.method public abortFling()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->abort()V

    .line 667
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Scheduler;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 668
    return-void
.end method

.method public abortSnap()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->abort()V

    .line 672
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Scheduler;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 673
    return-void
.end method

.method public addListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    return-void
.end method

.method public adjustDraggingSpeed(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 370
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDraggingSpeed:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDraggingSpeed:F

    .line 371
    return-void
.end method

.method public adjustFlingAcceleration(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 394
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingAcceleration:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingAcceleration:F

    .line 395
    return-void
.end method

.method public adjustFlingFriction(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 406
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingFriction:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingFriction:F

    .line 407
    return-void
.end method

.method public adjustFlingSpeed(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 382
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingSpeed:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingSpeed:F

    .line 383
    return-void
.end method

.method public adjustRubberband(FFF)V
    .locals 1
    .param p1, "inertia"    # F
    .param p2, "stiffness"    # F
    .param p3, "length"    # F

    .prologue
    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustRubberbandSpeedMultiplier(F)V

    .line 359
    invoke-virtual {p0, p3}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustRubberbandLength(F)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustRubberbandFriction(F)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustRubberbandStiffness(F)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustRubberbandDamping(F)V

    .line 363
    return-void
.end method

.method public adjustRubberbandDamping(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 587
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandDamping:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandDamping:F

    .line 588
    return-void
.end method

.method public adjustRubberbandFriction(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 563
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandFriction:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandFriction:F

    .line 564
    return-void
.end method

.method public adjustRubberbandLength(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 551
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    .line 552
    return-void
.end method

.method public adjustRubberbandSpeedMultiplier(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 539
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    .line 540
    return-void
.end method

.method public adjustRubberbandStiffness(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 575
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandStiffness:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandStiffness:F

    .line 576
    return-void
.end method

.method public adjustScrolling(FFFF)V
    .locals 0
    .param p1, "draggingSpeed"    # F
    .param p2, "flingingSpeed"    # F
    .param p3, "acceleration"    # F
    .param p4, "friction"    # F

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustDraggingSpeed(F)V

    .line 347
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustFlingSpeed(F)V

    .line 348
    invoke-virtual {p0, p3}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustFlingAcceleration(F)V

    .line 349
    invoke-virtual {p0, p4}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustFlingFriction(F)V

    .line 350
    return-void
.end method

.method public adjustSnapDamping(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 510
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDamping:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDamping:F

    .line 511
    return-void
.end method

.method public adjustSnapStiffness(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 498
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapStiffness:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapStiffness:F

    .line 499
    return-void
.end method

.method public adjustSnapping(FF)V
    .locals 0
    .param p1, "stiffness"    # F
    .param p2, "damping"    # F

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustSnapStiffness(F)V

    .line 354
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustSnapDamping(F)V

    .line 355
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1051
    return-void
.end method

.method public getBoundsMax()F
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    return v0
.end method

.method public getBoundsMin()F
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->requestSnap(F)Z

    .line 626
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->getNearestSnapIndex()I

    move-result v0

    return v0
.end method

.method protected getNearestSnapIndex()I
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->getNearestSnapIndex(F)I

    move-result v0

    return v0
.end method

.method protected getNearestSnapIndex(F)I
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v1, v1, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    sub-float/2addr v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexPrev:I

    .line 1084
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mIndexNext:I

    goto :goto_0
.end method

.method protected getNearestSnapPosition()F
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPosition:F

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v1, v1, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v1, v1, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v2, v2, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPosition:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    .line 1092
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    return v0
.end method

.method protected getSnapPosition(Z)F
    .locals 6
    .param p1, "forward"    # Z

    .prologue
    .line 1097
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v4, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    .line 1098
    .local v0, "from":F
    :goto_0
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v3, v4, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    .line 1099
    .local v3, "to":F
    :goto_1
    sub-float v4, v3, v0

    iget-object v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v5, v5, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mResistance:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1100
    .local v2, "thresholdProgress":F
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPosition:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1101
    .local v1, "progress":F
    cmpg-float v4, v1, v2

    if-gez v4, :cond_2

    .end local v0    # "from":F
    :goto_2
    return v0

    .line 1097
    .end local v1    # "progress":F
    .end local v2    # "thresholdProgress":F
    .end local v3    # "to":F
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v0, v4, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    goto :goto_0

    .line 1098
    .restart local v0    # "from":F
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v3, v4, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    goto :goto_1

    .restart local v1    # "progress":F
    .restart local v2    # "thresholdProgress":F
    .restart local v3    # "to":F
    :cond_2
    move v0, v3

    .line 1101
    goto :goto_2
.end method

.method public getSnapTarget()F
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/SpringDynamics;->getTarget()F

    move-result v0

    return v0
.end method

.method public isFlinging()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlinging:Z

    return v0
.end method

.method public isSnapping()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapping:Z

    return v0
.end method

.method protected jumpTo(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveBegin()V

    .line 847
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 848
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveEnd()V

    .line 849
    return-void
.end method

.method protected move(FZI)V
    .locals 12
    .param p1, "delta"    # F
    .param p2, "stop"    # Z
    .param p3, "moveType"    # I

    .prologue
    const/4 v11, 0x0

    .line 704
    iput p3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mMoveType:I

    .line 705
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    add-float v6, v8, p1

    .line 706
    .local v6, "position":F
    iget-boolean v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsEnabled:Z

    if-eqz v8, :cond_0

    .line 707
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    cmpg-float v8, v6, v8

    if-gez v8, :cond_4

    cmpg-float v8, p1, v11

    if-gez v8, :cond_4

    .line 708
    iget-boolean v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandAtMinBound:Z

    if-eqz v8, :cond_3

    .line 712
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 714
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    mul-float/2addr v9, p1

    add-float v6, v8, v9

    .line 720
    :goto_0
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    sub-float/2addr v8, v9

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    .line 722
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    sub-float v6, v8, v9

    .line 749
    :cond_0
    :goto_1
    if-eqz p2, :cond_7

    .line 750
    iput v11, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 751
    const-wide/16 v8, -0x1f4

    iput-wide v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    .line 769
    :cond_1
    :goto_2
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    sub-float v8, v6, v8

    iput v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDeltaPosition:F

    .line 771
    iput v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    .line 773
    iget-object v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 774
    .local v3, "nbrListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_9

    .line 775
    iget-object v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v10, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    invoke-interface {v8, v9, v10}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onMove(FF)V

    .line 774
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 717
    .end local v2    # "i":I
    .end local v3    # "nbrListeners":I
    :cond_2
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    sub-float v9, v6, v9

    iget v10, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    mul-float/2addr v9, v10

    add-float v6, v8, v9

    goto :goto_0

    .line 725
    :cond_3
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    goto :goto_1

    .line 727
    :cond_4
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_0

    cmpl-float v8, p1, v11

    if-lez v8, :cond_0

    .line 728
    iget-boolean v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandAtMaxBound:Z

    if-eqz v8, :cond_6

    .line 731
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 733
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    mul-float/2addr v9, p1

    add-float v6, v8, v9

    .line 739
    :goto_4
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    add-float/2addr v8, v9

    cmpl-float v8, v6, v8

    if-lez v8, :cond_0

    .line 741
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    add-float v6, v8, v9

    goto :goto_1

    .line 736
    :cond_5
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    sub-float v9, v6, v9

    iget v10, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    mul-float/2addr v9, v10

    add-float v6, v8, v9

    goto :goto_4

    .line 744
    :cond_6
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    goto :goto_1

    .line 754
    :cond_7
    iget-object v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v8}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v4

    .line 755
    .local v4, "now":J
    iget-wide v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    sub-long v0, v4, v8

    .line 756
    .local v0, "elapsed":J
    const-wide/16 v8, 0x1f4

    cmp-long v8, v0, v8

    if-ltz v8, :cond_8

    .line 758
    iput v11, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 759
    iput-wide v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    goto/16 :goto_2

    .line 760
    :cond_8
    const-wide/16 v8, 0x8

    cmp-long v8, v0, v8

    if-ltz v8, :cond_1

    .line 763
    const v8, 0x3a83126f    # 0.001f

    iget v9, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    iget-wide v10, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    sub-long v10, v4, v10

    long-to-float v9, v10

    div-float v7, v8, v9

    .line 764
    .local v7, "velocity":F
    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    const v9, 0x3f59999a    # 0.85f

    mul-float/2addr v8, v9

    const v9, 0x3e19999a    # 0.15f

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 765
    iput-wide v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    goto/16 :goto_2

    .line 777
    .end local v0    # "elapsed":J
    .end local v4    # "now":J
    .end local v7    # "velocity":F
    .restart local v2    # "i":I
    .restart local v3    # "nbrListeners":I
    :cond_9
    return-void
.end method

.method public moveBegin()V
    .locals 0

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyMoveStarted()V

    .line 683
    return-void
.end method

.method public moveEnd()V
    .locals 0

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyStopped()V

    .line 687
    return-void
.end method

.method public moveTo(F)V
    .locals 3
    .param p1, "position"    # F

    .prologue
    .line 694
    const-wide/16 v0, -0x1f4

    iput-wide v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mLastMoveTime:J

    .line 695
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    sub-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->move(FZI)V

    .line 696
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 697
    return-void
.end method

.method protected notifyMoveStarted()V
    .locals 5

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1055
    .local v1, "nbrListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onMoveStarted(FF)V

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    :cond_0
    return-void
.end method

.method protected notifyStopped()V
    .locals 4

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1062
    .local v1, "nbrListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-interface {v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onStop(F)V

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    :cond_0
    return-void
.end method

.method public onClick(FFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1031
    return-void
.end method

.method public onDrag(FFFFLandroid/view/MotionEvent;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 941
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDirection:I

    if-nez v1, :cond_1

    move v0, p4

    .line 942
    .local v0, "d":F
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mInvertedDirection:Z

    if-eqz v1, :cond_0

    .line 943
    neg-float v0, v0

    .line 946
    :cond_0
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDraggingSpeed:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDpiScaling:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->move(FZI)V

    .line 947
    return-void

    .end local v0    # "d":F
    :cond_1
    move v0, p3

    .line 941
    goto :goto_0
.end method

.method public onDraggingStarted(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDragging:Z

    .line 956
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyMoveStarted()V

    .line 957
    return-void
.end method

.method public onLongPress(FFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1035
    const/4 v0, 0x0

    return v0
.end method

.method public onPress(FFLandroid/view/MotionEvent;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 921
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSwiped:Z

    .line 922
    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iput v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDragStartPosition:F

    .line 925
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->isFlinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->abortFling()V

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->isSnapping()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->abortSnap()V

    .line 931
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 933
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 934
    .local v1, "nbrListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 935
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-interface {v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onPress(F)V

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    :cond_2
    return-void
.end method

.method public onReleased()V
    .locals 2

    .prologue
    .line 961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDragging:Z

    .line 962
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSwiped:Z

    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapToBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mAutoSnappingEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapToClosest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Scheduler;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyStopped()V

    goto :goto_0
.end method

.method public onSecondaryClick(FFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 951
    return-void
.end method

.method public onSwipe(FFFFLandroid/view/MotionEvent;)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vx"    # F
    .param p4, "vy"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 980
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDirection:I

    if-nez v6, :cond_1

    move v5, p4

    .line 981
    .local v5, "v":F
    :goto_0
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iput v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingStartPosition:F

    .line 984
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/util/FrictionDynamics;->setValue(F)V

    .line 987
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    .line 988
    .local v2, "sign":F
    :goto_1
    mul-float v6, v2, v5

    iget v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingSpeed:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDpiScaling:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingAcceleration:F

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v5, v2, v6

    .line 989
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mInvertedDirection:Z

    if-eqz v6, :cond_0

    .line 990
    neg-float v5, v5

    .line 993
    :cond_0
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 995
    .local v4, "speed":F
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingVelocityThreshold:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 996
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSwiped:Z

    .line 999
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    invoke-virtual {v6, v5}, Lcom/sonymobile/flix/util/FrictionDynamics;->setVelocity(F)V

    .line 1000
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    invoke-virtual {v6}, Lcom/sonymobile/flix/util/FrictionDynamics;->reset()V

    .line 1001
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    invoke-virtual {v6, v5}, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->init(F)V

    .line 1002
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/util/Scheduler;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1003
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1004
    .local v1, "nbrListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 1005
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    iget v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-interface {v6, v7, v5}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onFling(FF)V

    .line 1004
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    .end local v2    # "sign":F
    .end local v4    # "speed":F
    .end local v5    # "v":F
    :cond_1
    move v5, p3

    .line 980
    goto :goto_0

    .line 987
    .restart local v5    # "v":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1008
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    .restart local v2    # "sign":F
    .restart local v4    # "speed":F
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingTask:Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/util/Scheduler;->updateTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1027
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_4
    :goto_3
    return-void

    .line 1009
    :cond_5
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlickVelocityThreshold:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_4

    .line 1010
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSwiped:Z

    .line 1013
    iget v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->requestSnap(F)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1014
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v3, v6, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionPrev:F

    .line 1015
    .local v3, "snapTo":F
    :goto_4
    invoke-virtual {p0, v3, v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapTo(FF)V

    .line 1016
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1017
    .restart local v1    # "nbrListeners":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v1, :cond_7

    .line 1018
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    iget v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-interface {v6, v7, v3, v5}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onFlick(FFF)V

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1014
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    .end local v3    # "snapTo":F
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iget v3, v6, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPositionNext:F

    goto :goto_4

    .line 1021
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    .restart local v3    # "snapTo":F
    :cond_7
    iget-object v6, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v7, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/util/Scheduler;->updateTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_3
.end method

.method public removeListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1046
    return-void
.end method

.method protected requestSnap(F)Z
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnappingStrategy:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;

    if-nez v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A SnappingStrategy must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->reset()V

    .line 1072
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    iput p1, v0, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;->mPosition:F

    .line 1073
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnappingStrategy:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;

    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnap:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;

    invoke-interface {v0, p0, p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;->onRequestSnap(Lcom/sonymobile/flix/util/ListTouchHelper;FLcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy$Snap;)Z

    move-result v0

    return v0
.end method

.method public setAutoSnapping(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mAutoSnappingEnabled:Z

    .line 276
    return-void
.end method

.method public setBounds(FF)V
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    const/4 v3, 0x1

    .line 607
    iput-boolean v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsEnabled:Z

    .line 608
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    .line 609
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    .line 610
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 611
    .local v1, "nbrListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 612
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-interface {v2, v3, p1, p2}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onBoundsChanged(ZFF)V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    return-void
.end method

.method public setDefaultParams()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 297
    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 298
    .local v0, "mTargetDpi":F
    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDpiScaling:F

    .line 299
    const v1, 0x3b449ba6    # 0.003f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDraggingSpeed(F)V

    .line 300
    const v1, 0x3b83126f    # 0.004f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingSpeed(F)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingAcceleration(F)V

    .line 302
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingFriction(F)V

    .line 303
    const/high16 v1, 0x43160000    # 150.0f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setSnapStiffness(F)V

    .line 304
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setSnapDamping(F)V

    .line 305
    invoke-virtual {p0, v5, v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandEnabled(ZZ)V

    .line 306
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandSpeedMultiplier(F)V

    .line 307
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandLength(F)V

    .line 308
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandFriction(F)V

    .line 309
    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandStiffness(F)V

    .line 310
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandDamping(F)V

    .line 311
    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlickVelocityThreshold(F)V

    .line 312
    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingVelocityThreshold(F)V

    .line 313
    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setStoppedVelocityThreshold(F)V

    .line 314
    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setToSnapVelocityThreshold(F)V

    .line 315
    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setSnappedDistanceTolerance(F)V

    .line 316
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(IZ)V

    .line 267
    return-void
.end method

.method public setDirection(IZ)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "inverted"    # Z

    .prologue
    .line 270
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDirection:I

    .line 271
    iput-boolean p2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mInvertedDirection:Z

    .line 272
    return-void
.end method

.method public setDpiScaling(F)V
    .locals 0
    .param p1, "dpiScaling"    # F

    .prologue
    .line 293
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDpiScaling:F

    .line 294
    return-void
.end method

.method public setDraggingSpeed(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDraggingSpeed:F

    .line 367
    return-void
.end method

.method public setFlickVelocityThreshold(F)V
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->isThresholdDisabled(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlickVelocityThreshold:F

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlickVelocityThreshold:F

    goto :goto_0
.end method

.method public setFlingAcceleration(F)V
    .locals 0
    .param p1, "acceleration"    # F

    .prologue
    .line 390
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingAcceleration:F

    .line 391
    return-void
.end method

.method public setFlingFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 402
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingFriction:F

    .line 403
    return-void
.end method

.method public setFlingSpeed(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 378
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingSpeed:F

    .line 379
    return-void
.end method

.method public setFlingVelocityThreshold(F)V
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->isThresholdDisabled(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingVelocityThreshold:F

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingVelocityThreshold:F

    goto :goto_0
.end method

.method public setPixelPreciseParams()V
    .locals 5

    .prologue
    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 319
    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 320
    .local v0, "screenSize":I
    iput v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mDpiScaling:F

    .line 321
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDraggingSpeed(F)V

    .line 322
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingSpeed(F)V

    .line 323
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setSnappedDistanceTolerance(F)V

    .line 324
    int-to-float v1, v0

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setToSnapVelocityThreshold(F)V

    .line 325
    int-to-float v1, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setStoppedVelocityThreshold(F)V

    .line 326
    int-to-float v1, v0

    mul-float/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingVelocityThreshold(F)V

    .line 327
    int-to-float v1, v0

    mul-float/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlickVelocityThreshold(F)V

    .line 328
    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandLength(F)V

    .line 329
    return-void
.end method

.method public setRubberbandDamping(F)V
    .locals 0
    .param p1, "damping"    # F

    .prologue
    .line 583
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandDamping:F

    .line 584
    return-void
.end method

.method public setRubberbandEnabled(ZZ)V
    .locals 0
    .param p1, "atMinBound"    # Z
    .param p2, "atMaxBound"    # Z

    .prologue
    .line 530
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandAtMinBound:Z

    .line 531
    iput-boolean p2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandAtMaxBound:Z

    .line 532
    return-void
.end method

.method public setRubberbandFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 559
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandFriction:F

    .line 560
    return-void
.end method

.method public setRubberbandLength(F)V
    .locals 0
    .param p1, "length"    # F

    .prologue
    .line 547
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandLength:F

    .line 548
    return-void
.end method

.method public setRubberbandSpeedMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 535
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandSpeedMultiplier:F

    .line 536
    return-void
.end method

.method public setRubberbandStiffness(F)V
    .locals 0
    .param p1, "stiffness"    # F

    .prologue
    .line 571
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandStiffness:F

    .line 572
    return-void
.end method

.method public setSnapDamping(F)V
    .locals 0
    .param p1, "damping"    # F

    .prologue
    .line 506
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDamping:F

    .line 507
    return-void
.end method

.method public setSnapStiffness(F)V
    .locals 0
    .param p1, "stiffness"    # F

    .prologue
    .line 494
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapStiffness:F

    .line 495
    return-void
.end method

.method public setSnappedDistanceTolerance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 518
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnappedDistanceTolerance:F

    .line 519
    return-void
.end method

.method public setSnappingStrategy(Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;)V
    .locals 0
    .param p1, "snappingStrategy"    # Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnappingStrategy:Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;

    .line 280
    return-void
.end method

.method public setStoppedVelocityThreshold(F)V
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->isThresholdDisabled(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mStoppedVelocityThreshold:F

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mStoppedVelocityThreshold:F

    goto :goto_0
.end method

.method public setToSnapVelocityThreshold(F)V
    .locals 1
    .param p1, "velocity"    # F

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->isThresholdDisabled(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mToSnapVelocityThreshold:F

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iput p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mToSnapVelocityThreshold:F

    goto :goto_0
.end method

.method protected snap(FFFJ)V
    .locals 8
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "initialVelocity"    # F
    .param p4, "now"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 860
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsEnabled:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 863
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJZ)V

    .line 874
    :goto_0
    return-void

    .line 864
    :cond_0
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 866
    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJZ)V

    goto :goto_0

    .line 867
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    .line 869
    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJZ)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 872
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJZ)V

    goto :goto_0
.end method

.method protected snap(FFFJZ)V
    .locals 5
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "initialVelocity"    # F
    .param p4, "now"    # J
    .param p6, "outside"    # Z

    .prologue
    .line 877
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsEnabled:Z

    if-eqz v2, :cond_0

    .line 878
    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    invoke-static {p2, v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->clamp(FFF)F

    move-result p2

    .line 883
    :cond_0
    if-eqz p6, :cond_1

    .line 884
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandStiffness:F

    iget v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandDamping:F

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/util/SpringDynamics;->setSpring(FF)V

    .line 890
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v2, p1}, Lcom/sonymobile/flix/util/SpringDynamics;->setValue(F)V

    .line 891
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v2, p3}, Lcom/sonymobile/flix/util/SpringDynamics;->setVelocity(F)V

    .line 892
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnappedDistanceTolerance:F

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/SpringDynamics;->setAtRestDistance(F)V

    .line 893
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mStoppedVelocityThreshold:F

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/SpringDynamics;->setAtRestVelocity(F)V

    .line 895
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v2, p2}, Lcom/sonymobile/flix/util/SpringDynamics;->setTarget(F)V

    .line 896
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/SpringDynamics;->reset()V

    .line 898
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapping:Z

    .line 899
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->init()V

    .line 903
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/Scheduler;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 904
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/Scheduler;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 905
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 906
    .local v1, "nbrListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 907
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener;->onSnap(FF)V

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 886
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    iget v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapStiffness:F

    iget v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDamping:F

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/util/SpringDynamics;->setSpring(FF)V

    goto :goto_0

    .line 910
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapTask:Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/Scheduler;->updateTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 911
    return-void
.end method

.method public snapTo(F)V
    .locals 6
    .param p1, "position"    # F

    .prologue
    .line 852
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v4

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJ)V

    .line 853
    return-void
.end method

.method protected snapTo(FF)V
    .locals 6
    .param p1, "position"    # F
    .param p2, "initialVelocity"    # F

    .prologue
    .line 856
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v4

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJ)V

    .line 857
    return-void
.end method

.method public snapToBounds()Z
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapToBounds(Z)Z

    move-result v0

    return v0
.end method

.method public snapToBounds(Z)Z
    .locals 7
    .param p1, "instant"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 825
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsEnabled:Z

    if-eqz v0, :cond_3

    .line 826
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 827
    if-eqz p1, :cond_0

    .line 828
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->jumpTo(F)V

    :goto_0
    move v0, v6

    .line 842
    :goto_1
    return v0

    .line 830
    :cond_0
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJ)V

    goto :goto_0

    .line 833
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 834
    if-eqz p1, :cond_2

    .line 835
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->jumpTo(F)V

    :goto_2
    move v0, v6

    .line 839
    goto :goto_1

    .line 837
    :cond_2
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJ)V

    goto :goto_2

    .line 842
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public snapToClosest()Z
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapToClosest(Z)Z

    move-result v0

    return v0
.end method

.method public snapToClosest(Z)Z
    .locals 6
    .param p1, "instant"    # Z

    .prologue
    .line 809
    iget v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->requestSnap(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->getNearestSnapPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->jumpTo(F)V

    .line 815
    :goto_0
    const/4 v0, 0x1

    .line 817
    :goto_1
    return v0

    .line 813
    :cond_0
    iget v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    invoke-virtual {p0}, Lcom/sonymobile/flix/util/ListTouchHelper;->getNearestSnapPosition()F

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJ)V

    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
