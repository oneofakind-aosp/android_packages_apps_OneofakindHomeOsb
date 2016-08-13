.class public Lcom/sonymobile/flix/components/NinePatchImage$NinePatchBitmapData;
.super Lcom/sonymobile/flix/util/BitmapCache$BitmapData;
.source "NinePatchImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/NinePatchImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NinePatchBitmapData"
.end annotation


# instance fields
.field private final mNinePatchPadding:Landroid/graphics/Rect;


# virtual methods
.method public getNinePatchPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonymobile/flix/components/NinePatchImage$NinePatchBitmapData;->mNinePatchPadding:Landroid/graphics/Rect;

    return-object v0
.end method
