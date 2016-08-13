.class Lcom/sonymobile/home/cui/CuiGridAppModel$2;
.super Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.source "CuiGridAppModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridAppModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridAppModel;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    invoke-direct {p0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 11
    .param p1, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v7

    .line 78
    .local v7, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    invoke-interface {v7}, Lcom/sonymobile/home/cui/CuiGridResource;->getBitmap1()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    .local v2, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v8

    instance-of v8, v8, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v8, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 84
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v8}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$400(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/home/model/PackageHandler;->getActivityResolveInfo(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    move-result-object v5

    .line 85
    .local v5, "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    if-eqz v5, :cond_0

    .line 88
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSizeLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$000(Lcom/sonymobile/home/cui/CuiGridAppModel;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 89
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I
    invoke-static {v8}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$100(Lcom/sonymobile/home/cui/CuiGridAppModel;)I

    move-result v4

    .line 90
    .local v4, "iconSize":I
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconDpi:I
    invoke-static {v8}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$300(Lcom/sonymobile/home/cui/CuiGridAppModel;)I

    move-result v3

    .line 91
    .local v3, "iconDpi":I
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {v5, v3}, Lcom/sonymobile/home/bitmap/IconUtilities;->loadIcon(Lcom/sonymobile/home/model/PackageHandler$AppInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v8, v8, Lcom/sonymobile/home/cui/CuiGridAppModel;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v4, v1}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 100
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconDpi":I
    .end local v4    # "iconSize":I
    .end local v5    # "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sonymobile/home/cui/CuiGridAppModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 102
    .local v6, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Lcom/sonymobile/home/cui/BitmapLoaderItem;

    invoke-direct {v8, v2, v6}, Lcom/sonymobile/home/cui/BitmapLoaderItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-object v8

    .line 91
    .end local v6    # "labelBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .restart local v5    # "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected bridge synthetic loadBitmaps(Ljava/lang/Object;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridAppModel$2;->loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    move-result-object v0

    return-object v0
.end method
