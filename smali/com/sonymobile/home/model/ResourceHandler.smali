.class public Lcom/sonymobile/home/model/ResourceHandler;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;
.implements Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;,
        Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;,
        Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;,
        Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;,
        Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirtyLoaderId:I

.field private final mDirtyLock:Ljava/lang/Object;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mPendingItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPreloader:Lcom/sonymobile/home/model/ResourcePreloader;

.field private final mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

.field private final mResourceLoadedCallbacks:Lcom/sonymobile/home/util/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/ObserverList",
            "<",
            "Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/sonymobile/home/model/ResourceHandler;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/model/ResourceHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceLoaderFactory;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "loaderFactory"    # Lcom/sonymobile/home/model/ResourceLoaderFactory;

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {v0}, Lcom/sonymobile/home/util/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceLoadedCallbacks:Lcom/sonymobile/home/util/ObserverList;

    .line 100
    new-instance v0, Lcom/sonymobile/home/model/ResourceCacheImpl;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/sonymobile/home/model/ResourceCacheImpl;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    .line 103
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLoaderId:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    .line 125
    new-instance v0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/ResourceHandler$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPreloader:Lcom/sonymobile/home/model/ResourcePreloader;

    .line 161
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    .line 164
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/32 v4, 0x1d4c0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/sonymobile/home/util/NamingThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/sonymobile/home/util/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 169
    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;Landroid/os/Handler;)V

    .line 171
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/model/PackageHandler;->addOnPrepareForPackageChangeListener(Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;)V

    .line 172
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->getDefaultResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/model/ResourceHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/model/ResourceHandler;)Lcom/sonymobile/home/model/ResourceCacheImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/model/ResourceHandler;)Lcom/sonymobile/home/model/ResourceLoaderFactory;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->doLoad(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sonymobile/home/model/ResourceHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized addPendingItems(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Ljava/util/List;
    .locals 5
    .param p2, "loadRequest"    # Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "candidateItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v2, "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 662
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->containsResource(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 660
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 667
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 669
    invoke-direct {p0}, Lcom/sonymobile/home/model/ResourceHandler;->getPendingItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 671
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 672
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v2

    .line 673
    :cond_3
    :try_start_2
    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-static {p2}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$500(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$600(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 678
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 682
    :cond_4
    invoke-direct {p0, p2}, Lcom/sonymobile/home/model/ResourceHandler;->notifyResourceBatchLoaded(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized clearPendingItems()V
    .locals 4

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 733
    .local v2, "loadRequests":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 734
    .local v1, "loadRequest":Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$600(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 735
    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$600(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 732
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "loadRequest":Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .end local v2    # "loadRequests":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 738
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "loadRequests":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    monitor-exit p0

    return-void
.end method

.method private doLoad(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 780
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 781
    .local v0, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    const/4 v3, 0x0

    .line 783
    .local v3, "resource":Lcom/sonymobile/home/model/ResourceItem;
    if-eqz v0, :cond_1

    .line 784
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPreloader:Lcom/sonymobile/home/model/ResourcePreloader;

    invoke-interface {v0, v4, p1, v5}, Lcom/sonymobile/home/model/ResourceLoader;->getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v3

    .line 786
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    .line 791
    .local v2, "pendingItemRemoved":Z
    iget-object v5, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 792
    :try_start_0
    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceLoader;->getLoaderId()I

    move-result v1

    .line 793
    .local v1, "loaderId":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLoaderId:I

    if-eq v4, v1, :cond_0

    .line 794
    invoke-direct {p0, p1, v3, v1}, Lcom/sonymobile/home/model/ResourceHandler;->updateResourceCache(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;I)Z

    .line 795
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/model/ResourceHandler;->notifyResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 797
    :cond_0
    monitor-exit v5

    .line 801
    .end local v1    # "loaderId":I
    .end local v2    # "pendingItemRemoved":Z
    :goto_0
    return-object v3

    .line 797
    .restart local v2    # "pendingItemRemoved":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 799
    .end local v2    # "pendingItemRemoved":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0
.end method

.method private getDefaultResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 571
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 573
    .local v0, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/home/model/ResourceLoader;->getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 576
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getPendingItems()Ljava/util/List;
    .locals 5
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
    .line 747
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v3, "pendingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 749
    .local v2, "pendingItemLists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 750
    .local v1, "pendingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 747
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pendingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v2    # "pendingItemLists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v3    # "pendingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 752
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pendingItemLists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .restart local v3    # "pendingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    monitor-exit p0

    return-object v3
.end method

.method private declared-synchronized hasItemPendingResourceLoad(Lcom/sonymobile/home/data/Item;)Z
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 762
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 763
    .local v3, "pendingItemLists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v1, 0x0

    .line 764
    .local v1, "isPending":Z
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 765
    .local v2, "pendingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 766
    const/4 v1, 0x1

    .line 770
    .end local v2    # "pendingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    monitor-exit p0

    return v1

    .line 762
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isPending":Z
    .end local v3    # "pendingItemLists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private notifyResourceBatchLoaded(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)V
    .locals 1
    .param p1, "loadRequest"    # Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .prologue
    .line 845
    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-static {p1}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$500(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$600(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    # getter for: Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->access$600(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    :cond_0
    return-void
.end method

.method private notifyResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resource"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 812
    new-instance v0, Lcom/sonymobile/home/model/ResourceHandler$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/model/ResourceHandler$4;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 820
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceLoadedCallbacks:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 821
    return-void
.end method

.method private releaseResource(Lcom/sonymobile/home/data/Item;Z)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "forceRelease"    # Z

    .prologue
    .line 552
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    move-result-object v1

    .line 554
    .local v1, "resourceCache":Lcom/sonymobile/home/model/ResourceCacheItem;
    if-eqz v1, :cond_0

    .line 555
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/ResourceCacheItem;->getLoaderId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(I)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 557
    .local v0, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPreloader:Lcom/sonymobile/home/model/ResourcePreloader;

    invoke-interface {v0, p2, p1, v2, v3}, Lcom/sonymobile/home/model/ResourceLoader;->releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->removeResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    .line 561
    .end local v0    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    :cond_0
    return-void
.end method

.method private declared-synchronized removePendingItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 8
    .param p1, "itemToRemove"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 708
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v4, "loadRequestsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;>;"
    iget-object v7, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 710
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;>;"
    const/4 v6, 0x0

    .line 712
    .local v6, "success":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 713
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 714
    .local v5, "pendingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 715
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 716
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 708
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "loadRequestsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;>;"
    .end local v5    # "pendingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v6    # "success":Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 720
    .restart local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "loadRequestsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;>;"
    .restart local v6    # "success":Z
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 721
    .local v3, "loadRequest":Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    invoke-direct {p0, v3}, Lcom/sonymobile/home/model/ResourceHandler;->notifyResourceBatchLoaded(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)V

    .line 722
    iget-object v7, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPendingItems:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 725
    .end local v3    # "loadRequest":Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    :cond_2
    monitor-exit p0

    return v6
.end method

.method private declared-synchronized removePendingItems(Ljava/util/List;)V
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
    .line 695
    .local p1, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 696
    .local v1, "itemToRemove":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 695
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemToRemove":Lcom/sonymobile/home/data/Item;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 698
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private startLoading(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 586
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v0

    return-object v0
.end method

.method private startLoading(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 8
    .param p2, "callback"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    new-instance v3, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    invoke-direct {v3, p2, p3}, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;-><init>(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)V

    .line 602
    .local v3, "loadRequest":Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/model/ResourceHandler;->addPendingItems(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Ljava/util/List;

    move-result-object v6

    .line 603
    .local v6, "validItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v0, v7, 0x1

    .line 604
    .local v0, "batchSize":I
    const/4 v4, 0x0

    .line 606
    .local v4, "offset":I
    if-lez v0, :cond_0

    .line 607
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    const/4 v7, 0x1

    if-ge v1, v7, :cond_0

    .line 608
    add-int v7, v4, v0

    invoke-interface {v6, v4, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 609
    .local v2, "itemBatch":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    add-int/2addr v4, v0

    .line 610
    new-instance v7, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;

    invoke-direct {v7, p0, v2}, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/util/List;)V

    invoke-direct {p0, v7}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    .end local v1    # "index":I
    .end local v2    # "itemBatch":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 614
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v4, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 615
    .local v5, "remainingItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v7, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;

    invoke-direct {v7, p0, v5}, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/util/List;)V

    invoke-direct {p0, v7}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;)V

    .line 617
    .end local v5    # "remainingItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return-object v3
.end method

.method private startLoading(Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;)V
    .locals 2
    .param p1, "resourceItemsLoader"    # Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->mItems:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->access$400(Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method private stopLoadingIfNeeded(Ljava/util/List;)V
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
    .line 641
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItems(Ljava/util/List;)V

    .line 642
    return-void
.end method

.method private updateResourceCache(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;I)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resource"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "loaderId"    # I

    .prologue
    .line 835
    new-instance v0, Lcom/sonymobile/home/model/ResourceCacheItem;

    invoke-direct {v0, p2, p3}, Lcom/sonymobile/home/model/ResourceCacheItem;-><init>(Lcom/sonymobile/home/model/ResourceItem;I)V

    .line 836
    .local v0, "cacheItem":Lcom/sonymobile/home/model/ResourceCacheItem;
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v1, p1, v0}, Lcom/sonymobile/home/model/ResourceCacheImpl;->addResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceLoadedCallbacks:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/util/ObserverList;->registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 387
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceCacheImpl;->clear()V

    .line 179
    return-void
.end method

.method public declared-synchronized clearIconCache()V
    .locals 3

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ResourceCacheImpl;->itemIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 188
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    instance-of v2, v0, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/sonymobile/home/data/FolderItem;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v2, :cond_0

    .line 189
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v1    # "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 193
    .restart local v1    # "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public deleteResource(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 525
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    move-result-object v1

    .line 527
    .local v1, "resourceCache":Lcom/sonymobile/home/model/ResourceCacheItem;
    if-eqz v1, :cond_1

    .line 528
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/ResourceCacheItem;->getLoaderId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(I)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 530
    .local v0, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPreloader:Lcom/sonymobile/home/model/ResourcePreloader;

    invoke-interface {v0, p1, v2, v3}, Lcom/sonymobile/home/model/ResourceLoader;->deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->removeResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 537
    .end local v0    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 538
    .restart local v0    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    .line 539
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPreloader:Lcom/sonymobile/home/model/ResourcePreloader;

    invoke-interface {v0, p1, v2, v3}, Lcom/sonymobile/home/model/ResourceLoader;->deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z

    goto :goto_0
.end method

.method public fetchResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 250
    const/4 v2, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v2

    .line 253
    :cond_1
    const/4 v2, 0x0

    .line 254
    .local v2, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v4, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    move-result-object v0

    .line 255
    .local v0, "cacheItem":Lcom/sonymobile/home/model/ResourceCacheItem;
    const/4 v1, 0x1

    .line 257
    .local v1, "haveToLoad":Z
    if-eqz v0, :cond_3

    .line 258
    monitor-enter v0

    .line 259
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sonymobile/home/model/ResourceItem;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 262
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_3
    if-eqz v1, :cond_0

    .line 267
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->doLoad(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 261
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 262
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 268
    :catch_0
    move-exception v3

    .line 269
    .local v3, "throwable":Ljava/lang/Throwable;
    sget-object v4, Lcom/sonymobile/home/model/ResourceHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t fetch item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 218
    const/4 v1, 0x0

    .line 236
    :cond_0
    :goto_0
    return-object v1

    .line 221
    :cond_1
    const/4 v1, 0x0

    .line 222
    .local v1, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    move-result-object v0

    .line 224
    .local v0, "cacheItem":Lcom/sonymobile/home/model/ResourceCacheItem;
    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 227
    :cond_2
    if-nez v1, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->getDefaultResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 231
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->hasItemPendingResourceLoad(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    goto :goto_0
.end method

.method public getResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/ResourceHandler;->getResources(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v0, "resources":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    new-instance v2, Lcom/sonymobile/home/model/ResourceHandler$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sonymobile/home/model/ResourceHandler$1;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/model/ResourceCacheImpl;->iterate(Lcom/sonymobile/home/model/ResourceCache$IteratorAction;)V

    .line 307
    return-object v0
.end method

.method public hasResource(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->containsResource(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method public loadIconPack(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sonymobile/home/model/ResourceHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/model/ResourceHandler$6;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method

.method public loadResources(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v1

    return-object v1
.end method

.method public loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v0

    return-object v0
.end method

.method public loadResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 1
    .param p2, "callback"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/model/PackageHandler;->removeOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/model/PackageHandler;->removeOnPrepareForPackageChangeListener(Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;)V

    .line 201
    invoke-direct {p0}, Lcom/sonymobile/home/model/ResourceHandler;->clearPendingItems()V

    .line 202
    invoke-virtual {p0}, Lcom/sonymobile/home/model/ResourceHandler;->clearCache()V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceLoadedCallbacks:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0}, Lcom/sonymobile/home/util/ObserverList;->unregisterAll()V

    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 952
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 957
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 962
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 947
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "unavailablePackages"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    new-instance v1, Lcom/sonymobile/home/model/ResourceHandler$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonymobile/home/model/ResourceHandler$5;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Landroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->iterate(Lcom/sonymobile/home/model/ResourceCache$IteratorAction;)V

    .line 942
    return-void
.end method

.method public onPrepareForPackageChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 923
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResources(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public releaseAllResourcesForLoader(I)V
    .locals 5
    .param p1, "loaderId"    # I

    .prologue
    .line 351
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 352
    :try_start_0
    iput p1, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLoaderId:I

    .line 353
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    new-instance v4, Lcom/sonymobile/home/model/ResourceHandler$3;

    invoke-direct {v4, p0, p1, v2}, Lcom/sonymobile/home/model/ResourceHandler$3;-><init>(Lcom/sonymobile/home/model/ResourceHandler;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/model/ResourceCacheImpl;->iterate(Lcom/sonymobile/home/model/ResourceCache$IteratorAction;)V

    .line 365
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    invoke-direct {p0, v2}, Lcom/sonymobile/home/model/ResourceHandler;->stopLoadingIfNeeded(Ljava/util/List;)V

    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 368
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResource(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 353
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 372
    .restart local v2    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 374
    const/high16 v3, -0x80000000

    :try_start_2
    iput v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLoaderId:I

    .line 375
    monitor-exit v4

    .line 376
    return-void

    .line 375
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public releaseResource(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResource(Lcom/sonymobile/home/data/Item;Z)V

    .line 341
    return-void
.end method

.method public releaseResources(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v2, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    new-instance v4, Lcom/sonymobile/home/model/ResourceHandler$2;

    invoke-direct {v4, p0, p1, v2}, Lcom/sonymobile/home/model/ResourceHandler$2;-><init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/model/ResourceCacheImpl;->iterate(Lcom/sonymobile/home/model/ResourceCache$IteratorAction;)V

    .line 326
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    invoke-direct {p0, v2}, Lcom/sonymobile/home/model/ResourceHandler;->stopLoadingIfNeeded(Ljava/util/List;)V

    .line 328
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 329
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResource(Lcom/sonymobile/home/data/Item;Z)V

    goto :goto_0

    .line 332
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-void
.end method

.method public removeOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceLoadedCallbacks:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/ObserverList;->unregisterObserver(Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public updateDynamicResource(Lcom/sonymobile/home/data/Item;)V
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 498
    iget-object v6, p0, Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v1

    .line 499
    .local v1, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    iget-object v6, p0, Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;

    invoke-virtual {v6, p1}, Lcom/sonymobile/home/model/ResourceCacheImpl;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    move-result-object v0

    .line 500
    .local v0, "cacheItem":Lcom/sonymobile/home/model/ResourceCacheItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v5

    .line 502
    .local v5, "resource":Lcom/sonymobile/home/model/ResourceItem;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    .line 503
    iget-object v6, p0, Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;

    invoke-interface {v1, v6, p1, v5}, Lcom/sonymobile/home/model/ResourceLoader;->updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v3

    .line 505
    .local v3, "newResource":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v7, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 506
    :try_start_0
    invoke-interface {v1}, Lcom/sonymobile/home/model/ResourceLoader;->getLoaderId()I

    move-result v2

    .line 507
    .local v2, "loaderId":I
    if-eqz v3, :cond_0

    iget v6, p0, Lcom/sonymobile/home/model/ResourceHandler;->mDirtyLoaderId:I

    if-eq v6, v2, :cond_0

    .line 508
    invoke-direct {p0, p1, v3, v2}, Lcom/sonymobile/home/model/ResourceHandler;->updateResourceCache(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;I)Z

    move-result v4

    .line 510
    .local v4, "notify":Z
    if-eqz v4, :cond_0

    .line 511
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/model/ResourceHandler;->notifyResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 514
    .end local v4    # "notify":Z
    :cond_0
    monitor-exit v7

    .line 516
    .end local v2    # "loaderId":I
    .end local v3    # "newResource":Lcom/sonymobile/home/model/ResourceItem;
    :cond_1
    return-void

    .line 500
    .end local v5    # "resource":Lcom/sonymobile/home/model/ResourceItem;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 514
    .restart local v3    # "newResource":Lcom/sonymobile/home/model/ResourceItem;
    .restart local v5    # "resource":Lcom/sonymobile/home/model/ResourceItem;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public updateResources(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 487
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResource(Lcom/sonymobile/home/data/Item;Z)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v0

    return-object v0
.end method

.method public updateResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 3
    .param p2, "callback"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 475
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->releaseResource(Lcom/sonymobile/home/data/Item;Z)V

    goto :goto_0

    .line 477
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/model/ResourceHandler;->startLoading(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v2

    return-object v2
.end method
