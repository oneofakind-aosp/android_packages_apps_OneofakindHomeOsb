.class public Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;
.super Ljava/lang/Object;
.source "ModeMigrationDesktopSorter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

.field private final mContext:Landroid/content/Context;

.field private final mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field private final mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

.field private final mUpperPageLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p4, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p5, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p6, "callbackForStageItems"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mContext:Landroid/content/Context;

    .line 68
    iput-object p5, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 69
    iput-object p2, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 70
    iput-object p3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 71
    iput-object p4, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 72
    iput-object p6, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mMainThreadHandler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-static {v0, v1}, Lcom/sonymobile/home/storage/StorageManager;->getStatistics(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/statistics/StatisticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResources:Landroid/content/res/Resources;

    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mUpperPageLimit:I

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;
    .param p1, "x1"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->sortAndAddActivities(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addActivitiesToList(Lcom/sonymobile/home/data/Item;Ljava/util/List;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "outActivityItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    instance-of v3, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v3, :cond_1

    .line 280
    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    return-void

    .line 282
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 283
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 285
    .local v0, "folder":Lcom/sonymobile/home/data/FolderItem;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 286
    .local v1, "folderItem":Lcom/sonymobile/home/data/Item;
    instance-of v3, v1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v3, :cond_2

    .line 287
    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .end local v1    # "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustActivityInstallTimes(Ljava/util/List;Ljava/util/Map;J)V
    .locals 7
    .param p3, "defaultTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "activityItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    .local p2, "installTimes":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 305
    .local v1, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 306
    .local v2, "itemInstallTime":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-gez v3, :cond_0

    .line 307
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    .end local v1    # "item":Lcom/sonymobile/home/data/ActivityItem;
    .end local v2    # "itemInstallTime":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private createUnusedFolder(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V
    .locals 4
    .param p1, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/desktop/DesktopModel;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;-><init>(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;Lcom/sonymobile/home/desktop/DesktopModel;)V

    iget-object v3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonymobile/home/data/ItemCreator;->createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    .line 219
    return-void
.end method

.method private getAllActivitiesOnStage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    invoke-interface {v3}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 266
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->addActivitiesToList(Lcom/sonymobile/home/data/Item;Ljava/util/List;)V

    goto :goto_0

    .line 268
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-object v0
.end method

.method private getAllActivitiesUpUntilPage(Lcom/sonymobile/home/desktop/DesktopModel;I)Ljava/util/List;
    .locals 5
    .param p1, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "lastPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/desktop/DesktopModel;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 249
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 250
    .local v3, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-gt v4, p2, :cond_0

    .line 251
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->addActivitiesToList(Lcom/sonymobile/home/data/Item;Ljava/util/List;)V

    goto :goto_0

    .line 254
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    return-object v0
.end method

.method private getExcludeItemsUpUntilPage(Lcom/sonymobile/home/desktop/DesktopModel;I)Ljava/util/List;
    .locals 2
    .param p1, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "lastPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/desktop/DesktopModel;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->getAllActivitiesUpUntilPage(Lcom/sonymobile/home/desktop/DesktopModel;I)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "excludeItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->getAllActivitiesOnStage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    return-object v0
.end method

.method private getHomeInstallTime()J
    .locals 7

    .prologue
    .line 317
    const-wide/16 v2, 0x0

    .line 319
    .local v2, "homeInstallTime":J
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 320
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 321
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-wide v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->TAG:Ljava/lang/String;

    const-string v6, "Could not get Home app activity info"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sortAndAddActivities(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/desktop/DesktopModel;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "desktopItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    .local p3, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    const/4 v10, 0x1

    .line 141
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v8}, Lcom/sonymobile/home/model/PackageHandler;->getInstallTimes()Ljava/util/Map;

    move-result-object v4

    .line 144
    .local v4, "installTimes":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v8}, Lcom/sonymobile/home/model/ResourceHandler;->getResources()Ljava/util/Map;

    move-result-object v7

    .line 147
    .local v7, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->getHomeInstallTime()J

    move-result-wide v2

    .line 148
    .local v2, "defaultInstallTime":J
    invoke-direct {p0, p2, v4, v2, v3}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->adjustActivityInstallTimes(Ljava/util/List;Ljava/util/Map;J)V

    .line 149
    invoke-direct {p0, p3, v4, v2, v3}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->adjustActivityInstallTimes(Ljava/util/List;Ljava/util/Map;J)V

    .line 152
    invoke-static {v4, v7, v10}, Lcom/sonymobile/home/model/AppComparators;->getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {p3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v8}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStatisticsItems()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8, v4, v7}, Lcom/sonymobile/home/model/AppComparators;->getMostUsedOrInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {p2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v8

    iget v9, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mUpperPageLimit:I

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Lcom/sonymobile/home/desktop/DesktopModel;->deletePagesAfter(I)V

    .line 161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/ActivityItem;

    .line 162
    .local v5, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v8

    invoke-virtual {p1, v5, v10, v10, v8}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemAtFirstVacantLocation(Lcom/sonymobile/home/data/Item;III)Z

    move-result v0

    .line 164
    .local v0, "added":Z
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->appendPage()I

    move-result v6

    .line 166
    .local v6, "pageId":I
    const v8, 0x7fffffff

    if-eq v6, v8, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v8

    invoke-virtual {p1, v5, v10, v10, v8}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemAtFirstVacantLocation(Lcom/sonymobile/home/data/Item;III)Z

    goto :goto_1

    .line 144
    .end local v0    # "added":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "defaultInstallTime":J
    .end local v5    # "item":Lcom/sonymobile/home/data/ActivityItem;
    .end local v6    # "pageId":I
    .end local v7    # "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 169
    .restart local v0    # "added":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "defaultInstallTime":J
    .restart local v5    # "item":Lcom/sonymobile/home/data/ActivityItem;
    .restart local v6    # "pageId":I
    .restart local v7    # "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    :cond_2
    sget-object v8, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->TAG:Ljava/lang/String;

    const-string v9, "Could not add desktop item, maximum number of pages reached"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "added":Z
    .end local v5    # "item":Lcom/sonymobile/home/data/ActivityItem;
    .end local v6    # "pageId":I
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 176
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->createUnusedFolder(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V

    .line 178
    :cond_4
    return-void
.end method


# virtual methods
.method public sort(Lcom/sonymobile/home/desktop/DesktopModel;I)V
    .locals 11
    .param p1, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "startThreshold"    # I

    .prologue
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "desktopItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ActivityItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget v7, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mUpperPageLimit:I

    invoke-direct {p0, p1, v7}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->getExcludeItemsUpUntilPage(Lcom/sonymobile/home/desktop/DesktopModel;I)Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, "excludeItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v7, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v7}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet()Ljava/util/Set;

    move-result-object v1

    .line 102
    .local v1, "activityItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 104
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    iget-object v7, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v7, v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStartCount(Lcom/sonymobile/home/data/ActivityItem;)I

    move-result v6

    .line 108
    .local v6, "startCount":I
    if-le v6, p2, :cond_1

    .line 109
    new-instance v7, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v7, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    new-instance v7, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v7, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v6    # "startCount":I
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 118
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v7, :cond_4

    .line 123
    iget-object v7, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;

    invoke-direct {v9, p0, p1, v2, v4}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;-><init>(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v9, v10}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 135
    :goto_1
    return-void

    .line 133
    :cond_4
    invoke-direct {p0, p1, v2, v4}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->sortAndAddActivities(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method
