.class public Lcom/sonymobile/flix/debug/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;
    }
.end annotation


# instance fields
.field private mFpsText:Ljava/lang/StringBuilder;

.field private mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

.field private final mInterval:J

.field private mLogOutput:Z

.field private mMaxFrameTime:J

.field private mMinFrameTime:J

.field private mScreenOutput:Z

.field private mScreenOutputInvalidateStrategy:I

.field private mStringLength:I

.field private final mView:Landroid/view/View;


# direct methods
.method private format(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 170
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v0}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->isPaused()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v0}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->pause()V

    .line 98
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v0}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->resume()V

    .line 102
    return-void
.end method

.method public showFps(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v11, -0x400041

    const v10, -0x800081

    const-wide/16 v8, -0x1

    .line 113
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->countOnlyTotal()V

    .line 156
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mScreenOutput:Z

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mStringLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 158
    iget v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mStringLength:I

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "Total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v3}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->getTotalFrameCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)V

    .line 163
    iget v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mScreenOutputInvalidateStrategy:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 164
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mView:Landroid/view/View;

    invoke-static {}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->getDirtyRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 167
    :cond_2
    return-void

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->count()V

    .line 119
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->getFrameTime()J

    move-result-wide v0

    .line 120
    .local v0, "frameTime":J
    cmp-long v2, v0, v8

    if-eqz v2, :cond_7

    .line 121
    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMinFrameTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMinFrameTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 122
    :cond_4
    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMinFrameTime:J

    .line 124
    :cond_5
    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMaxFrameTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    iget-wide v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMaxFrameTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 125
    :cond_6
    iput-wide v0, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMaxFrameTime:J

    .line 128
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->getRunningTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mInterval:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->stop()V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "FPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    iget-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mInterval:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->getFramesPerSecond(J)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/flix/debug/FpsCounter;->format(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "  (min: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMinFrameTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "  max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMaxFrameTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "  Frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v3}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->getFrameCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mInterval:J

    long-to-float v3, v4

    const v4, 0x41855552

    div-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/sonymobile/flix/debug/FpsCounter;->format(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mStringLength:I

    .line 138
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    const-string v3, "  Total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v3}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->getTotalFrameCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    iget-boolean v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mLogOutput:Z

    if-eqz v2, :cond_8

    .line 141
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFpsText:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$LogOutput;->draw(Ljava/lang/CharSequence;)V

    .line 143
    :cond_8
    iget-boolean v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mScreenOutput:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mScreenOutputInvalidateStrategy:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 144
    invoke-static {}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->getTextColor()I

    move-result v2

    if-ne v2, v10, :cond_b

    .line 145
    invoke-static {v11}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->setTextColor(I)V

    .line 149
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mView:Landroid/view/View;

    invoke-static {}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->getDirtyRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 151
    :cond_a
    iput-wide v8, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMinFrameTime:J

    .line 152
    iput-wide v8, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mMaxFrameTime:J

    .line 153
    iget-object v2, p0, Lcom/sonymobile/flix/debug/FpsCounter;->mFrameCounter:Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;

    invoke-virtual {v2}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;->start()V

    goto/16 :goto_0

    .line 146
    :cond_b
    invoke-static {}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->getTextColor()I

    move-result v2

    if-ne v2, v11, :cond_9

    .line 147
    invoke-static {v10}, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->setTextColor(I)V

    goto :goto_1
.end method
