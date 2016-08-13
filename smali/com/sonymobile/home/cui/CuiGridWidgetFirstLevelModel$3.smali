.class Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;
.super Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.source "CuiGridWidgetFirstLevelModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopPreferences;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-direct {p0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 9
    .param p1, "widgetItem"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v8

    .line 111
    .local v8, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$100(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v3, v3, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v3}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;

    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mMainUser:Landroid/os/UserHandle;
    invoke-static {v5}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$200(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->getWidgetPreviewBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 122
    .local v6, "iconBitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .local v7, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/sonymobile/home/cui/BitmapLoaderItem;

    invoke-direct {v0, v6, v7}, Lcom/sonymobile/home/cui/BitmapLoaderItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 118
    .end local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "labelBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {v8}, Lcom/sonymobile/home/cui/CuiGridResource;->getBitmap1()Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected bridge synthetic loadBitmaps(Ljava/lang/Object;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;->loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    move-result-object v0

    return-object v0
.end method
