.class Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/PackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageLoaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "x1"    # Lcom/sonymobile/home/model/PackageHandler$1;

    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;)V

    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 1489
    const-string v1, "PackageHandler"

    const-string v2, "onPackagesLoaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask$1;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;)V

    .line 1499
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler;->access$2500(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 1500
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1454
    const-string v6, "PackageHandler"

    const-string v7, "Running PackageLoaderTask"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    const/4 v7, 0x0

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getAllActivities(Landroid/os/UserHandle;)Ljava/util/HashMap;
    invoke-static {v6, v7}, Lcom/sonymobile/home/model/PackageHandler;->access$1100(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)Ljava/util/HashMap;

    move-result-object v0

    .line 1457
    .local v0, "allActivities":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/home/data/ActivityItem;Lcom/sonymobile/home/model/PackageHandler$AppInfo;>;"
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1200(Lcom/sonymobile/home/model/PackageHandler;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v4

    .line 1459
    .local v4, "externalStoragePrefManager":Lcom/sonymobile/home/ExternalStoragePreferenceManager;
    invoke-virtual {v4}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->updateAll()Ljava/util/Set;

    move-result-object v3

    .line 1460
    .local v3, "externalPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getUnavailablePackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;
    invoke-static {v6, v7, v3}, Lcom/sonymobile/home/model/PackageHandler;->access$1300(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v5

    .line 1462
    .local v5, "unavailableApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/model/UserPackage;>;"
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getAllInstalledWidgets()Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1463
    .local v2, "allWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getAllAdvancedWidgets()Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1500(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1465
    .local v1, "allAdvWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1600(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1466
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1700(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1467
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    # setter for: Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6, v7}, Lcom/sonymobile/home/model/PackageHandler;->access$1802(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 1468
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1900(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1470
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->checkWifiOffloadPackageExist()V
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$2000(Lcom/sonymobile/home/model/PackageHandler;)V

    .line 1471
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$2100(Lcom/sonymobile/home/model/PackageHandler;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1472
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$2300(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getAllInternetPermissions()Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sonymobile/home/model/PackageHandler;->access$2200(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1475
    :cond_0
    monitor-enter p0

    .line 1476
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$2400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1477
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->notifyListeners()V

    .line 1478
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$2500(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/home/util/ObserverList;->unregisterAll()V

    .line 1482
    return-void

    .line 1478
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
