.class public abstract Lcom/sonymobile/home/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/model/Model$ModelStateConfigurable;
    }
.end annotation


# instance fields
.field protected mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

.field protected mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

.field protected mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field protected mIsDestroyed:Z

.field private final mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mIsSafeMode:Z

.field protected final mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

.field protected final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMainThreadHandler:Landroid/os/Handler;

.field protected final mModelObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/ModelObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

.field private mOnLoadedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

.field protected mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

.field protected mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

.field protected mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field protected final mPageViewName:Ljava/lang/String;

.field protected mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field protected final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V
    .locals 2
    .param p1, "pageViewName"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    iput-boolean v1, p0, Lcom/sonymobile/home/model/Model;->mIsDestroyed:Z

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mMainThreadHandler:Landroid/os/Handler;

    .line 144
    iput-object p3, p0, Lcom/sonymobile/home/model/Model;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 145
    iput-object p2, p0, Lcom/sonymobile/home/model/Model;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 146
    iput-object p4, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 147
    iput-object p6, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    .line 149
    iput-object p5, p0, Lcom/sonymobile/home/model/Model;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 150
    iput-object p7, p0, Lcom/sonymobile/home/model/Model;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 151
    iput-object p1, p0, Lcom/sonymobile/home/model/Model;->mPageViewName:Ljava/lang/String;

    .line 152
    invoke-virtual {p3}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/model/Model;->mIsSafeMode:Z

    .line 153
    invoke-direct {p0}, Lcom/sonymobile/home/model/Model;->createBadgeListener()V

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->createFolderChangeListener()V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/model/Model;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/Model;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonymobile/home/model/Model;->runOnLoadedRunnables()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/model/Model;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/Model;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/Model;->clearItemsFromModel(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/Model;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/Model;->updateDynamicResource(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/Model;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/Model;->updateShortcutBadges(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method private clearItemsFromModel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "itemsToClear":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->removeAll(Ljava/util/List;)Z

    .line 722
    new-instance v0, Lcom/sonymobile/home/model/Model$3;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/model/Model$3;-><init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;)V

    .line 750
    .local v0, "removeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 751
    return-void
.end method

.method private createBadgeListener()V
    .locals 3

    .prologue
    .line 1010
    new-instance v0, Lcom/sonymobile/home/model/Model$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/Model$7;-><init>(Lcom/sonymobile/home/model/Model;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    .line 1022
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/badge/BadgeManager;->addOnBadgeChangeListener(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;Landroid/os/Handler;)V

    .line 1023
    return-void
.end method

.method private static isActivityResource(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1384
    instance-of v0, p0, Lcom/sonymobile/home/data/ActivityItem;

    return v0
.end method

.method public static isBelowMinimumNumberOfItemsInFolder(I)Z
    .locals 1
    .param p0, "nbrOfItemsInFolder"    # I

    .prologue
    .line 1194
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z
    .locals 6
    .param p0, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1226
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v4

    .line 1238
    :cond_1
    :goto_0
    return v3

    .line 1229
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1233
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 1234
    .local v2, "occupiedLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 1235
    goto :goto_0
.end method

.method private releaseItemResource(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResource(Lcom/sonymobile/home/data/Item;)V

    .line 1391
    :cond_0
    return-void
.end method

.method private removeCachedFolders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 186
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v2, v1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    check-cast v1, Lcom/sonymobile/home/data/FolderItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, v1}, Lcom/sonymobile/home/folder/FolderManager;->removeCachedFolder(Lcom/sonymobile/home/data/FolderItem;)V

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method private runOnLoadedRunnables()V
    .locals 3

    .prologue
    .line 216
    iget-boolean v2, p0, Lcom/sonymobile/home/model/Model;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 220
    .local v1, "onLoadedRunnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 222
    .end local v1    # "onLoadedRunnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 223
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private updateDynamicResource(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->updateDynamicResource(Lcom/sonymobile/home/data/Item;)V

    .line 1049
    :cond_0
    return-void
.end method

.method private updateShortcutBadges(Lcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "updatedItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1032
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

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

    .line 1033
    .local v2, "modelItem":Lcom/sonymobile/home/data/Item;
    instance-of v4, v2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 1034
    check-cast v3, Lcom/sonymobile/home/data/ShortcutItem;

    .line 1035
    .local v3, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-static {v3}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .line 1037
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/data/ActivityItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1038
    invoke-direct {p0, v3}, Lcom/sonymobile/home/model/Model;->updateDynamicResource(Lcom/sonymobile/home/data/Item;)V

    .line 1039
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/model/Model;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 1043
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v2    # "modelItem":Lcom/sonymobile/home/data/Item;
    .end local v3    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_1
    return-void
.end method

.method public static waitForModelsToBeLoaded(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onModelsLoadedCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1538
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    new-instance v2, Landroid/util/MutableInt;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 1539
    .local v2, "nbrOfModelsToWaitFor":Landroid/util/MutableInt;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/Model;

    .line 1540
    .local v1, "model":Lcom/sonymobile/home/model/Model;
    new-instance v3, Lcom/sonymobile/home/model/Model$10;

    invoke-direct {v3, v2, p1}, Lcom/sonymobile/home/model/Model$10;-><init>(Landroid/util/MutableInt;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/model/Model;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1550
    .end local v1    # "model":Lcom/sonymobile/home/model/Model;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1276
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "containerItem"    # Lcom/sonymobile/home/data/Item;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1301
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sonymobile/home/model/Model;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v3, "notAdded":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 266
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/model/Model;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 268
    .local v0, "added":Z
    if-nez v0, :cond_0

    .line 269
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v0    # "added":Z
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-object v3
.end method

.method protected addItemsAndUpdatePersistentStorage(Ljava/util/Collection;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z
    .locals 4
    .param p2, "onWriteCompletedCallback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/sonymobile/home/data/Item;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/sonymobile/home/storage/OnWriteCompletedCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    const/4 v2, 0x0

    .line 289
    .local v2, "itemsAdded":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 290
    .local v1, "item":Lcom/sonymobile/home/data/Item;, "TE;"
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/model/Model;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 291
    goto :goto_0

    .line 293
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;, "TE;"
    :cond_0
    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->notifyOnModelChanged()V

    .line 295
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 298
    :cond_1
    return v2
.end method

.method public addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/home/model/ModelObserver;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method public addOnLoadedRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onLoadedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1324
    :goto_0
    return-void

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnLoadedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "item2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1288
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p2, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 705
    .local v0, "itemsListCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/Model;->clearItemsFromModel(Ljava/util/List;)V

    .line 706
    return-void
.end method

.method public abstract configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation
.end method

.method protected configureModel(Ljava/util/List;Lcom/sonymobile/home/model/Model$ModelStateConfigurable;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 3
    .param p2, "modelStateConfigurable"    # Lcom/sonymobile/home/model/Model$ModelStateConfigurable;
    .param p3, "onConfigCompletedCallback"    # Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/Model$ModelStateConfigurable;",
            "Lcom/sonymobile/home/model/OnConfigCompletedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1396
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1397
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1400
    :cond_1
    new-instance v0, Lcom/sonymobile/home/model/Model$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/home/model/Model$9;-><init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;Lcom/sonymobile/home/model/Model$ModelStateConfigurable;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/Model$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1433
    return-void
.end method

.method public contains(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createConfig()Lcom/sonymobile/home/configuration/Config;
    .locals 1

    .prologue
    .line 1466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected createFolderChangeListener()V
    .locals 1

    .prologue
    .line 1118
    new-instance v0, Lcom/sonymobile/home/model/Model$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/Model$8;-><init>(Lcom/sonymobile/home/model/Model;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/Model;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .line 1175
    return-void
.end method

.method protected abstract createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
.end method

.method protected abstract createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
.end method

.method protected abstract createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
.end method

.method public deleteItem(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/model/Model;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 419
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->deleteItemResource(Lcom/sonymobile/home/data/Item;)V

    .line 420
    return-void
.end method

.method protected deleteItemResource(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->deleteResource(Lcom/sonymobile/home/data/Item;)V

    .line 1332
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/data/ItemCreator;->destroyItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method protected abstract doLoadModel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract doStoreModel(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public getConfigItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1477
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1478
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1479
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 1480
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 1481
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    instance-of v7, v3, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v7, :cond_0

    move-object v5, v3

    .line 1482
    check-cast v5, Lcom/sonymobile/home/data/FolderItem;

    .line 1483
    .local v5, "modelFolderItem":Lcom/sonymobile/home/data/FolderItem;
    new-instance v0, Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {v0, v5}, Lcom/sonymobile/home/data/FolderItem;-><init>(Lcom/sonymobile/home/data/FolderItem;)V

    .line 1484
    .local v0, "configFolderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v7, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v7, v5}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v1

    .line 1485
    .local v1, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/FolderItem;->addTemporaryItems(Ljava/util/List;)V

    .line 1486
    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1479
    .end local v0    # "configFolderItem":Lcom/sonymobile/home/data/FolderItem;
    .end local v1    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v5    # "modelFolderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1490
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-object v4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .locals 1
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method public getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 535
    if-eqz p1, :cond_1

    .line 536
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 537
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 538
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 539
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "size":I
    :goto_1
    return-object v1

    .line 537
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v2    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "size":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemWithId(J)Lcom/sonymobile/home/data/Item;
    .locals 7
    .param p1, "itemId"    # J

    .prologue
    .line 505
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 506
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 507
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 508
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 512
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :goto_1
    return-object v1

    .line 506
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemsOnPage(I)Ljava/util/List;
    .locals 5
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v3, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 487
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 488
    .local v2, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v4, v2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v4, p1, :cond_0

    .line 489
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    return-object v3
.end method

.method public getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I
    .locals 1
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mPageViewName:Ljava/lang/String;

    return-object v0
.end method

.method public getResource(I)Lcom/sonymobile/home/model/ResourceItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 559
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/ResourceHandler;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 563
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResource(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->hasResource(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPageEmpty(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVacant(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 1
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/sonymobile/home/model/Model;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected abstract isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
.end method

.method public itemExistsInItemListOrInFolder(Lcom/sonymobile/home/data/Item;)Z
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "itemFound":Z
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 444
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_2

    if-ge v0, v3, :cond_2

    .line 445
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 446
    .local v2, "modelItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    const/4 v1, 0x1

    .line 444
    .end local v2    # "modelItem":Lcom/sonymobile/home/data/Item;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .restart local v2    # "modelItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v4, v2, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    check-cast v2, Lcom/sonymobile/home/data/FolderItem;

    .end local v2    # "modelItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v4, v2, p1}, Lcom/sonymobile/home/folder/FolderManager;->folderContainsItem(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    goto :goto_1

    .line 452
    :cond_2
    return v1
.end method

.method public load()V
    .locals 3

    .prologue
    .line 660
    new-instance v0, Lcom/sonymobile/home/model/Model$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/Model$2;-><init>(Lcom/sonymobile/home/model/Model;)V

    .line 695
    .local v0, "readModelAsyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 696
    return-void
.end method

.method protected notifyOnModelChanged()V
    .locals 3

    .prologue
    .line 618
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ModelObserver;

    .line 619
    .local v1, "observer":Lcom/sonymobile/home/model/ModelObserver;
    invoke-interface {v1}, Lcom/sonymobile/home/model/ModelObserver;->onModelChanged()V

    goto :goto_0

    .line 621
    .end local v1    # "observer":Lcom/sonymobile/home/model/ModelObserver;
    :cond_0
    return-void
.end method

.method protected notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->contains(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ModelObserver;

    .line 634
    .local v1, "observer":Lcom/sonymobile/home/model/ModelObserver;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/model/ModelObserver;->onModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 637
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/sonymobile/home/model/ModelObserver;
    :cond_0
    return-void
.end method

.method protected notifyOnModelOrderChanged()V
    .locals 3

    .prologue
    .line 645
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ModelObserver;

    .line 646
    .local v1, "observer":Lcom/sonymobile/home/model/ModelObserver;
    invoke-interface {v1}, Lcom/sonymobile/home/model/ModelObserver;->onModelOrderChanged()V

    goto :goto_0

    .line 648
    .end local v1    # "observer":Lcom/sonymobile/home/model/ModelObserver;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->removeOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->removeOnPackagesLoadedListener(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;)V

    .line 168
    :cond_1
    iput-object v2, p0, Lcom/sonymobile/home/model/Model;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 169
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->removeOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/Model;->removeCachedFolders(Ljava/util/List;)V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/badge/BadgeManager;->removeOnBadgeChangeListener(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;)V

    .line 178
    iput-object v2, p0, Lcom/sonymobile/home/model/Model;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 179
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderManager;->removeFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    .line 180
    iput-object v2, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/model/Model;->mIsDestroyed:Z

    .line 182
    return-void
.end method

.method public removeAll(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 384
    .local v2, "itemsRemoved":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 385
    .local v1, "itemToRemove":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/home/model/Model;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v2, v3

    .line 386
    goto :goto_0

    .line 385
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 388
    .end local v1    # "itemToRemove":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v2
.end method

.method public removeAllItems(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "itemRemoved":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return v0
.end method

.method public removeAllOccurrences(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "removedItemsOut":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 327
    .local v0, "itemsRemoved":Z
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 329
    .local v2, "modelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 332
    .local v1, "modelItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 334
    const/4 v0, 0x1

    .line 335
    if-eqz p2, :cond_0

    .line 336
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v1    # "modelItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v0
.end method

.method protected removeEmptyFolder(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 1
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v0, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    .line 1057
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/Model;->updateModel(Ljava/util/List;)V

    .line 1058
    return-void
.end method

.method protected removeFolderIfItContainsOnlyOneItem(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 8
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 1068
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v4, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v1

    .line 1069
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1070
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 1073
    .local v3, "oldItem":Lcom/sonymobile/home/data/Item;
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    invoke-interface {v4, v3}, Lcom/sonymobile/home/data/ItemCreator;->createItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 1074
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1076
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mPageViewName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 1079
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v2, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v4, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v6

    invoke-virtual {v4, p1, v6, v7}, Lcom/sonymobile/home/folder/FolderManager;->removeFolderItem(Lcom/sonymobile/home/data/FolderItem;J)V

    .line 1082
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    .line 1085
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/Model;->addItem(Lcom/sonymobile/home/data/Item;)Z

    .line 1086
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/model/Model;->updateModel(Ljava/util/List;)V

    .line 1089
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v3    # "oldItem":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/model/Model;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItemAndUpdate(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "itemToRemove"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->removeAllItems(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 400
    .local v1, "removed":Z
    if-eqz v1, :cond_0

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v0, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;)V

    .line 404
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->notifyOnModelChanged()V

    .line 406
    .end local v0    # "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public removeItemWithId(J)Lcom/sonymobile/home/data/Item;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 352
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 353
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 354
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 355
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 361
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :goto_1
    return-object v3

    .line 353
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/home/model/ModelObserver;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mModelObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 610
    return-void
.end method

.method protected setModelLoaded()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/model/Model$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/model/Model$1;-><init>(Lcom/sonymobile/home/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method protected setModelUnloaded()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonymobile/home/model/Model;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    return-void
.end method

.method public setResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V
    .locals 0
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 1529
    return-void
.end method

.method protected syncFolders()V
    .locals 3

    .prologue
    .line 1451
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1452
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v2, v1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_0

    .line 1453
    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    check-cast v1, Lcom/sonymobile/home/data/FolderItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, v1}, Lcom/sonymobile/home/folder/FolderManager;->syncFolder(Lcom/sonymobile/home/data/FolderItem;)Z

    goto :goto_0

    .line 1456
    :cond_1
    return-void
.end method

.method protected abstract syncItems(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation
.end method

.method public updateModel()V
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/Model;->updateModel(Ljava/util/List;)V

    .line 1108
    return-void
.end method

.method public updateModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1098
    .local p1, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->notifyOnModelChanged()V

    .line 1099
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;)V

    .line 1100
    return-void
.end method

.method protected updateModelItems(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z
    .locals 6
    .param p2, "onWriteCompletedCallback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/storage/OnWriteCompletedCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1349
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1350
    .local v3, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v5, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1352
    const/4 v0, 0x1

    .line 1353
    .local v0, "addsSuccessful":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1354
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/model/Model;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1355
    const/4 v0, 0x0

    .line 1360
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    if-eqz v0, :cond_5

    .line 1361
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 1362
    .local v4, "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1363
    invoke-virtual {p0, v4}, Lcom/sonymobile/home/model/Model;->deleteItemResource(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 1364
    :cond_3
    invoke-static {v4}, Lcom/sonymobile/home/model/Model;->isActivityResource(Lcom/sonymobile/home/data/Item;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1365
    invoke-direct {p0, v4}, Lcom/sonymobile/home/model/Model;->releaseItemResource(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 1370
    .end local v4    # "oldItem":Lcom/sonymobile/home/data/Item;
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->syncFolders()V

    .line 1371
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/model/Model;->syncItems(Ljava/util/Collection;)Z

    .line 1373
    invoke-virtual {p0}, Lcom/sonymobile/home/model/Model;->notifyOnModelChanged()V

    .line 1374
    invoke-virtual {p0, v3, p2}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 1375
    const/4 v5, 0x1

    .line 1379
    :goto_1
    return v5

    .line 1378
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1379
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public updateModelToStorage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "deletedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-boolean v3, p0, Lcom/sonymobile/home/model/Model;->mIsSafeMode:Z

    if-eqz v3, :cond_0

    .line 784
    :goto_0
    return-void

    .line 766
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 767
    .local v1, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 769
    .local v0, "deleteItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v2, Lcom/sonymobile/home/model/Model$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/sonymobile/home/model/Model$4;-><init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;Ljava/util/List;)V

    .line 783
    .local v2, "updateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected updateStorage(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 906
    new-instance v0, Lcom/sonymobile/home/model/Model$6;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/model/Model$6;-><init>(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/data/Item;)V

    .line 915
    .local v0, "writeToStorageTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 916
    return-void
.end method

.method public writeModelToStorage()V
    .locals 2

    .prologue
    .line 798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 799
    return-void
.end method

.method public writeModelToStorage(Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    .line 821
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 822
    return-void
.end method

.method public writeModelToStorage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 810
    return-void
.end method

.method public writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 4
    .param p2, "callback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/storage/OnWriteCompletedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 848
    .local v0, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v1, Lcom/sonymobile/home/model/Model$5;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/sonymobile/home/model/Model$5;-><init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 896
    .local v1, "writeToStorageTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 897
    return-void
.end method
