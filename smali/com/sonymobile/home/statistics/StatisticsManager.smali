.class public Lcom/sonymobile/home/statistics/StatisticsManager;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;,
        Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;
    }
.end annotation


# instance fields
.field private final mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatisticsObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 3
    .param p1, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsObservers:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .local v0, "mainThreadHandler":Landroid/os/Handler;
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 69
    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 71
    new-instance v1, Lcom/sonymobile/home/statistics/StatisticsManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/StatisticsManager$1;-><init>(Lcom/sonymobile/home/statistics/StatisticsManager;)V

    iput-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    .line 108
    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;Landroid/os/Handler;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/storage/Storage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p1, "x1"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager;->notifyStatisticsItemChanged(Lcom/sonymobile/home/statistics/StatisticsItem;)V

    return-void
.end method

.method public static getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Map;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 165
    .local p3, "statisticsItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    const/4 v2, 0x0

    .line 166
    .local v2, "startCount":I
    new-instance v1, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 167
    .local v1, "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/statistics/StatisticsItem;

    .line 168
    .local v0, "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/sonymobile/home/statistics/StatisticsItem;->getStartCount()I

    move-result v2

    .line 172
    :cond_0
    return v2
.end method

.method private notifyStatisticsItemChanged(Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 403
    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    .line 404
    .local v1, "observer":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;->onStatisticsItemChanged(Lcom/sonymobile/home/statistics/StatisticsItem;)V

    goto :goto_0

    .line 406
    .end local v1    # "observer":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;
    :cond_0
    return-void
.end method

.method private writeItemToStorage(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 4
    .param p1, "key"    # Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    .param p2, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 410
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsManager$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$5;-><init>(Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/statistics/StatisticsItem;Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)V

    .line 427
    .local v0, "storeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/sonymobile/home/statistics/StatisticsItem;Ljava/lang/Void;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/home/statistics/StatisticsItem;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    return-void
.end method


# virtual methods
.method public addStatisticsObserver(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;)V
    .locals 1
    .param p1, "statisticsObserver"    # Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public getStartCount(Lcom/sonymobile/home/data/ActivityItem;)I
    .locals 4
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2, p3, v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getStatisticsItems()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public incrementStartCount(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 202
    instance-of v5, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    move-object v5, p1

    .line 204
    check-cast v5, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v5}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 207
    .local v4, "user":Landroid/os/UserHandle;
    invoke-virtual {p0, v2, v1, v4}, Lcom/sonymobile/home/statistics/StatisticsManager;->incrementStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 223
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "user":Landroid/os/UserHandle;
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    instance-of v5, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 209
    check-cast v3, Lcom/sonymobile/home/data/ShortcutItem;

    .line 210
    .local v3, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-virtual {v3}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2    # "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v3}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    invoke-virtual {v3}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 217
    .restart local v4    # "user":Landroid/os/UserHandle;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v2, v0, v4}, Lcom/sonymobile/home/statistics/StatisticsManager;->incrementStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public incrementStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 185
    new-instance v1, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 186
    .local v1, "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/statistics/StatisticsItem;

    .line 188
    .local v0, "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsItem;

    .end local v0    # "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$100(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$200(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$300(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/home/statistics/StatisticsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 190
    .restart local v0    # "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/home/statistics/StatisticsItem;->getStartCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/statistics/StatisticsItem;->setStartCount(I)V

    .line 193
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->writeItemToStorage(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;Lcom/sonymobile/home/statistics/StatisticsItem;)V

    .line 194
    return-void
.end method

.method public readStatisticsDataFromStorageSync()V
    .locals 7

    .prologue
    .line 248
    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v4}, Lcom/sonymobile/home/storage/Storage;->getApplicationStatistics()Ljava/util/List;

    move-result-object v2

    .line 252
    .local v2, "statisticsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/statistics/StatisticsItem;

    .line 253
    .local v1, "statisticsItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    new-instance v3, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    invoke-virtual {v1}, Lcom/sonymobile/home/statistics/StatisticsItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/home/statistics/StatisticsItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/home/statistics/StatisticsItem;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 255
    .local v3, "statisticsKey":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    .end local v1    # "statisticsItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    .end local v3    # "statisticsKey":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "statisticsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    :cond_1
    return-void
.end method

.method public removeStatisticsData(Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 3
    .param p1, "statisticsItem"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 307
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$2;-><init>(Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/statistics/StatisticsItem;)V

    .line 319
    .local v0, "storeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    return-void
.end method

.method public removeStatisticsData(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 323
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/statistics/StatisticsManager$3;-><init>(Lcom/sonymobile/home/statistics/StatisticsManager;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 346
    .local v0, "storeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void
.end method

.method public removeStatisticsData(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Set;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "activityNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsManager$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/home/statistics/StatisticsManager$4;-><init>(Lcom/sonymobile/home/statistics/StatisticsManager;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Set;)V

    .line 399
    .local v0, "storeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void
.end method

.method public removeStatisticsObserver(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;)V
    .locals 1
    .param p1, "statisticsObserver"    # Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public syncStatisticsData()V
    .locals 8

    .prologue
    .line 270
    iget-object v7, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, "toBeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;"
    iget-object v7, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 274
    .local v4, "statisticsKey":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v7, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/statistics/StatisticsItem;

    .line 275
    .local v3, "statisticsItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    invoke-virtual {v3}, Lcom/sonymobile/home/statistics/StatisticsItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sonymobile/home/statistics/StatisticsItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sonymobile/home/statistics/StatisticsItem;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 279
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v7, v2, v1, v6}, Lcom/sonymobile/home/model/PackageHandler;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v7, v2, v6}, Lcom/sonymobile/home/model/PackageHandler;->isPackageUnavailable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 281
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "statisticsItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    .end local v4    # "statisticsKey":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    .end local v6    # "user":Landroid/os/UserHandle;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 286
    .restart local v4    # "statisticsKey":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v7, p0, Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/statistics/StatisticsItem;

    .line 287
    .restart local v3    # "statisticsItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsData(Lcom/sonymobile/home/statistics/StatisticsItem;)V

    goto :goto_1

    .line 290
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "statisticsItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    .end local v4    # "statisticsKey":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    .end local v5    # "toBeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;"
    :cond_3
    return-void
.end method
