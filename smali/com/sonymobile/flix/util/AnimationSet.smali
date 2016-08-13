.class public Lcom/sonymobile/flix/util/AnimationSet;
.super Lcom/sonymobile/flix/util/Animation;
.source "AnimationSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;
    }
.end annotation


# instance fields
.field protected mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

.field protected mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected mRunning:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected mSetDelayedFinish:Z

.field protected mSetDelayedStart:Z

.field protected mSetReversed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 47
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/sonymobile/flix/util/AnimationSet;-><init>(JJ)V

    .line 48
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 57
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/flix/util/AnimationSet;-><init>(JJ)V

    .line 58
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "delay"    # J

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/util/Animation;-><init>(JJ)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;-><init>(Lcom/sonymobile/flix/util/AnimationSet;)V

    iput-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/sonymobile/flix/util/Animation;)I
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 98
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-wide v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDelay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 100
    iget-wide v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDelay:J

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/flix/util/Animation;->setDelay(J)Lcom/sonymobile/flix/util/Animation;

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 103
    iget-wide v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 108
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mSetReversed:Z

    if-eqz v0, :cond_3

    .line 109
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mReversed:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/Animation;->setReversed(Z)Lcom/sonymobile/flix/util/Animation;

    .line 111
    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mSetDelayedStart:Z

    if-eqz v0, :cond_4

    .line 112
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDelayedStart:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/Animation;->setDelayedStart(Z)V

    .line 114
    :cond_4
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mSetDelayedFinish:Z

    if-eqz v0, :cond_5

    .line 115
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDelayedFinish:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/Animation;->setDelayedFinish(Z)V

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/Animation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/sonymobile/flix/util/Animation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 367
    return-void
.end method

.method public getAnimation(I)Lcom/sonymobile/flix/util/Animation;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    return-object v0
.end method

.method public onUpdate(FF)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 452
    return-void
.end method

