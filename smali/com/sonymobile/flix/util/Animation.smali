.class public abstract Lcom/sonymobile/flix/util/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/Animation$Listener;
    }
.end annotation


# instance fields
.field protected mAboutToFinish:Z

.field protected mAboutToStart:Z

.field protected mDelay:J

.field protected mDelayedFinish:Z

.field protected mDelayedStart:Z

.field protected mDelta:F

.field protected mDuration:J

.field protected mEnd:F

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected mInvDuration:F

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/Animation$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mReversed:Z

.field protected mStart:F

.field protected mStartTime:J

.field protected mStarted:Z

.field protected mStopped:Z

.field protected mTime:J

.field protected mValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 91
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/sonymobile/flix/util/Animation;-><init>(JJ)V

    .line 92
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/flix/util/Animation;-><init>(JJ)V

    .line 102
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "delay"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    .line 113
    iget-wide v0, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    long-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/sonymobile/flix/util/Animation;->mInvDuration:F

    .line 114
    iput-wide p3, p0, Lcom/sonymobile/flix/util/Animation;->mDelay:J

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    .line 116
    iput v2, p0, Lcom/sonymobile/flix/util/Animation;->mEnd:F

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Animation;->mDelayedFinish:Z

    .line 118
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;->init()V

    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->onCreate()V

    .line 120
    return-void
.end method

.method private finish()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 225
    iget-boolean v3, p0, Lcom/sonymobile/flix/util/Animation;->mReversed:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 226
    .local v0, "fraction":F
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/flix/util/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/sonymobile/flix/util/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 229
    :cond_0
    iget v3, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    iget v4, p0, Lcom/sonymobile/flix/util/Animation;->mEnd:F

    iget v5, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float v1, v3, v4

    .line 230
    .local v1, "value":F
    iget v3, p0, Lcom/sonymobile/flix/util/Animation;->mValue:F

    sub-float v3, v1, v3

    invoke-virtual {p0, v1, v3}, Lcom/sonymobile/flix/util/Animation;->onUpdate(FF)V

    .line 231
    iget-boolean v3, p0, Lcom/sonymobile/flix/util/Animation;->mDelayedFinish:Z

    if-eqz v3, :cond_2

    .line 232
    iput-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToFinish:Z

    .line 233
    const/4 v2, 0x0

    .line 240
    :goto_1
    return v2

    .line 225
    .end local v0    # "fraction":F
    .end local v1    # "value":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 237
    .restart local v0    # "fraction":F
    .restart local v1    # "value":F
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->reset()V

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->notifyFinish()V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/flix/util/Animation;->mTime:J

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/flix/util/Animation;->mValue:F

    .line 125
    iput-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mStarted:Z

    .line 126
    iput-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mStopped:Z

    .line 127
    iput-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToStart:Z

    .line 128
    iput-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToFinish:Z

    .line 129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    .line 130
    return-void
.end method

