.class Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;
.super Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.source "CuiGridShortcutModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridShortcutModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    invoke-direct {p0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 9
    .param p1, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 67
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 70
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSizeLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$000(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 71
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I
    invoke-static {v6}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$100(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)I

    move-result v3

    .line 72
    .local v3, "iconSize":I
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconDpi:I
    invoke-static {v6}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$200(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)I

    move-result v2

    .line 73
    .local v2, "iconDpi":I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v6, v6, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->loadIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 78
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v6, v6, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v3, v0}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 83
    .local v4, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Lcom/sonymobile/home/cui/BitmapLoaderItem;

    invoke-direct {v6, v1, v4}, Lcom/sonymobile/home/cui/BitmapLoaderItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 86
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "iconDpi":I
    .end local v3    # "iconSize":I
    .end local v4    # "labelBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 73
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 86
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic loadBitmaps(Ljava/lang/Object;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;->loadBitmaps(Lcom/sonymobile/home/cui/CuiGridItem;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    move-result-object v0

    return-object v0
.end method
