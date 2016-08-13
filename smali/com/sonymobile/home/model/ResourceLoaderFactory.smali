.class public final Lcom/sonymobile/home/model/ResourceLoaderFactory;
.super Ljava/lang/Object;
.source "ResourceLoaderFactory.java"


# static fields
.field private static sFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;


# instance fields
.field private final mLoaders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/ResourceLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->sFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method public static declared-synchronized getFactory()Lcom/sonymobile/home/model/ResourceLoaderFactory;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/sonymobile/home/model/ResourceLoaderFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->sFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/sonymobile/home/model/ResourceLoaderFactory;

    invoke-direct {v0}, Lcom/sonymobile/home/model/ResourceLoaderFactory;-><init>()V

    sput-object v0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->sFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;

    .line 37
    :cond_0
    sget-object v0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->sFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getResourceLoader(I)Lcom/sonymobile/home/model/ResourceLoader;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 94
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ResourceLoader;

    .line 95
    .local v1, "resourceLoader":Lcom/sonymobile/home/model/ResourceLoader;
    invoke-interface {v1}, Lcom/sonymobile/home/model/ResourceLoader;->getLoaderId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 99
    .end local v1    # "resourceLoader":Lcom/sonymobile/home/model/ResourceLoader;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Lcom/sonymobile/home/model/ResourceLoader;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceLoader;

    return-object v0
.end method

.method public registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V
    .locals 2
    .param p2, "loader"    # Lcom/sonymobile/home/model/ResourceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/ResourceLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceLoader;

    .line 48
    .local v0, "oldLoader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceLoader;->onDestroy()V

    .line 51
    :cond_0
    return-void
.end method

.method public unregisterAllLoaders()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ResourceLoader;

    .line 70
    .local v1, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    invoke-interface {v1}, Lcom/sonymobile/home/model/ResourceLoader;->onDestroy()V

    goto :goto_0

    .line 72
    .end local v1    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 73
    return-void
.end method

.method public unregisterLoader(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceLoaderFactory;->mLoaders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceLoader;

    .line 60
    .local v0, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceLoader;->onDestroy()V

    .line 63
    :cond_0
    return-void
.end method
