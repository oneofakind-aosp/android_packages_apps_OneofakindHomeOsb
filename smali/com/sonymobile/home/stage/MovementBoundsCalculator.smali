.class public Lcom/sonymobile/home/stage/MovementBoundsCalculator;
.super Ljava/lang/Object;
.source "MovementBoundsCalculator.java"


# instance fields
.field private mCloseBound:F

.field private final mCoordsOverComponent:[F

.field private mFarBound:F

.field private mOrientationAwarePointerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCoordsOverComponent:[F

    .line 26
    iput v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mFarBound:F

    .line 28
    iput v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCloseBound:F

    return-void
.end method


# virtual methods
.method public calculateBoundsForItem(ZLcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 3
    .param p1, "landscape"    # Z
    .param p2, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p3, "xScreenPosition"    # F
    .param p4, "yScreenPosition"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 42
    if-nez p2, :cond_0

    .line 43
    iput v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mFarBound:F

    .line 44
    iput v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCloseBound:F

    .line 45
    iput v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    .line 46
    iget-object v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCoordsOverComponent:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getHeight()F

    move-result v0

    .line 55
    .local v0, "orientationAwareViewSize":F
    :goto_1
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mFarBound:F

    .line 56
    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCloseBound:F

    .line 57
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    .line 58
    iget-object v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCoordsOverComponent:[F

    invoke-static {p2, p3, p4, v1}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    goto :goto_0

    .line 52
    .end local v0    # "orientationAwareViewSize":F
    :cond_2
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWidth()F

    move-result v0

    goto :goto_1
.end method

.method public isOverCloseBound([F[F)Z
    .locals 3
    .param p1, "previousCoords"    # [F
    .param p2, "currentGlobalCoordinates"    # [F

    .prologue
    .line 75
    iget v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    aget v1, p1, v1

    iget v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    aget v2, p2, v2

    sub-float v0, v1, v2

    .line 77
    .local v0, "delta":F
    iget-object v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCoordsOverComponent:[F

    iget v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    aget v1, v1, v2

    iget v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCloseBound:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverFarBound([F[F)Z
    .locals 3
    .param p1, "previousCoords"    # [F
    .param p2, "currentGlobalCoordinates"    # [F

    .prologue
    .line 91
    iget v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    aget v1, p1, v1

    iget v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    aget v2, p2, v2

    sub-float v0, v1, v2

    .line 93
    .local v0, "delta":F
    iget-object v1, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mCoordsOverComponent:[F

    iget v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mOrientationAwarePointerIndex:I

    aget v1, v1, v2

    iget v2, p0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->mFarBound:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
