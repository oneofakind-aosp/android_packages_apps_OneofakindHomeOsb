.class public abstract Lcom/sonymobile/flix/util/Dynamics;
.super Ljava/lang/Object;
.source "Dynamics.java"


# instance fields
.field protected mDelta:F

.field protected mDistanceTolerance:F

.field protected mLastTime:J

.field protected mPrevValue:F

.field protected mTarget:F

.field protected mValue:F

.field protected mVelocity:F

.field protected mVelocityTolerance:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, 0x3c23d70b    # 0.010000001f

    iput v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mVelocityTolerance:F

    .line 48
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mDistanceTolerance:F

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Dynamics;->reset()V

    .line 50
    return-void
.end method


# virtual methods
.method public getDelta()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mDelta:F

    return v0
.end method

.method protected getDistanceToTarget()F
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mTarget:F

    iget v1, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTarget()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mTarget:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mVelocity:F

    return v0
.end method

.method public abstract hasTarget()Z
.end method

.method public isAtRest()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    iget v4, p0, Lcom/sonymobile/flix/util/Dynamics;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sonymobile/flix/util/Dynamics;->mVelocityTolerance:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v1, v2

    .line 163
    .local v1, "stillEnough":Z
    :goto_0
    iget v4, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    iget v5, p0, Lcom/sonymobile/flix/util/Dynamics;->mTarget:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sonymobile/flix/util/Dynamics;->mDistanceTolerance:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v0, v2

    .line 164
    .local v0, "closeEnough":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "closeEnough":Z
    .end local v1    # "stillEnough":Z
    :cond_0
    move v1, v3

    .line 162
    goto :goto_0

    .restart local v1    # "stillEnough":Z
    :cond_1
    move v0, v3

    .line 163
    goto :goto_1

    .restart local v0    # "closeEnough":Z
    :cond_2
    move v2, v3

    .line 164
    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, -0x1f4

    iput-wide v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mLastTime:J

    .line 60
    iget v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    iput v0, p0, Lcom/sonymobile/flix/util/Dynamics;->mPrevValue:F

    .line 61
    return-void
.end method

.method public setAtRestDistance(F)V
    .locals 0
    .param p1, "tolerance"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/sonymobile/flix/util/Dynamics;->mDistanceTolerance:F

    .line 139
    return-void
.end method

.method public setAtRestVelocity(F)V
    .locals 0
    .param p1, "tolerance"    # F

    .prologue
    .line 128
    iput p1, p0, Lcom/sonymobile/flix/util/Dynamics;->mVelocityTolerance:F

    .line 129
    return-void
.end method

.method public setTarget(F)V
    .locals 0
    .param p1, "target"    # F

    .prologue
    .line 184
    iput p1, p0, Lcom/sonymobile/flix/util/Dynamics;->mTarget:F

    .line 185
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    .line 82
    return-void
.end method

.method public setVelocity(F)V
    .locals 0
    .param p1, "velocity"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/sonymobile/flix/util/Dynamics;->mVelocity:F

    .line 110
    return-void
.end method

.method public update(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 202
    iget-wide v4, p0, Lcom/sonymobile/flix/util/Dynamics;->mLastTime:J

    sub-long v0, p1, v4

    .line 203
    .local v0, "dt":J
    const-wide/16 v4, 0x1f4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 207
    const-wide/16 v0, 0x0

    .line 210
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 211
    long-to-int v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 212
    .local v2, "step":I
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/util/Dynamics;->onUpdate(I)V

    .line 213
    const-wide/16 v4, 0xa

    sub-long/2addr v0, v4

    .line 214
    goto :goto_0

    .line 216
    .end local v2    # "step":I
    :cond_1
    iget v3, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    iget v4, p0, Lcom/sonymobile/flix/util/Dynamics;->mPrevValue:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/Dynamics;->mDelta:F

    .line 217
    iget v3, p0, Lcom/sonymobile/flix/util/Dynamics;->mValue:F

    iput v3, p0, Lcom/sonymobile/flix/util/Dynamics;->mPrevValue:F

    .line 218
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Dynamics;->mLastTime:J

    .line 219
    return-void
.end method
