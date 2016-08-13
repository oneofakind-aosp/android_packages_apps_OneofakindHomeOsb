.class public Lcom/sonymobile/flix/util/SpringDynamics;
.super Lcom/sonymobile/flix/util/Dynamics;
.source "SpringDynamics.java"


# instance fields
.field protected mDamping:F

.field protected mDampingRatio:F

.field protected mStiffness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/flix/util/SpringDynamics;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "stiffness"    # F
    .param p2, "dampingRatio"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Dynamics;-><init>()V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/SpringDynamics;->setSpring(FF)V

    .line 32
    return-void
.end method


# virtual methods
.method public hasTarget()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public isAtRest()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mValue:F

    iget v5, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mTarget:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mDistanceTolerance:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v0, v2

    .line 59
    .local v0, "closeEnough":Z
    :goto_0
    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mDampingRatio:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 60
    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocityTolerance:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v1, v2

    .line 61
    .local v1, "stillEnough":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 63
    .end local v1    # "stillEnough":Z
    :goto_2
    return v2

    .end local v0    # "closeEnough":Z
    :cond_0
    move v0, v3

    .line 58
    goto :goto_0

    .restart local v0    # "closeEnough":Z
    :cond_1
    move v1, v3

    .line 60
    goto :goto_1

    .restart local v1    # "stillEnough":Z
    :cond_2
    move v2, v3

    .line 61
    goto :goto_2

    .end local v1    # "stillEnough":Z
    :cond_3
    move v2, v0

    .line 63
    goto :goto_2
.end method

.method protected onUpdate(I)V
    .locals 7
    .param p1, "dt"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 77
    int-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v2, v3, v4

    .line 80
    .local v2, "fdt":F
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/SpringDynamics;->getDistanceToTarget()F

    move-result v3

    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mStiffness:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mDamping:F

    iget v5, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 83
    .local v0, "at":F
    iget v3, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mValue:F

    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    mul-float/2addr v4, v2

    mul-float v5, v6, v0

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mValue:F

    .line 87
    iget v3, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    mul-float v4, v6, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/SpringDynamics;->getDistanceToTarget()F

    move-result v3

    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mStiffness:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mDamping:F

    iget v5, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 95
    .local v1, "atdt":F
    iget v3, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    mul-float v4, v6, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mVelocity:F

    .line 96
    return-void
.end method

.method public setSpring(FF)V
    .locals 4
    .param p1, "stiffness"    # F
    .param p2, "dampingRatio"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mStiffness:F

    .line 52
    iput p2, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mDampingRatio:F

    .line 53
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/flix/util/SpringDynamics;->mDamping:F

    .line 54
    return-void
.end method
