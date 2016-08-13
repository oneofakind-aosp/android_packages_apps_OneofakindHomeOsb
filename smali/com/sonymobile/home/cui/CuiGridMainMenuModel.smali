.class public Lcom/sonymobile/home/cui/CuiGridMainMenuModel;
.super Lcom/sonymobile/home/cui/CuiGridModel;
.source "CuiGridMainMenuModel.java"


# instance fields
.field private final mEnableThemes:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-static {v1, p1}, Lcom/sonymobile/home/cui/CuiGridHandler;->getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/home/cui/CuiGridModel;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mEnableThemes:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridMainMenuModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mEnableThemes:Z

    return v0
.end method


# virtual methods
.method public getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel$1;-><init>(Lcom/sonymobile/home/cui/CuiGridMainMenuModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 74
    return-void
.end method
