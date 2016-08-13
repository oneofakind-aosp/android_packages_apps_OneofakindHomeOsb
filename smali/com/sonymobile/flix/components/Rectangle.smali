.class public Lcom/sonymobile/flix/components/Rectangle;
.super Lcom/sonymobile/flix/components/Component;
.source "Rectangle.java"


# instance fields
.field protected mRoundedRadiusX:F

.field protected mRoundedRadiusY:F

.field protected mRoundedRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/sonymobile/flix/components/Rectangle;-><init>(Lcom/sonymobile/flix/components/Scene;FFI)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FFI)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "colorArgb"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 32
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Rectangle;->prepareForDrawing()V

    .line 33
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 34
    invoke-virtual {p0, p4}, Lcom/sonymobile/flix/components/Rectangle;->setColor(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRadiusX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRadiusY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sonymobile/flix/components/Rectangle;->mWidth:F

    iget v3, p0, Lcom/sonymobile/flix/components/Rectangle;->mHeight:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRadiusX:F

    iget v2, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRadiusY:F

    iget-object v3, p0, Lcom/sonymobile/flix/components/Rectangle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v3, p0, Lcom/sonymobile/flix/components/Rectangle;->mWidth:F

    iget v4, p0, Lcom/sonymobile/flix/components/Rectangle;->mHeight:F

    iget-object v5, p0, Lcom/sonymobile/flix/components/Rectangle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    return-void
.end method

.method public setRoundedCorners(FF)V
    .locals 1
    .param p1, "radiusX"    # F
    .param p2, "radiusY"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRect:Landroid/graphics/RectF;

    .line 53
    :cond_0
    iput p1, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRadiusX:F

    .line 54
    iput p2, p0, Lcom/sonymobile/flix/components/Rectangle;->mRoundedRadiusY:F

    .line 55
    return-void
.end method
