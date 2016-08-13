.class Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;
.super Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.source "CuiGridWallpaperModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridWallpaperModel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/cui/AsyncBitmapLoader",
        "<",
        "Lcom/sonymobile/home/cui/CuiGridItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWallpaperModel;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    invoke-direct {p0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 5
    .param p1, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "iconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPER_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    if-ne v2, v3, :cond_1

    move-object v2, p1

    .line 36
    check-cast v2, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v3, v3, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v3}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v4, v4, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/cui/WallpaperProvider;->getWallpaperPreview(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    .local v1, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/sonymobile/home/cui/BitmapLoaderItem;

    invoke-direct {v2, v0, v1}, Lcom/sonymobile/home/cui/BitmapLoaderItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-object v2

    .line 39
    .end local v1    # "labelBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPERS_MORE_PICKER:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    if-ne v2, v3, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/home/cui/CuiGridResource;->getBitmap1()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadBitmaps(Ljava/lang/Object;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;->loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    move-result-object v0

    return-object v0
.end method
