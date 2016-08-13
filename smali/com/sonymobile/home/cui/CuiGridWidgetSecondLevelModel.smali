.class public Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;
.super Lcom/sonymobile/home/cui/CuiGridModel;
.source "CuiGridWidgetSecondLevelModel.java"


# static fields
.field private static final sWidgetOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;",
            ">;"
        }
    .end annotation
.end field


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

.field private final mGroupItem:Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

.field private final mMainUser:Landroid/os/UserHandle;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$1;

    invoke-direct {v0}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$1;-><init>()V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->sWidgetOrderComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-static {v0, p1}, Lcom/sonymobile/home/cui/CuiGridHandler;->getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/cui/CuiGridModel;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V

    .line 59
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGroupItem:Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    new-instance v0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mMainUser:Landroid/os/UserHandle;

    .line 64
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$2;-><init>(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mMainUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGroupItem:Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->sWidgetOrderComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    return-object v0
.end method

.method public getWidgetGroupItem()Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGroupItem:Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    return-object v0
.end method

.method public getWidgetGroupLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGroupItem:Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;-><init>(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->close()V

    .line 89
    return-void
.end method
