.class public Lcom/sonymobile/flix/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final RGB_TO_ALPHA:[F

.field private static final sLayoutParamsWrapContent:Landroid/view/ViewGroup$LayoutParams;

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 67
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/flix/util/Utils;->RGB_TO_ALPHA:[F

    .line 72
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sonymobile/flix/util/Utils;->sLayoutParamsWrapContent:Landroid/view/ViewGroup$LayoutParams;

    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/util/Utils;->sRandom:Ljava/util/Random;

    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3eaaaaab
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
    .end array-data
.end method

.method public static calculateSampleSizeToFit(IIIIZ)I
    .locals 6
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "destWidth"    # I
    .param p3, "destHeight"    # I
    .param p4, "overflow"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 455
    int-to-float v1, p0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v2, v3, v4, p4}, Lcom/sonymobile/flix/util/Utils;->calculateScalingToFit(FFFFZ)F

    move-result v0

    .line 457
    .local v0, "scaling":F
    cmpg-float v1, v0, v5

    if-gez v1, :cond_0

    div-float v1, v5, v0

    float-to-int v1, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static calculateScalingToFit(FFFFZ)F
    .locals 3
    .param p0, "srcWidth"    # F
    .param p1, "srcHeight"    # F
    .param p2, "destWidth"    # F
    .param p3, "destHeight"    # F
    .param p4, "overflow"    # Z

    .prologue
    .line 403
    div-float v0, p2, p0

    .line 404
    .local v0, "scalingX":F
    div-float v1, p3, p1

    .line 405
    .local v1, "scalingY":F
    if-eqz p4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0
.end method

.method public static ceil(F)I
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 580
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    add-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    float-to-int v0, p0

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 514
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .end local p2    # "max":F
    :goto_0
    return p2

    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method public static createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "padding"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v2, -0x1

    .line 182
    if-ne p1, v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 185
    :cond_0
    if-ne p2, v2, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 188
    :cond_1
    mul-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p1

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    invoke-static {v2, v3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    .local v1, "canvas":Landroid/graphics/Canvas;
    add-int v2, p1, p3

    add-int v3, p2, p3

    invoke-virtual {p0, p3, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    return-object v0
.end method

.method public static createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "padding"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 109
    invoke-static {p0, p1, p2}, Lcom/sonymobile/flix/util/Utils;->measureView(Landroid/view/View;II)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v5}, Lcom/sonymobile/flix/util/Utils;->roundUpToNearest(FI)I

    move-result v3

    .line 113
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v5}, Lcom/sonymobile/flix/util/Utils;->roundUpToNearest(FI)I

    move-result v2

    .line 115
    .local v2, "height":I
    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, v3

    mul-int/lit8 v5, p3, 0x2

    add-int/2addr v5, v2

    invoke-static {v4, v5, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v4, p3

    int-to-float v5, p3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 123
    return-object v0
.end method

.method public static equals(FF)Z
    .locals 2
    .param p0, "value1"    # F
    .param p1, "value2"    # F

    .prologue
    .line 548
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 559
    if-ne p0, p1, :cond_1

    .line 560
    const/4 v0, 0x1

    .line 568
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static linear(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "t"    # F

    .prologue
    .line 461
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static measureView(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/flix/util/Utils;->measureView(Landroid/view/View;IIZ)V

    .line 292
    return-void
.end method

.method public static measureView(Landroid/view/View;IIZ)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "forceSize"    # Z

    .prologue
    const/4 v7, -0x1

    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 308
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 309
    sget-object v1, Lcom/sonymobile/flix/util/Utils;->sLayoutParamsWrapContent:Landroid/view/ViewGroup$LayoutParams;

    .line 315
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    :cond_0
    if-lez p1, :cond_2

    .line 320
    if-eqz p3, :cond_1

    .line 321
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 331
    .local v2, "widthMeasureSpec":I
    :goto_0
    if-lez p2, :cond_5

    .line 332
    if-eqz p3, :cond_4

    .line 333
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 343
    .local v0, "heightMeasureSpec":I
    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->measure(II)V

    .line 344
    return-void

    .line 323
    .end local v0    # "heightMeasureSpec":I
    .end local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_0

    .line 325
    .end local v2    # "widthMeasureSpec":I
    :cond_2
    if-ne p1, v7, :cond_3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v3, :cond_3

    .line 326
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_0

    .line 329
    .end local v2    # "widthMeasureSpec":I
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_0

    .line 335
    :cond_4
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "heightMeasureSpec":I
    goto :goto_1

    .line 337
    .end local v0    # "heightMeasureSpec":I
    :cond_5
    if-ne p2, v7, :cond_6

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v3, :cond_6

    .line 338
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "heightMeasureSpec":I
    goto :goto_1

    .line 341
    .end local v0    # "heightMeasureSpec":I
    :cond_6
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "heightMeasureSpec":I
    goto :goto_1
.end method

.method public static roundUpToNearest(FI)I
    .locals 1
    .param p0, "value"    # F
    .param p1, "multiple"    # I

    .prologue
    .line 592
    int-to-float v0, p1

    div-float v0, p0, v0

    invoke-static {v0}, Lcom/sonymobile/flix/util/Utils;->ceil(F)I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method
