.class public Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenOutput"
.end annotation


# static fields
.field private static sDirtyRegion:Landroid/graphics/Rect;

.field private static sTextColor:I

.field private static sTextPaint:Landroid/graphics/Paint;

.field private static sX:I

.field private static sY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 398
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    .line 399
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 400
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    const v0, -0x800081

    sput v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextColor:I

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sDirtyRegion:Landroid/graphics/Rect;

    .line 403
    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "fpsText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 427
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    sget-object v1, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 428
    .local v7, "height":F
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sget v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sX:I

    int-to-float v4, v0

    sget v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sY:I

    int-to-float v0, v0

    add-float v5, v0, v7

    sget-object v6, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 430
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sget v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sX:I

    int-to-float v4, v0

    sget v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sY:I

    int-to-float v0, v0

    add-float v5, v0, v7

    sget-object v6, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 432
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sDirtyRegion:Landroid/graphics/Rect;

    sget v1, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sX:I

    sget v2, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sY:I

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget v4, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sY:I

    float-to-int v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    return-void
.end method

.method public static getDirtyRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sDirtyRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getTextColor()I
    .locals 1

    .prologue
    .line 419
    sget v0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextColor:I

    return v0
.end method

.method public static setTextColor(I)V
    .locals 0
    .param p0, "argb"    # I

    .prologue
    .line 415
    sput p0, Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$ScreenOutput;->sTextColor:I

    .line 416
    return-void
.end method