.method public final onUpdate(J)Z
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 373
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->onUpdate(J)Z

    move-result v8

    .line 429
    :goto_0
    return v8

    .line 378
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 381
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 382
    .local v5, "nbrAnimations":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 383
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 384
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_1

    .line 385
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    .end local v4    # "i":I
    .end local v5    # "nbrAnimations":I
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 390
    .local v6, "nbrRunning":I
    const/4 v4, 0x0

    .line 391
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 392
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 393
    .restart local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->onUpdate(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 396
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 401
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    :cond_4
    iget-boolean v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mStarted:Z

    if-eqz v8, :cond_8

    .line 402
    iget-wide v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 403
    iput-wide p1, p0, Lcom/sonymobile/flix/util/AnimationSet;->mStartTime:J

    .line 405
    :cond_5
    iget-wide v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mStartTime:J

    sub-long v2, p1, v8

    .line 406
    .local v2, "elapsed":J
    iget-wide v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDuration:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_6

    .line 407
    iget-wide v2, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDuration:J

    .line 409
    :cond_6
    iget-boolean v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mReversed:Z

    if-eqz v8, :cond_9

    const/high16 v8, 0x3f800000    # 1.0f

    long-to-float v9, v2

    iget v10, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInvDuration:F

    mul-float/2addr v9, v10

    sub-float v1, v8, v9

    .line 410
    .local v1, "fraction":F
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v8, :cond_7

    .line 411
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 413
    :cond_7
    iget v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mStart:F

    iget v9, p0, Lcom/sonymobile/flix/util/AnimationSet;->mEnd:F

    iget v10, p0, Lcom/sonymobile/flix/util/AnimationSet;->mStart:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float v7, v8, v9

    .line 414
    .local v7, "value":F
    iget v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mValue:F

    sub-float v8, v7, v8

    iput v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDelta:F

    .line 415
    iput v7, p0, Lcom/sonymobile/flix/util/AnimationSet;->mValue:F

    .line 416
    iget v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mValue:F

    iget v9, p0, Lcom/sonymobile/flix/util/AnimationSet;->mDelta:F

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/flix/util/AnimationSet;->onUpdate(FF)V

    .line 418
    .end local v1    # "fraction":F
    .end local v2    # "elapsed":J
    .end local v7    # "value":F
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    iget-boolean v8, v8, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mHasFinished:Z

    if-eqz v8, :cond_a

    .line 421
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mHasFinished:Z

    .line 422
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    const/4 v9, 0x0

    iput v9, v8, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrStarted:I

    .line 423
    iget-object v8, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    const/4 v9, 0x0

    iput v9, v8, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrFinished:I

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/AnimationSet;->reset()V

    .line 426
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/AnimationSet;->notifyFinish()V

    .line 427
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 409
    .restart local v2    # "elapsed":J
    :cond_9
    long-to-float v8, v2

    iget v9, p0, Lcom/sonymobile/flix/util/AnimationSet;->mInvDuration:F

    mul-float v1, v8, v9

    goto :goto_3

    .line 429
    .end local v2    # "elapsed":J
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/sonymobile/flix/util/Animation;->reset()V

    .line 79
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 80
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 82
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Animation;->reset()V

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimationListener:Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->reset()V

    .line 87
    return-void
.end method

.method public bridge synthetic setDelay(J)Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/AnimationSet;->setDelay(J)Lcom/sonymobile/flix/util/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public setDelay(J)Lcom/sonymobile/flix/util/AnimationSet;
    .locals 7
    .param p1, "delay"    # J

    .prologue
    .line 226
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 229
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 230
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setDelay(J)Lcom/sonymobile/flix/util/Animation;

    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    .end local v1    # "i":I
    .end local v2    # "nbrAnimations":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setDelay(J)Lcom/sonymobile/flix/util/Animation;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/flix/util/AnimationSet;

    return-object v3
.end method

.method public setDelayedFinish(Z)V
    .locals 4
    .param p1, "delayedFinish"    # Z

    .prologue
    .line 346
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mSetDelayedFinish:Z

    .line 347
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 348
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 349
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 350
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Animation;->setDelayedFinish(Z)V

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/flix/util/Animation;->setDelayedFinish(Z)V

    .line 355
    return-void
.end method

.method public setDelayedStart(Z)V
    .locals 4
    .param p1, "delayedStart"    # Z

    .prologue
    .line 333
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mSetDelayedStart:Z

    .line 334
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 335
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 336
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 337
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Animation;->setDelayedStart(Z)V

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/flix/util/Animation;->setDelayedStart(Z)V

    .line 342
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/AnimationSet;->setDuration(J)Lcom/sonymobile/flix/util/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/sonymobile/flix/util/AnimationSet;
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 262
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 264
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 265
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 266
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    .end local v1    # "i":I
    .end local v2    # "nbrAnimations":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/flix/util/AnimationSet;

    return-object v3
.end method

.method public bridge synthetic setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/AnimationSet;
    .locals 4
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 299
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 300
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 301
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 302
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/flix/util/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/flix/util/AnimationSet;

    return-object v3
.end method

.method public setReversed(Z)Lcom/sonymobile/flix/util/Animation;
    .locals 4
    .param p1, "reversed"    # Z

    .prologue
    .line 320
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mSetReversed:Z

    .line 321
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 322
    .local v2, "nbrAnimations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 323
    iget-object v3, p0, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Animation;

    .line 324
    .local v0, "animation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Animation;->setReversed(Z)Lcom/sonymobile/flix/util/Animation;

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "animation":Lcom/sonymobile/flix/util/Animation;
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/flix/util/Animation;->setReversed(Z)Lcom/sonymobile/flix/util/Animation;

    move-result-object v3

    return-object v3
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 456
    invoke-super {p0}, Lcom/sonymobile/flix/util/Animation;->stop()V

    .line 457
    iget-object v2, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 458
    .local v1, "nbrRunning":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 459
    iget-object v2, p0, Lcom/sonymobile/flix/util/AnimationSet;->mRunning:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/Animation;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/Animation;->stop()V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method
