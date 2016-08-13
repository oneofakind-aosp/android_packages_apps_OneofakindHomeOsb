.class public Lcom/sonymobile/home/model/ResourceCacheImpl;
.super Ljava/lang/Object;
.source "ResourceCacheImpl.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceCache;


# instance fields
.field private final mResources:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceCacheItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    return-void
.end method


# virtual methods
.method public addResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "cacheItem"    # Lcom/sonymobile/home/model/ResourceCacheItem;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 63
    return-void
.end method

.method public containsResource(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceCacheItem;

    return-object v0
.end method

.method public itemIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterate(Lcom/sonymobile/home/model/ResourceCache$IteratorAction;)V
    .locals 5
    .param p1, "action"    # Lcom/sonymobile/home/model/ResourceCache$IteratorAction;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 90
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/model/ResourceCacheItem;

    invoke-interface {p1, v3, v4}, Lcom/sonymobile/home/model/ResourceCache$IteratorAction;->executeAction(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)V

    goto :goto_0

    .line 93
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;>;"
    :cond_0
    return-void
.end method

.method public removeResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheImpl;->mResources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceCacheItem;

    return-object v0
.end method
