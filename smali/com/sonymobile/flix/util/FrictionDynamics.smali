.class public Lcom/sonymobile/flix/util/FrictionDynamics;
.super Lcom/sonymobile/flix/util/Dynamics;
.source "FrictionDynamics.java"


# instance fields
.field protected mFriction:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Dynamics;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/FrictionDynamics;->setFriction(F)V

    .line 15
    return-void
.end method


# virtual methods
.method public hasTarget()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isAtRest()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocityTolerance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUpdate(I)V
    .locals 7
    .param p1, "dt"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 42
    int-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v2, v3, v4

    .line 45
    .local v2, "fdt":F
    iget v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mFriction:F

    neg-float v3, v3

    iget v4, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    mul-float v0, v3, v4

    .line 48
    .local v0, "at":F
    iget v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mValue:F

    iget v4, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    mul-float/2addr v4, v2

    mul-float v5, v6, v0

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mValue:F

    .line 52
    iget v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    mul-float v4, v6, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    .line 56
    iget v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mFriction:F

    neg-float v3, v3

    iget v4, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    mul-float v1, v3, v4

    .line 60
    .local v1, "atdt":F
    iget v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    mul-float v4, v6, v1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mVelocity:F

    .line 61
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/sonymobile/flix/util/FrictionDynamics;->mFriction:F

    .line 25
    return-void
.end method
