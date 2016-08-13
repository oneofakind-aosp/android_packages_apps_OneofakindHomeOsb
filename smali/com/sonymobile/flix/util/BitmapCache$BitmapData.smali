.class public Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapData"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/flix/util/BitmapCache$BitmapData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
