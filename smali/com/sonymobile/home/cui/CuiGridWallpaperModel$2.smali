.class Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "CuiGridWallpaperModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private gridItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWallpaperModel;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->gridItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/sonymobile/home/cui/WallpaperProvider;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v1, v1, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/cui/WallpaperProvider;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "wallpaperProvider":Lcom/sonymobile/home/cui/WallpaperProvider;
    invoke-virtual {v0}, Lcom/sonymobile/home/cui/WallpaperProvider;->getAllWallpaperItems()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->gridItems:Ljava/util/List;

    .line 69
    return-void
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mGridItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->gridItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mGridItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItem;

    .line 75
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->access$000(Lcom/sonymobile/home/cui/CuiGridWallpaperModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->load(Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    goto :goto_0

    .line 77
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->setLoaded()V

    .line 78
    return-void
.end method
