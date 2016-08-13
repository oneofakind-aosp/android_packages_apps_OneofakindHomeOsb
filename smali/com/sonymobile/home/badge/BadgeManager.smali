.class public Lcom/sonymobile/home/badge/BadgeManager;
.super Ljava/lang/Object;
.source "BadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;
    }
.end annotation


# instance fields
.field private final mBadgeMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeMaxText:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOnBadgeChangeListeners:Lcom/sonymobile/home/util/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/ObserverList",
            "<",
            "Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {v0}, Lcom/sonymobile/home/util/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mOnBadgeChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-object p1, p0, Lcom/sonymobile/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/sonymobile/home/badge/BadgeManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 83
    const v0, 0x7f080109

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x3e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMaxText:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/badge/BadgeManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/home/badge/BadgeManager;->removeFromStorage(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized addOrRemove(Lcom/sonymobile/home/data/ActivityItem;I)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;
    .param p2, "badgeCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/badge/BadgeManager;->readFromStorage()V

    .line 228
    if-lez p2, :cond_2

    .line 229
    invoke-direct {p0, p1}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeMapValue(Lcom/sonymobile/home/data/Item;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne p2, v1, :cond_0

    .line 239
    :goto_0
    monitor-exit p0

    return v0

    .line 232
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/sonymobile/home/badge/BadgeManager;->writeToStorage(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getBadgeMapValue(Lcom/sonymobile/home/data/Item;)I
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 140
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getMaximumBadgeCount()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x3e7

    return v0
.end method

.method private notifyBadgeChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 365
    new-instance v0, Lcom/sonymobile/home/badge/BadgeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/badge/BadgeManager$2;-><init>(Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/data/Item;)V

    .line 373
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/badge/BadgeManager;->mOnBadgeChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 375
    iget-object v1, p0, Lcom/sonymobile/home/badge/BadgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 376
    return-void
.end method

.method private declared-synchronized removeFromStorage(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    monitor-enter p0

    :try_start_0
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

    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 349
    .local v1, "itemToRemove":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v2, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/sonymobile/home/badge/BadgeManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sonymobile/home/storage/Storage;->deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemToRemove":Lcom/sonymobile/home/data/ActivityItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 354
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private writeToStorage(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "badgeCount"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 254
    if-lez p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/sonymobile/home/storage/Storage;->insertBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v0, p2, p3, p4}, Lcom/sonymobile/home/storage/Storage;->deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnBadgeChangeListener(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mOnBadgeChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/util/ObserverList;->registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 105
    return-void
.end method

.method public getBadgeCount(Lcom/sonymobile/home/data/Item;)I
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/home/badge/BadgeManager;->readFromStorage()V

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeMapValue(Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method

.method public getBadgeString(I)Ljava/lang/String;
    .locals 4
    .param p1, "badgeCount"    # I

    .prologue
    .line 166
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMaxText:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    if-lez p1, :cond_1

    .line 169
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeString(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeCount(Lcom/sonymobile/home/data/Item;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumBadgeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMaxText:Ljava/lang/String;

    return-object v0
.end method

.method public handleNewBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZI)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "showMessage"    # Z
    .param p5, "badgeCount"    # I

    .prologue
    .line 188
    new-instance v0, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 190
    .local v0, "item":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz p4, :cond_1

    .end local p5    # "badgeCount":I
    :goto_0
    invoke-direct {p0, v0, p5}, Lcom/sonymobile/home/badge/BadgeManager;->addOrRemove(Lcom/sonymobile/home/data/ActivityItem;I)Z

    move-result v1

    .line 191
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 192
    invoke-direct {p0, v0}, Lcom/sonymobile/home/badge/BadgeManager;->notifyBadgeChanged(Lcom/sonymobile/home/data/Item;)V

    .line 195
    :cond_0
    return v1

    .line 190
    .end local v1    # "success":Z
    .restart local p5    # "badgeCount":I
    :cond_1
    const/4 p5, -0x1

    goto :goto_0
.end method

.method public declared-synchronized readFromStorage()V
    .locals 8

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/home/badge/BadgeManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 268
    iget-object v5, p0, Lcom/sonymobile/home/badge/BadgeManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v5}, Lcom/sonymobile/home/storage/Storage;->getBadges()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 269
    .local v3, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 278
    .local v0, "badgeCount":I
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 266
    .end local v0    # "badgeCount":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    .end local v3    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 273
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    .restart local v3    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .restart local v0    # "badgeCount":I
    goto :goto_1

    .line 285
    .end local v0    # "badgeCount":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/sonymobile/home/badge/BadgeManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .end local v3    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public removeOnBadgeChangeListener(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager;->mOnBadgeChangeListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/ObserverList;->unregisterObserver(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public sync(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 1
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/badge/BadgeManager;->sync(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V

    .line 296
    return-void
.end method

.method public sync(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V
    .locals 11
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/PackageHandler;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "outItemsRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v9, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 306
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 307
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    instance-of v9, v4, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v9, :cond_0

    move-object v0, v4

    .line 308
    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 309
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    .local v1, "count":I
    if-gtz v1, :cond_1

    .line 311
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p1, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivityInstalled(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 315
    .local v8, "user":Landroid/os/UserHandle;
    if-eqz v8, :cond_2

    invoke-virtual {p1, v5, v8}, Lcom/sonymobile/home/model/PackageHandler;->isPackageUnavailable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 316
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v1    # "count":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/Integer;>;"
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "user":Landroid/os/UserHandle;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 323
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/ActivityItem;

    .line 324
    .local v4, "item":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v9, p0, Lcom/sonymobile/home/badge/BadgeManager;->mBadgeMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 327
    .end local v4    # "item":Lcom/sonymobile/home/data/ActivityItem;
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .local v7, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    new-instance v6, Lcom/sonymobile/home/badge/BadgeManager$1;

    invoke-direct {v6, p0, v7}, Lcom/sonymobile/home/badge/BadgeManager$1;-><init>(Lcom/sonymobile/home/badge/BadgeManager;Ljava/util/List;)V

    .line 336
    .local v6, "removeBadgeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v6, v9, v10}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    .end local v6    # "removeBadgeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    .end local v7    # "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    :cond_5
    return-void
.end method