.method public static interpolate(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 569
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private start(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 201
    iget-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 206
    iget-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mDelay:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    .line 208
    :cond_0
    iget-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    .line 209
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Animation;->mStarted:Z

    .line 210
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/Animation;->mDelayedStart:Z

    if-eqz v1, :cond_1

    .line 211
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToStart:Z

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->notifyStart()V

    .line 217
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 551
    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 6

    .prologue
    .line 466
    iget-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mTime:J

    iget-wide v4, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    sub-long v0, v2, v4

    .line 468
    .local v0, "elapsed":J
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mStarted:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 469
    :cond_0
    const/4 v2, 0x0

    .line 476
    :goto_0
    return v2

    .line 472
    :cond_1
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToFinish:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 473
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 476
    :cond_3
    long-to-float v2, v0

    iget-wide v4, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/sonymobile/flix/util/Animation;->mValue:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Animation;->mStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyFinish()V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->onFinish()V

    .line 254
    iget-object v2, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 256
    iget-object v2, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/Animation$Listener;

    invoke-interface {v2, p0}, Lcom/sonymobile/flix/util/Animation$Listener;->onFinish(Lcom/sonymobile/flix/util/Animation;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method protected notifyStart()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->onStart()V

    .line 246
    iget-object v2, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 247
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 248
    iget-object v2, p0, Lcom/sonymobile/flix/util/Animation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/Animation$Listener;

    invoke-interface {v2, p0}, Lcom/sonymobile/flix/util/Animation$Listener;->onStart(Lcom/sonymobile/flix/util/Animation;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 143
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 147
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public abstract onUpdate(FF)V
.end method

.method public onUpdate(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToFinish:Z

    if-eqz v6, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->reset()V

    .line 160
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Animation;->notifyFinish()V

    move v4, v5

    .line 197
    :cond_0
    :goto_0
    return v4

    .line 163
    :cond_1
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToStart:Z

    if-eqz v6, :cond_2

    .line 164
    iput-boolean v5, p0, Lcom/sonymobile/flix/util/Animation;->mAboutToStart:Z

    .line 165
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    .line 167
    :cond_2
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/Animation;->mStopped:Z

    if-eqz v6, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;->finish()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 170
    :cond_3
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/Animation;->mStarted:Z

    if-nez v6, :cond_4

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->start(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    iget v6, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    iput v6, p0, Lcom/sonymobile/flix/util/Animation;->mValue:F

    .line 177
    :cond_4
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Animation;->mTime:J

    .line 178
    iget-wide v6, p0, Lcom/sonymobile/flix/util/Animation;->mStartTime:J

    sub-long v0, p1, v6

    .line 179
    .local v0, "elapsed":J
    iget-wide v6, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_5

    .line 181
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;->finish()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 185
    :cond_5
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/Animation;->mReversed:Z

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    long-to-float v7, v0

    iget v8, p0, Lcom/sonymobile/flix/util/Animation;->mInvDuration:F

    mul-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 186
    .local v2, "fraction":F
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/flix/util/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_6

    .line 187
    iget-object v6, p0, Lcom/sonymobile/flix/util/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 189
    :cond_6
    iget v6, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    iget v7, p0, Lcom/sonymobile/flix/util/Animation;->mEnd:F

    iget v8, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float v3, v6, v7

    .line 191
    .local v3, "value":F
    iget v6, p0, Lcom/sonymobile/flix/util/Animation;->mValue:F

    sub-float v6, v3, v6

    iput v6, p0, Lcom/sonymobile/flix/util/Animation;->mDelta:F

    .line 192
    iput v3, p0, Lcom/sonymobile/flix/util/Animation;->mValue:F

    .line 193
    iget v6, p0, Lcom/sonymobile/flix/util/Animation;->mDelta:F

    invoke-virtual {p0, v3, v6}, Lcom/sonymobile/flix/util/Animation;->onUpdate(FF)V

    .line 194
    iget-boolean v6, p0, Lcom/sonymobile/flix/util/Animation;->mStopped:Z

    if-eqz v6, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;->finish()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 185
    .end local v2    # "fraction":F
    .end local v3    # "value":F
    :cond_7
    long-to-float v6, v0

    iget v7, p0, Lcom/sonymobile/flix/util/Animation;->mInvDuration:F

    mul-float v2, v6, v7

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;->init()V

    .line 137
    return-void
.end method

.method public setDelay(J)Lcom/sonymobile/flix/util/Animation;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Animation;->mDelay:J

    .line 302
    return-object p0
.end method

.method public setDelayedFinish(Z)V
    .locals 0
    .param p1, "delayedFinish"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/Animation;->mDelayedFinish:Z

    .line 389
    return-void
.end method

.method public setDelayedStart(Z)V
    .locals 0
    .param p1, "delayedStart"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/Animation;->mDelayedStart:Z

    .line 371
    return-void
.end method

.method public setDuration(J)Lcom/sonymobile/flix/util/Animation;
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 322
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    .line 323
    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Animation;->mDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/flix/util/Animation;->mInvDuration:F

    .line 324
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sonymobile/flix/util/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 508
    return-object p0
.end method

.method public setRange(FF)Lcom/sonymobile/flix/util/Animation;
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 270
    iput p1, p0, Lcom/sonymobile/flix/util/Animation;->mStart:F

    .line 271
    iput p2, p0, Lcom/sonymobile/flix/util/Animation;->mEnd:F

    .line 272
    return-object p0
.end method

.method public setReversed(Z)Lcom/sonymobile/flix/util/Animation;
    .locals 0
    .param p1, "reversed"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/sonymobile/flix/util/Animation;->mReversed:Z

    .line 345
    return-object p0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Animation;->mStopped:Z

    .line 437
    return-void
.end method
