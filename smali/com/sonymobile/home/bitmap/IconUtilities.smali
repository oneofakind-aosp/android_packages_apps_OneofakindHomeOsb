.class public Lcom/sonymobile/home/bitmap/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field private static final ICON_DENSITY_BUCKETS:[I

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sonymobile/home/bitmap/IconUtilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/bitmap/IconUtilities;->LOG_TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/home/bitmap/IconUtilities;->ICON_DENSITY_BUCKETS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0xa0
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBitmapToGrayscale(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 564
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 565
    .local v1, "iconCopy":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 566
    .local v2, "matrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 567
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 568
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 569
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 570
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 571
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 572
    return-void
.end method

.method public static createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "padding"    # I

    .prologue
    .line 371
    mul-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p1

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 374
    .local v1, "canvas":Landroid/graphics/Canvas;
    add-int v2, p1, p3

    add-int v3, p2, p3

    invoke-virtual {p0, p3, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    return-object v0
.end method

.method public static createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 163
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "padding"    # I
    .param p5, "scaleUp"    # Z

    .prologue
    .line 142
    instance-of v1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v6, p3

    .line 143
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 144
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    .line 145
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 150
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v7, "iconBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 147
    .end local v7    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p3, p1, p2, p4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7    # "iconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "targetDensity"    # I
    .param p2, "iconMaxWidth"    # I
    .param p3, "iconMaxHeight"    # I
    .param p4, "padding"    # I
    .param p5, "scaleUp"    # Z

    .prologue
    .line 277
    if-nez p0, :cond_0

    .line 278
    const/4 v5, 0x0

    .line 308
    :goto_0
    return-object v5

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-nez v5, :cond_1

    .line 281
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v4

    .line 285
    .local v4, "sourceWidth":I
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v3

    .line 287
    .local v3, "sourceHeight":I
    if-gt v4, p2, :cond_2

    if-gt v3, p3, :cond_2

    if-eqz p5, :cond_4

    if-ge v4, p2, :cond_4

    if-ge v3, p3, :cond_4

    .line 291
    :cond_2
    int-to-float v5, v4

    int-to-float v6, v3

    div-float v0, v5, v6

    .line 293
    .local v0, "aspectRatio":F
    sub-int v5, v4, p2

    sub-int v6, v3, p3

    if-le v5, v6, :cond_3

    .line 294
    move v2, p2

    .line 295
    .local v2, "scaledWidth":I
    int-to-float v5, p2

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 301
    .local v1, "scaledHeight":I
    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 302
    invoke-static {p0, v2, v1, p4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createScaledPaddedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 297
    .end local v1    # "scaledHeight":I
    .end local v2    # "scaledWidth":I
    :cond_3
    move v1, p3

    .line 298
    .restart local v1    # "scaledHeight":I
    int-to-float v5, p3

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2    # "scaledWidth":I
    goto :goto_1

    .line 303
    .end local v0    # "aspectRatio":F
    .end local v1    # "scaledHeight":I
    .end local v2    # "scaledWidth":I
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-eq v5, p1, :cond_5

    .line 304
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 305
    invoke-static {p0, v4, v3, p4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createScaledPaddedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 308
    :cond_5
    invoke-static {p0, p4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createPaddedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconMaxWidth"    # I
    .param p3, "iconMaxHeight"    # I
    .param p4, "padding"    # I
    .param p5, "scaleUp"    # Z

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 259
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v1, "targetDensity":I
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createMirrorBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mirrorSize"    # I
    .param p3, "isLandscape"    # Z

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "mirrorBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    .line 355
    .local v2, "mirrorPosition":I
    :goto_0
    new-instance v1, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;

    invoke-direct {v1, p1, v2, p2}, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 356
    .local v1, "mirrorDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {p0, v3, v4, v1}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    return-object v0

    .line 354
    .end local v1    # "mirrorDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "mirrorPosition":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createPaddedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "padding"    # I

    .prologue
    .line 91
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    .local v1, "padded":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v0, "canvas":Landroid/graphics/Canvas;
    int-to-float v2, p1

    int-to-float v3, p1

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "padded":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public static createPaddedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "paddingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 110
    if-eqz p0, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gtz v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 114
    .local v1, "isPaddingNeeded":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    .local v2, "paddedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paddedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 110
    .end local v1    # "isPaddingNeeded":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isPaddingNeeded":Z
    :cond_2
    move-object v2, p0

    .line 124
    goto :goto_1
.end method

.method private static createScaledPaddedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaledWidth"    # I
    .param p2, "scaledHeight"    # I
    .param p3, "padding"    # I

    .prologue
    .line 361
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 362
    .local v0, "paint":Landroid/graphics/Paint;
    mul-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p1

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 363
    .local v1, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    add-int v5, p1, p3

    add-int v6, p2, p3

    invoke-direct {v4, p3, p3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 366
    return-object v1
.end method

.method public static createSmallerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 323
    .local v3, "sourceWidth":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v4

    .line 324
    .local v2, "sourceHeight":F
    int-to-float v4, p1

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_0

    int-to-float v4, p2

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 327
    :cond_0
    int-to-float v4, p2

    div-float v4, v2, v4

    int-to-float v5, p1

    div-float v5, v3, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 328
    int-to-float v4, p2

    mul-float/2addr v4, v3

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 329
    .local v1, "scaledWidth":I
    move v0, p2

    .line 335
    .local v0, "scaledHeight":I
    :goto_0
    const/4 v4, 0x1

    invoke-static {p0, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 338
    .end local v0    # "scaledHeight":I
    .end local v1    # "scaledWidth":I
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object p0

    .line 331
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move v1, p1

    .line 332
    .restart local v1    # "scaledWidth":I
    int-to-float v4, p1

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .restart local v0    # "scaledHeight":I
    goto :goto_0
.end method

.method public static decodeLargeBitmapResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 394
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 395
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 396
    invoke-static {p0, p1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 399
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v8, :cond_2

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_2

    .line 400
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v9, p2, p3, v6}, Lcom/sonymobile/flix/util/Utils;->calculateSampleSizeToFit(IIIIZ)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 402
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 403
    invoke-static {p0, p1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    .local v0, "bitmapDownsampled":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_3

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, p2

    int-to-float v10, p3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/sonymobile/flix/util/Utils;->calculateScalingToFit(FFFFZ)F

    move-result v5

    .line 416
    .local v5, "scalingFactor":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v3, v7

    .line 417
    .local v3, "dstWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v2, v7

    .line 420
    .local v2, "dstHeight":I
    if-gtz v3, :cond_0

    move v3, v6

    .line 421
    :cond_0
    if-gtz v2, :cond_1

    move v2, v6

    .line 422
    :cond_1
    invoke-static {v0, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 425
    .end local v2    # "dstHeight":I
    .end local v3    # "dstWidth":I
    .end local v5    # "scalingFactor":F
    :goto_1
    return-object v6

    .line 407
    .end local v0    # "bitmapDownsampled":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0, p1, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 408
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v9, v9, v11, v8}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmapDownsampled":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v6, v7

    .line 425
    goto :goto_1
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "suggestedWidth"    # I
    .param p2, "suggestedHeight"    # I

    .prologue
    .line 588
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 589
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    .line 590
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p0, :cond_1

    .line 591
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/home/bitmap/IconUtilities;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultAppIcon(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "density"    # I
    .param p2, "size"    # I

    .prologue
    .line 553
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 555
    .local v3, "defaultIcon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDpi(I)I
    .locals 4
    .param p0, "wantedSize"    # I

    .prologue
    .line 435
    const/16 v1, 0x280

    .line 436
    .local v1, "density":I
    sget-object v3, Lcom/sonymobile/home/bitmap/IconUtilities;->ICON_DENSITY_BUCKETS:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 437
    sget-object v3, Lcom/sonymobile/home/bitmap/IconUtilities;->ICON_DENSITY_BUCKETS:[I

    aget v3, v3, v2

    mul-int/lit8 v3, v3, 0x30

    div-int/lit16 v0, v3, 0xa0

    .line 439
    .local v0, "bucketSize":I
    if-gt p0, v0, :cond_0

    .line 440
    sget-object v3, Lcom/sonymobile/home/bitmap/IconUtilities;->ICON_DENSITY_BUCKETS:[I

    aget v1, v3, v2

    .line 436
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 446
    .end local v0    # "bucketSize":I
    :cond_0
    return v1
.end method

.method public static loadIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "density"    # I

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 463
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 464
    .local v2, "iconId":I
    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 467
    .local v0, "appRes":Landroid/content/res/Resources;
    invoke-virtual {v0, v2, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 473
    .end local v0    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "iconId":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 477
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .restart local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080093

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 469
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public static loadIcon(Lcom/sonymobile/home/model/PackageHandler$AppInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "info"    # Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    .param p1, "density"    # I

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 498
    :goto_0
    if-eqz v1, :cond_0

    .line 502
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 494
    .restart local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/sonymobile/home/bitmap/IconUtilities;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 502
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080093

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public static loadIconForApplication(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "density"    # I

    .prologue
    const/4 v6, 0x0

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 521
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 522
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 523
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 525
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 526
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 533
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 541
    :goto_1
    return-object v4

    .line 537
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080093

    invoke-virtual {v4, v5, p2, v6}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 541
    goto :goto_1

    .line 529
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method
