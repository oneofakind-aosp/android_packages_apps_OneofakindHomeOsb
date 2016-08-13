.class public Lcom/sonymobile/flix/components/Image;
.super Lcom/sonymobile/flix/components/Component;
.source "Image.java"


# instance fields
.field protected mAutoSizeToBitmap:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapSourceBounds:Landroid/graphics/Rect;

.field protected mImageBounds:Landroid/graphics/RectF;

.field protected mResId:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;I)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resId"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 66
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Image;->prepareForDrawing()V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Image;->setAutoSizeToBitmap(Z)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/Image;->setBitmap(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Image;->prepareForDrawing()V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Image;->setAutoSizeToBitmap(Z)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 283
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitmap resource: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getResourceFromCache(Lcom/sonymobile/flix/components/Scene;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resId"    # I

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getBitmapCache()Lcom/sonymobile/flix/util/BitmapCache;

    move-result-object v0

    .line 271
    .local v0, "bitmapCache":Lcom/sonymobile/flix/util/BitmapCache;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/util/BitmapCache;->get(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mImageBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Image;->mBitmapSourceBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonymobile/flix/components/Image;->mImageBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sonymobile/flix/components/Image;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Image;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->drawNull(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public setAutoSizeToBitmap(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Image;->mAutoSizeToBitmap:Z

    .line 177
    return-void
.end method

.method public setBitmap(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/Image;->setBitmap(ILandroid/graphics/BitmapFactory$Options;)V

    .line 117
    return-void
.end method

.method public setBitmap(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Image;->assertContext()V

    .line 137
    iget-object v2, p0, Lcom/sonymobile/flix/components/Image;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p0, v2, p1}, Lcom/sonymobile/flix/components/Image;->getResourceFromCache(Lcom/sonymobile/flix/components/Scene;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 139
    iget-object v2, p0, Lcom/sonymobile/flix/components/Image;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0, v1, p1, p2}, Lcom/sonymobile/flix/components/Image;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iput p1, p0, Lcom/sonymobile/flix/components/Image;->mResId:I

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 94
    iput-object p1, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/flix/components/Image;->mResId:I

    .line 96
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Image;->mAutoSizeToBitmap:Z

    if-eqz v0, :cond_0

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Image;->setSize(FF)V

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Image;->updateImageBounds()V

    .line 104
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/sonymobile/flix/components/Image;->setSize(FF)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Image;->updateImageBounds()V

    .line 167
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateImageBounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sonymobile/flix/components/Image;->mWidth:F

    iget-object v1, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/flix/components/Image;->mHeight:F

    iget-object v1, p0, Lcom/sonymobile/flix/components/Image;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mImageBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonymobile/flix/components/Image;->mWidth:F

    iget v2, p0, Lcom/sonymobile/flix/components/Image;->mHeight:F

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Image;->mImageBounds:Landroid/graphics/RectF;

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mImageBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonymobile/flix/components/Image;->mWidth:F

    iget v2, p0, Lcom/sonymobile/flix/components/Image;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/flix/components/Image;->mBitmapSourceBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/components/Image;->mImageBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method
