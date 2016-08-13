.class public Lcom/sonymobile/home/cui/CuiGridWallpaperModel;
.super Lcom/sonymobile/home/cui/CuiGridModel;
.source "CuiGridWallpaperModel.java"


# instance fields
.field private final mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-static {v0, p1}, Lcom/sonymobile/home/cui/CuiGridHandler;->getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/cui/CuiGridModel;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V

    .line 28
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$1;-><init>(Lcom/sonymobile/home/cui/CuiGridWallpaperModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridWallpaperModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel$2;-><init>(Lcom/sonymobile/home/cui/CuiGridWallpaperModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->close()V

    .line 56
    return-void
.end method
