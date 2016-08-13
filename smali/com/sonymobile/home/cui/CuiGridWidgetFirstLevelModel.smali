.class public Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;
.super Lcom/sonymobile/home/cui/CuiGridModel;
.source "CuiGridWidgetFirstLevelModel.java"


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

.field private final mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

.field private final mLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainUser:Landroid/os/UserHandle;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWidgetComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desktopPreferences"    # Lcom/sonymobile/home/desktop/DesktopPreferences;

    .prologue
    .line 95
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-static {v0, p1}, Lcom/sonymobile/home/cui/CuiGridHandler;->getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/cui/CuiGridModel;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V

    .line 50
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$1;-><init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetComparator:Ljava/util/Comparator;

    .line 65
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;-><init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mLabelComparator:Ljava/util/Comparator;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 97
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mUserManager:Landroid/os/UserManager;

    .line 98
    new-instance v0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    .line 99
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mMainUser:Landroid/os/UserHandle;

    .line 100
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

    .line 102
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$3;-><init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mLabelComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mMainUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWidgetComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/desktop/DesktopPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$4;-><init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 297
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->close()V

    .line 133
    return-void
.end method
