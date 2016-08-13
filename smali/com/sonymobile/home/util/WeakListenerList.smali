.class public Lcom/sonymobile/home/util/WeakListenerList;
.super Ljava/lang/Object;
.source "WeakListenerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/sonymobile/home/util/WeakListenerList;, "Lcom/sonymobile/home/util/WeakListenerList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/WeakListenerList;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/sonymobile/home/util/WeakListenerList;, "Lcom/sonymobile/home/util/WeakListenerList<TE;>;"
    .local p1, "listener":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/util/WeakListenerList;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getListeners()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/sonymobile/home/util/WeakListenerList;, "Lcom/sonymobile/home/util/WeakListenerList<TE;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v4, p0, Lcom/sonymobile/home/util/WeakListenerList;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 56
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TE;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 57
    .local v2, "listener":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TE;>;"
    .end local v2    # "listener":Ljava/lang/Object;, "TE;"
    .end local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 61
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized removeListener(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/sonymobile/home/util/WeakListenerList;, "Lcom/sonymobile/home/util/WeakListenerList<TE;>;"
    .local p1, "listenerToRemove":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/util/WeakListenerList;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TE;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 41
    .local v0, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TE;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, "listener":Ljava/lang/Object;, "TE;"
    if-eq v2, p1, :cond_1

    if-nez v2, :cond_0

    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    .end local v0    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TE;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TE;>;>;"
    .end local v2    # "listener":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 46
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TE;>;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method
