.class public Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
.super Lcom/sonymobile/home/cui/CuiGridItem;
.source "CuiGridWallpaperItem.java"


# instance fields
.field private final mImagePath:Ljava/lang/String;

.field private final mThumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "itemType"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .param p2, "resource"    # Lcom/sonymobile/home/cui/CuiGridResource;
    .param p3, "item"    # Lcom/sonymobile/home/data/Item;
    .param p4, "imagePath"    # Ljava/lang/String;
    .param p5, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V

    .line 31
    iput-object p4, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->mImagePath:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->mThumbnailPath:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method
