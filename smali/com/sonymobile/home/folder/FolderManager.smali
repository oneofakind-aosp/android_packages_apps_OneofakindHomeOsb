.class public Lcom/sonymobile/home/folder/FolderManager;
.super Ljava/lang/Object;
.source "FolderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    }
.end annotation


# instance fields
.field private mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

.field private final mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/ObserverList",
            "<",
            "Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMaxNumberOfMiniatures:I

.field private mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

.field private final mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;

.field private final mWorker:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/badge/BadgeManager;I)V
    .locals 3
    .param p1, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "worker"    # Lcom/sonymobile/flix/util/Worker;
    .param p4, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p5, "maxNumberOfMiniatures"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {v0}, Lcom/sonymobile/home/util/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 119
    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 120
    iput-object p3, p0, Lcom/sonymobile/home/folder/FolderManager;->mWorker:Lcom/sonymobile/flix/util/Worker;

    .line 121
    iput-object p4, p0, Lcom/sonymobile/home/folder/FolderManager;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 122
    iput p5, p0, Lcom/sonymobile/home/folder/FolderManager;->mMaxNumberOfMiniatures:I

    .line 123
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/folder/FolderManager$1;-><init>(Lcom/sonymobile/home/folder/FolderManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    .line 177
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;Landroid/os/Handler;)V

    .line 179
    invoke-direct {p0}, Lcom/sonymobile/home/folder/FolderManager;->createBadgeListener()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/folder/FolderManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/folder/FolderManager;JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/os/UserHandle;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/folder/FolderManager;->syncFolderItemsPackageRemoved(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/folder/FolderManager;JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/os/UserHandle;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/folder/FolderManager;->syncFolderItemsPackageChanged(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/folder/FolderManager;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->containsPackage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/FolderManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderChanged(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->folderContainsBadgeItem(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/folder/FolderManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderBadgeChanged(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/folder/FolderManager;)Lcom/sonymobile/home/storage/Storage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    return-object v0
.end method

.method private containsPackage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 720
    .local v2, "result":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 721
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    const/4 v2, 0x1

    .line 727
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v2
.end method

.method private createBadgeListener()V
    .locals 3

    .prologue
    .line 481
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/folder/FolderManager$2;-><init>(Lcom/sonymobile/home/folder/FolderManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    .line 499
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mOnBadgeChangeListener:Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/badge/BadgeManager;->addOnBadgeChangeListener(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;Landroid/os/Handler;)V

    .line 500
    return-void
.end method

.method private folderContainsBadgeItem(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z
    .locals 5
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v3, 0x1

    .line 512
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 514
    .local v1, "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    .end local v1    # "folderItem":Lcom/sonymobile/home/data/Item;
    :goto_0
    return v3

    .line 516
    .restart local v1    # "folderItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v4, v1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v4, :cond_0

    .line 517
    check-cast v1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v1    # "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-static {v1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .line 520
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/data/ActivityItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 526
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getFolderContent(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .locals 6
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
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
    .line 530
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v0

    .line 531
    .local v0, "folderId":J
    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 533
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v2, :cond_0

    .line 535
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItemsFromStorage(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v3

    .line 537
    .local v3, "storageItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v2, :cond_0

    .line 541
    move-object v2, v3

    .line 545
    .end local v3    # "storageItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 530
    .end local v0    # "folderId":J
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getFolderItemsFromStorage(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .locals 2
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
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
    .line 549
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v1, p1}, Lcom/sonymobile/home/storage/Storage;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 551
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/folder/FolderManager;->syncFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)Z

    .line 553
    return-object v0
.end method

.method private notifyFolderAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 557
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$3;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/folder/FolderManager$3;-><init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/lang/String;)V

    .line 565
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 566
    return-void
.end method

.method private notifyFolderBadgeChanged(J)V
    .locals 3
    .param p1, "folderId"    # J

    .prologue
    .line 581
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager$5;-><init>(Lcom/sonymobile/home/folder/FolderManager;J)V

    .line 589
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 590
    return-void
.end method

.method private notifyFolderChanged(J)V
    .locals 3
    .param p1, "folderId"    # J

    .prologue
    .line 569
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager$4;-><init>(Lcom/sonymobile/home/folder/FolderManager;J)V

    .line 577
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 578
    return-void
.end method

.method private notifyFolderNameChanged(JLjava/lang/String;)V
    .locals 3
    .param p1, "folderId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 593
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/home/folder/FolderManager$6;-><init>(Lcom/sonymobile/home/folder/FolderManager;JLjava/lang/String;)V

    .line 601
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 602
    return-void
.end method

.method private syncFolderItemsPackageChanged(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "folderId"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 673
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v12, 0x0

    .line 675
    .local v12, "modelChanged":Z
    new-instance v2, Lcom/sonymobile/home/folder/FolderManager$8;

    move-object/from16 v0, p3

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/home/folder/FolderManager$8;-><init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;)V

    .line 692
    .local v2, "removeSyncable":Lcom/sonymobile/home/model/RemoveSyncable;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v11, "itemsRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p3

    .line 695
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v5

    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4}, Lcom/sonymobile/home/model/PackageHandler;->getUnavailableApps()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v2 .. v11}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageChanged(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v12, v3

    .line 700
    if-eqz v12, :cond_1

    .line 701
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v11}, Lcom/sonymobile/home/folder/FolderManager;->writeModelToStorage(JLjava/util/List;Ljava/util/List;)V

    .line 705
    :cond_0
    :goto_0
    monitor-exit p3

    .line 706
    return-void

    .line 702
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/folder/FolderManager;->containsPackage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 703
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderChanged(J)V

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private syncFolderItemsPackageRemoved(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "folderId"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 741
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    .line 742
    .local v1, "modelChanged":Z
    new-instance v2, Lcom/sonymobile/home/folder/FolderManager$9;

    invoke-direct {v2, p0, p3}, Lcom/sonymobile/home/folder/FolderManager$9;-><init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;)V

    .line 759
    .local v2, "removeSyncable":Lcom/sonymobile/home/model/RemoveSyncable;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v0, "itemsRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p3

    .line 762
    :try_start_0
    invoke-static {v2, p3, p4, p5, v0}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageRemoved(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 764
    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/folder/FolderManager;->writeModelToStorage(JLjava/util/List;Ljava/util/List;)V

    .line 767
    :cond_0
    monitor-exit p3

    .line 768
    return-void

    .line 767
    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/util/ObserverList;->registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 401
    return-void
.end method

.method public addItem(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "itemToBeAdded"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderContent(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 331
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter v0

    .line 332
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v1, "itemsToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const-string v2, "folder"

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 335
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 337
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v2, p1, v1}, Lcom/sonymobile/home/storage/Storage;->insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V

    .line 344
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderChanged(J)V

    .line 351
    return-void

    .line 348
    .end local v1    # "itemsToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clearTempFolder()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    const-string v1, "temp_folder"

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->clear(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public folderContainsItem(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "folderContainsItem":Z
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 207
    .local v2, "itemInFolder":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 212
    .end local v2    # "itemInFolder":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v0
.end method

.method public getBadge(J)Ljava/lang/String;
    .locals 9
    .param p1, "folderId"    # J

    .prologue
    .line 441
    invoke-static {}, Lcom/sonymobile/home/badge/BadgeManager;->getMaximumBadgeCount()I

    move-result v6

    .line 442
    .local v6, "maxBadgeCount":I
    const/4 v1, 0x0

    .line 443
    .local v1, "folderBadgeCount":I
    iget-object v7, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 445
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v5, :cond_0

    .line 446
    const/4 v7, 0x0

    .line 471
    :goto_0
    return-object v7

    .line 449
    :cond_0
    monitor-enter v5

    .line 450
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 451
    .local v2, "folderItem":Lcom/sonymobile/home/data/Item;
    const/4 v0, 0x0

    .line 452
    .local v0, "badgeValue":I
    instance-of v7, v2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v7, :cond_3

    .line 453
    check-cast v2, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v2    # "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-static {v2}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v4

    .line 455
    .local v4, "item":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v4, :cond_2

    .line 456
    iget-object v7, p0, Lcom/sonymobile/home/folder/FolderManager;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v7, v4}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeCount(Lcom/sonymobile/home/data/Item;)I

    move-result v0

    .line 462
    .end local v4    # "item":Lcom/sonymobile/home/data/ActivityItem;
    :cond_2
    :goto_1
    if-lez v0, :cond_1

    .line 463
    add-int/2addr v1, v0

    .line 464
    if-le v1, v6, :cond_1

    .line 465
    iget-object v7, p0, Lcom/sonymobile/home/folder/FolderManager;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v7}, Lcom/sonymobile/home/badge/BadgeManager;->getMaximumBadgeText()Ljava/lang/String;

    move-result-object v7

    monitor-exit v5

    goto :goto_0

    .line 469
    .end local v0    # "badgeValue":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 459
    .restart local v0    # "badgeValue":I
    .restart local v2    # "folderItem":Lcom/sonymobile/home/data/Item;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/home/folder/FolderManager;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v7, v2}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeCount(Lcom/sonymobile/home/data/Item;)I

    move-result v0

    goto :goto_1

    .line 469
    .end local v0    # "badgeValue":I
    .end local v2    # "folderItem":Lcom/sonymobile/home/data/Item;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    iget-object v7, p0, Lcom/sonymobile/home/folder/FolderManager;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getFolderItemMiniatures(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .locals 4
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
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
    .line 191
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/folder/FolderManager;->mMaxNumberOfMiniatures:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .locals 2
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
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
    .line 226
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderContent(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter v0

    .line 228
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I
    .locals 3
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderContent(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    .line 255
    .local v1, "numberOfItems":I
    monitor-enter v0

    .line 256
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 257
    monitor-exit v0

    .line 258
    return v1

    .line 257
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V
    .locals 1
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/home/folder/FolderManager;->insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;Z)V

    .line 306
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;Z)V
    .locals 6
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
    .param p3, "writeToStorage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "pageViewName":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    if-eqz p3, :cond_0

    .line 280
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v2, v1, v0}, Lcom/sonymobile/home/storage/Storage;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V

    .line 283
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/home/storage/Storage;->insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-direct {p0, v1}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderAdded(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public isFolderEmpty(Lcom/sonymobile/home/data/FolderItem;)Z
    .locals 2
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderContent(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter v0

    .line 241
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCachedFolder(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 4
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public removeFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/ObserverList;->unregisterObserver(Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public removeFolderItem(Lcom/sonymobile/home/data/FolderItem;J)V
    .locals 10
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "id"    # J

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v2

    .line 369
    .local v2, "folderId":J
    iget-object v7, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 371
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v4, :cond_0

    .line 391
    :goto_0
    return-void

    .line 375
    :cond_0
    monitor-enter v4

    .line 376
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 378
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 379
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 381
    .local v0, "anItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v8

    cmp-long v7, v8, p2

    if-nez v7, :cond_2

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v5, "itemsRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sonymobile/home/folder/FolderManager;->writeModelToStorage(JLjava/util/List;Ljava/util/List;)V

    .line 390
    .end local v0    # "anItem":Lcom/sonymobile/home/data/Item;
    .end local v5    # "itemsRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v1    # "i":I
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 378
    .restart local v0    # "anItem":Lcom/sonymobile/home/data/Item;
    .restart local v1    # "i":I
    .restart local v6    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setFolderName(Lcom/sonymobile/home/data/FolderItem;Ljava/lang/String;)V
    .locals 2
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-virtual {p1, p2}, Lcom/sonymobile/home/data/FolderItem;->setName(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderNameChanged(JLjava/lang/String;)V

    .line 359
    return-void
.end method

.method public syncFolder(Lcom/sonymobile/home/data/FolderItem;)Z
    .locals 4
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderContent(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v1

    .line 616
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter v1

    .line 617
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/home/folder/FolderManager;->syncFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)Z

    move-result v0

    .line 618
    .local v0, "folderChanged":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderChanged(J)V

    .line 624
    :cond_0
    return v0

    .line 618
    .end local v0    # "folderChanged":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected syncFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)Z
    .locals 7
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    .line 637
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v5, "itemsRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager$7;-><init>(Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    move-object v2, p2

    move-object v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/SyncHelper;->sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    move-result v6

    .line 654
    .local v6, "modelChanged":Z
    if-eqz v6, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, v5}, Lcom/sonymobile/home/folder/FolderManager;->writeModelToStorage(JLjava/util/List;Ljava/util/List;)V

    .line 658
    :cond_0
    return v6
.end method

.method protected writeModelToStorage(JLjava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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

    .prologue
    .line 788
    .local p3, "itemsToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p4, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 789
    .local v3, "itemsUpdateCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz p4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 793
    .local v2, "itemsRemoveCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 794
    const/4 v4, 0x0

    .line 795
    .local v4, "position":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 796
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "position":I
    .local v5, "position":I
    iput v4, v6, Lcom/sonymobile/home/data/ItemLocation;->position:I

    move v4, v5

    .line 797
    .end local v5    # "position":I
    .restart local v4    # "position":I
    goto :goto_1

    .line 789
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemsRemoveCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v4    # "position":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 800
    .restart local v2    # "itemsRemoveCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->notifyFolderChanged(J)V

    .line 806
    iget-object v6, p0, Lcom/sonymobile/home/folder/FolderManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v6}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 807
    iget-object v6, p0, Lcom/sonymobile/home/folder/FolderManager;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v7, Lcom/sonymobile/home/folder/FolderManager$10;

    invoke-direct {v7, p0, v2, v3}, Lcom/sonymobile/home/folder/FolderManager$10;-><init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 823
    :cond_2
    return-void
.end method
