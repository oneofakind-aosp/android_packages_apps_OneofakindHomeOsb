.class public Lcom/sonymobile/home/resources/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;
    }
.end annotation


# instance fields
.field private mBitmapOptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Ljava/lang/String;

.field private mResMap:Landroid/util/SparseIntArray;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    .line 44
    return-void
.end method

.method public static getBitmapFromPotentialNullResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public static getNinePatchBitmapFromPotentialNullResource(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-static {p0, p1, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    :cond_0
    return-object v0
.end method

.method private getResId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 150
    :cond_0
    return p1
.end method

.method public static isNullResource(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x1

    .line 161
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 162
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 163
    iget v2, v0, Landroid/util/TypedValue;->type:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mBitmapOptions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mBitmapOptions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 53
    :cond_1
    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "bitmapOptions":Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;
    iget-object v3, p0, Lcom/sonymobile/home/resources/ResourceManager;->mBitmapOptions:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/sonymobile/home/resources/ResourceManager;->mBitmapOptions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bitmapOptions":Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;
    check-cast v1, Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;

    .line 93
    .restart local v1    # "bitmapOptions":Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;
    :cond_0
    if-eqz v1, :cond_2

    .line 94
    iget v3, v1, Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;->scaling:F

    iget v4, v1, Lcom/sonymobile/home/resources/ResourceManager$BitmapOptions;->densityDpi:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmap(IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    :cond_1
    return-object v0

    .line 96
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v2

    .line 97
    .local v2, "resId":I
    iget-object v3, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 100
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resId=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBitmap(IFI)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "id"    # I
    .param p2, "scaling"    # F
    .param p3, "densityDpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v3

    .line 111
    .local v3, "resId":I
    iget-object v5, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 113
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 116
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 117
    .local v2, "height":I
    const/4 v5, 0x1

    invoke-static {v0, v4, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_0
    return-object v0

    .line 120
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resId=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getBoolean(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDimension(I)F
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getInteger(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getLoadedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getNinePatchBitmap(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # I
    .param p2, "ninePatchRect"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 77
    return-void
.end method

.method public loadConfiguration(Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/home/resources/ResourceManager;->clear()V

    .line 224
    if-nez p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/resources/ResourceManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/resources/ResourceManager;->mConfig:Ljava/lang/String;

    .line 228
    return-void
.end method
