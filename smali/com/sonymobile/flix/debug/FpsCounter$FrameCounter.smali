.class public Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FpsCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameCounter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;,
        Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$LogOutput;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field private mFrameCount:I

.field private mFrameDuration:J

.field private mFramePauseDuration:J

.field private mLastFrameTime:J

.field private mPauseDuration:J

.field private mPauseTime:J

.field private mPaused:Z

.field private mRunning:Z

.field private mStartTime:J

.field private mTotalFrameCount:I


# virtual methods
.method public count()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 276
    iget-boolean v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mRunning:Z

    if-eqz v2, :cond_0

    .line 277
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 278
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mLastFrameTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 281
    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mStartTime:J

    .line 282
    iput-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameDuration:J

    .line 291
    :goto_0
    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mLastFrameTime:J

    .line 292
    iget v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mTotalFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mTotalFrameCount:I

    .line 294
    .end local v0    # "now":J
    :cond_0
    return-void

    .line 284
    .restart local v0    # "now":J
    :cond_1
    iget v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameCount:I

    .line 286
    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mLastFrameTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFramePauseDuration:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameDuration:J

    .line 287
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFramePauseDuration:J

    goto :goto_0
.end method

.method public countOnlyTotal()V
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mTotalFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mTotalFrameCount:I

    .line 298
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameCount:I

    return v0
.end method

.method public getFrameTime()J
    .locals 4

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameDuration:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getFramesPerSecond(J)F
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 371
    iget v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameCount:I

    int-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    long-to-double v2, p1

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getRunningTime()J
    .locals 4

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseDuration:J

    sub-long/2addr v0, v2

    :goto_0
    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mEndTime:J

    goto :goto_0
.end method

.method public getTotalFrameCount()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mTotalFrameCount:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPaused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mRunning:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPaused:Z

    .line 242
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseTime:J

    .line 244
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 264
    iput-boolean v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPaused:Z

    .line 265
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mLastFrameTime:J

    .line 266
    iput v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFrameCount:I

    .line 267
    iput-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseDuration:J

    .line 268
    iput-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFramePauseDuration:J

    .line 269
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPaused:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPaused:Z

    .line 252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFramePauseDuration:J

    .line 253
    iget-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseDuration:J

    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mFramePauseDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseDuration:J

    .line 255
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mRunning:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mRunning:Z

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mEndTime:J

    .line 218
    invoke-virtual {p0}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->reset()V

    .line 220
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mRunning:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->resume()V

    .line 230
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mPauseDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mEndTime:J

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->mRunning:Z

    .line 233
    :cond_0
    return-void
.end method
