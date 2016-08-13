.class Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourcePreloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/ResourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceHandlerPreloader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/ResourceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p2, "x1"    # Lcom/sonymobile/home/model/ResourceHandler$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;-><init>(Lcom/sonymobile/home/model/ResourceHandler;)V

    return-void
.end method


# virtual methods
.method public getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/model/ResourceHandler;->fetchResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    .line 133
    .local v0, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-nez v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # invokes: Lcom/sonymobile/home/model/ResourceHandler;->getDefaultResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    invoke-static {v1, p1}, Lcom/sonymobile/home/model/ResourceHandler;->access$100(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "forceRemove"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 141
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # getter for: Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;
    invoke-static {v3}, Lcom/sonymobile/home/model/ResourceHandler;->access$200(Lcom/sonymobile/home/model/ResourceHandler;)Lcom/sonymobile/home/model/ResourceCacheImpl;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/home/model/ResourceCacheImpl;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    move-result-object v0

    .line 143
    .local v0, "cacheItem":Lcom/sonymobile/home/model/ResourceCacheItem;
    if-eqz v0, :cond_1

    .line 146
    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # getter for: Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;
    invoke-static {v3}, Lcom/sonymobile/home/model/ResourceHandler;->access$300(Lcom/sonymobile/home/model/ResourceHandler;)Lcom/sonymobile/home/model/ResourceLoaderFactory;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceCacheItem;->getLoaderId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(I)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v1

    .line 149
    .local v1, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-nez p1, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v3

    invoke-interface {v1, p1, p2, v3, p0}, Lcom/sonymobile/home/model/ResourceLoader;->releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 151
    .local v2, "remove":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v2, :cond_1

    .line 153
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceHandlerPreloader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # getter for: Lcom/sonymobile/home/model/ResourceHandler;->mResourceCache:Lcom/sonymobile/home/model/ResourceCacheImpl;
    invoke-static {v3}, Lcom/sonymobile/home/model/ResourceHandler;->access$200(Lcom/sonymobile/home/model/ResourceHandler;)Lcom/sonymobile/home/model/ResourceCacheImpl;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonymobile/home/model/ResourceCacheImpl;->removeResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceCacheItem;

    .line 156
    .end local v1    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    .end local v2    # "remove":Z
    :cond_1
    return-void

    .line 149
    .restart local v1    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 151
    .end local v1    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
