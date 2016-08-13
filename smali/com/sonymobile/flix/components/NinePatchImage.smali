.class public Lcom/sonymobile/flix/components/NinePatchImage;
.super Lcom/sonymobile/flix/components/Component;
.source "NinePatchImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/NinePatchImage$NinePatchBitmapData;
    }
.end annotation


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mDrawingRect:Landroid/graphics/RectF;

.field protected mNinePatch:Landroid/graphics/NinePatch;

.field protected mNinePatchPadding:Landroid/graphics/Rect;

.field protected mResId:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;I)V
    .locals 5
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resId"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/NinePatchImage;->assertContext()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->getResourceFromCache(Lcom/sonymobile/flix/components/Scene;I)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;

    move-result-object v1

    .line 65
    .local v1, "bitmapData":Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    if-eqz v1, :cond_0

    instance-of v4, v1, Lcom/sonymobile/flix/components/NinePatchImage$NinePatchBitmapData;

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/sonymobile/flix/util/BitmapCache$BitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    check-cast v1, Lcom/sonymobile/flix/components/NinePatchImage$NinePatchBitmapData;

    .end local v1    # "bitmapData":Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage$NinePatchBitmapData;->getNinePatchPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 73
    .local v2, "ninePatchPadding":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->init(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 74
    iput p2, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mResId:I

    .line 75
    return-void

    .line 69
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "ninePatchPadding":Landroid/graphics/Rect;
    .restart local v1    # "bitmapData":Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .restart local v2    # "ninePatchPadding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 71
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3, p2, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "ninePatchBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "ninePatchPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/flix/components/NinePatchImage;->init(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 80
    return-void
.end method

.method public static decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outPadding"    # Landroid/graphics/Rect;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 229
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 230
    .local v1, "in":Ljava/io/InputStream;
    if-nez p2, :cond_0

    .line 231
    new-instance p2, Landroid/graphics/Rect;

    .end local p2    # "outPadding":Landroid/graphics/Rect;
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 233
    .restart local p2    # "outPadding":Landroid/graphics/Rect;
    :cond_0
    if-nez p3, :cond_1

    .line 234
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    .end local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .restart local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_0
    invoke-static {p0, v2, v1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    if-nez v0, :cond_2

    .line 243
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid bitmap resource: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_2
    return-object v0

    .line 239
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private init(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "ninePatchBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "ninePatchPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/NinePatchImage;->prepareForDrawing()V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mDrawingRect:Landroid/graphics/RectF;

    .line 85
    if-eqz p2, :cond_1

    .line 86
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchPadding(Landroid/graphics/Rect;)V

    .line 90
    :goto_0
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 94
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getResourceFromCache(Lcom/sonymobile/flix/components/Scene;I)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resId"    # I

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getBitmapCache()Lcom/sonymobile/flix/util/BitmapCache;

    move-result-object v0

    .line 218
    .local v0, "bitmapCache":Lcom/sonymobile/flix/util/BitmapCache;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/util/BitmapCache;->getData(I)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;

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
    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mWidth:F

    iget v2, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->drawNull(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public setContentSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 151
    return-void
.end method

.method public setNinePatchBitmap(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 112
    .local v1, "ninePatchPadding":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 113
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {v2, p1, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchPadding(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setNinePatchBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mResId:I

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 101
    .local v0, "ninePatchChunk":[B
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Landroid/graphics/NinePatch;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    .line 103
    iget-object v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/NinePatch;->setPaint(Landroid/graphics/Paint;)V

    .line 108
    .end local v0    # "ninePatchChunk":[B
    :cond_0
    return-void

    .line 105
    .restart local v0    # "ninePatchChunk":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bitmap is not a nine-patch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNinePatchPadding(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "ninePatchPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 130
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/flix/components/NinePatchImage;->setInnerMargin(FFFF)V

    .line 132
    iput-object p1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    .line 133
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setPaint(Landroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/sonymobile/flix/components/NinePatchImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->setPaint(Landroid/graphics/Paint;)V

    .line 167
    :cond_0
    return-void
.end method
