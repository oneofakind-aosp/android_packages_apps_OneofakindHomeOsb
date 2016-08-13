.class public Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MirrorBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mMirror:Z

.field private mMirrorPosition:I

.field private mRealHeight:I

.field private mRealWidth:I

.field private mReflectionBitmap:Landroid/graphics/Bitmap;

.field final mReflectionPaint:Landroid/graphics/Paint;

.field private mReflectionSize:I

.field final mScalePaint:Landroid/graphics/Paint;

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mirrorPosition"    # I
    .param p3, "reflectionSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mScalePaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionPaint:Landroid/graphics/Paint;

    .line 47
    iput-boolean v1, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirror:Z

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirrorPosition:I

    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    iput p2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirrorPosition:I

    .line 59
    iput p3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    .line 60
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    return-void
.end method

.method private static getEmptyColumns(Landroid/graphics/Bitmap;)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 191
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 192
    .local v1, "height":I
    const/4 v0, 0x0

    .line 194
    .local v0, "emptyCols":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "x":I
    :goto_0
    if-ltz v4, :cond_0

    .line 195
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 196
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 197
    .local v2, "pixel":I
    const/high16 v6, -0x1000000

    and-int/2addr v6, v2

    ushr-int/lit8 v6, v6, 0x18

    const/16 v7, 0x3c

    if-le v6, v7, :cond_1

    .line 204
    .end local v2    # "pixel":I
    .end local v5    # "y":I
    :cond_0
    return v0

    .line 195
    .restart local v2    # "pixel":I
    .restart local v5    # "y":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 201
    .end local v2    # "pixel":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 194
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private static getEmptyRows(Landroid/graphics/Bitmap;)I
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 209
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 210
    .local v10, "height":I
    new-array v1, v3, [I

    .line 211
    .local v1, "pixels":[I
    const/4 v9, 0x0

    .line 213
    .local v9, "emptyRows":I
    add-int/lit8 v5, v10, -0x1

    .local v5, "y":I
    :goto_0
    if-ltz v5, :cond_0

    .line 214
    const/4 v7, 0x1

    move-object v0, p0

    move v4, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 215
    move-object v8, v1

    .local v8, "arr$":[I
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_2

    aget v13, v8, v11

    .line 216
    .local v13, "pixel":I
    const/high16 v0, -0x1000000

    and-int/2addr v0, v13

    ushr-int/lit8 v0, v0, 0x18

    const/16 v4, 0x3c

    if-le v0, v4, :cond_1

    .line 223
    .end local v8    # "arr$":[I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pixel":I
    :cond_0
    return v9

    .line 215
    .restart local v8    # "arr$":[I
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pixel":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 220
    .end local v13    # "pixel":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 213
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirror:Z

    if-eqz v0, :cond_1

    .line 134
    iget v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirrorPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirror:Z

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mHeight:I

    .line 177
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirror:Z

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mWidth:I

    .line 168
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 157
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    .line 69
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mMirrorPosition:I

    if-ne v2, v5, :cond_0

    .line 70
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    invoke-static {p1}, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->getEmptyColumns(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealWidth:I

    .line 71
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealWidth:I

    iget v3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mWidth:I

    .line 72
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mHeight:I

    .line 77
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v10, "reflectionMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10, v4, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 80
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v10, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 81
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 83
    .local v9, "downScaledReflection":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v8, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, p1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 85
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    iget v3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    invoke-static {v9, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    int-to-float v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 92
    .local v0, "alphaGradient":Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    int-to-float v6, v2

    iget-object v7, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionPaint:Landroid/graphics/Paint;

    move-object v2, v8

    move v3, v1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    .end local v0    # "alphaGradient":Landroid/graphics/LinearGradient;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "downScaledReflection":Landroid/graphics/Bitmap;
    .end local v10    # "reflectionMatrix":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    invoke-static {p1}, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->getEmptyRows(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealHeight:I

    .line 97
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mWidth:I

    .line 98
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealHeight:I

    iget v3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mHeight:I

    .line 103
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    .restart local v10    # "reflectionMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10, v7, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 106
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mRealHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 107
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 109
    .restart local v9    # "downScaledReflection":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mScalePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, p1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 111
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    iget v3, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    invoke-static {v9, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 118
    .restart local v0    # "alphaGradient":Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    iget-object v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    int-to-float v6, v2

    iget-object v7, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionPaint:Landroid/graphics/Paint;

    move-object v2, v8

    move v3, v1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 123
    .end local v0    # "alphaGradient":Landroid/graphics/LinearGradient;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "downScaledReflection":Landroid/graphics/Bitmap;
    .end local v10    # "reflectionMatrix":Landroid/graphics/Matrix;
    :cond_1
    iput v6, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceWidth:I

    .line 124
    iput v6, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mSourceHeight:I

    .line 125
    iput v6, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mWidth:I

    .line 126
    iput v6, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mHeight:I

    .line 127
    iput v6, p0, Lcom/sonymobile/home/bitmap/MirrorBitmapDrawable;->mReflectionSize:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 161
    return-void
.end method
