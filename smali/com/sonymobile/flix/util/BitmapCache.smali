.class public Lcom/sonymobile/flix/util/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    }
.end annotation


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonymobile/flix/util/BitmapCache$BitmapData;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final get(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/BitmapCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/BitmapCache;->getData(Ljava/lang/Object;)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;

    move-result-object v0

    .line 86
    .local v0, "bitmapData":Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/BitmapCache$BitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getData(I)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/util/BitmapCache;->getData(Ljava/lang/Object;)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;

    move-result-object v0

    return-object v0
.end method

.method public final getData(Ljava/lang/Object;)Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/flix/util/BitmapCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/BitmapCache$BitmapData;

    return-object v0
.end method
