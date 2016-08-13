.class public Lcom/sonymobile/home/util/ObserverList;
.super Ljava/lang/Object;
.source "ObserverList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/util/ObserverList$ObserverData;,
        Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/util/ObserverList",
            "<TType;>.com/sonymobile/home/util/Observer",
            "List$ObserverData;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList;, "Lcom/sonymobile/home/util/ObserverList<TType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 69
    return-void
.end method


# virtual methods
.method public notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
            "<TType;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList;, "Lcom/sonymobile/home/util/ObserverList<TType;>;"
    .local p1, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<TType;>;"
    iget-object v4, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 187
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;

    .line 188
    .local v1, "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    iget-object v3, v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;->observerRef:Ljava/lang/Object;

    .line 190
    .local v3, "observerItem":Ljava/lang/Object;, "TType;"
    if-eqz v3, :cond_0

    .line 191
    iget-object v2, v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;->handler:Landroid/os/Handler;

    .line 192
    .local v2, "observerHandler":Landroid/os/Handler;
    if-nez v2, :cond_1

    .line 193
    invoke-virtual {p1, v3}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;->run(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    .end local v2    # "observerHandler":Landroid/os/Handler;
    .end local v3    # "observerItem":Ljava/lang/Object;, "TType;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 195
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    .restart local v2    # "observerHandler":Landroid/os/Handler;
    .restart local v3    # "observerItem":Ljava/lang/Object;, "TType;"
    :cond_1
    :try_start_1
    new-instance v4, Lcom/sonymobile/home/util/ObserverList$1;

    invoke-direct {v4, p0, p1, v3}, Lcom/sonymobile/home/util/ObserverList$1;-><init>(Lcom/sonymobile/home/util/ObserverList;Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    .end local v1    # "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    .end local v2    # "observerHandler":Landroid/os/Handler;
    .end local v3    # "observerItem":Ljava/lang/Object;, "TType;"
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    return-void
.end method

.method public registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 5
    .param p2, "callbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList;, "Lcom/sonymobile/home/util/ObserverList<TType;>;"
    .local p1, "observer":Ljava/lang/Object;, "TType;"
    if-nez p1, :cond_0

    .line 120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The observer is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;

    .line 127
    .local v1, "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    iget-object v2, v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;->observerRef:Ljava/lang/Object;

    .line 129
    .local v2, "observerItem":Ljava/lang/Object;, "TType;"
    if-ne v2, p1, :cond_1

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The observer is already registered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    .end local v2    # "observerItem":Ljava/lang/Object;, "TType;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 135
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/util/ObserverList$ObserverData;-><init>(Lcom/sonymobile/home/util/ObserverList;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 137
    .restart local v1    # "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 171
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList;, "Lcom/sonymobile/home/util/ObserverList<TType;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public unregisterObserver(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList;, "Lcom/sonymobile/home/util/ObserverList<TType;>;"
    .local p1, "observer":Ljava/lang/Object;, "TType;"
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;

    .line 155
    .local v1, "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    iget-object v2, v1, Lcom/sonymobile/home/util/ObserverList$ObserverData;->observerRef:Ljava/lang/Object;

    .line 157
    .local v2, "observerItem":Ljava/lang/Object;, "TType;"
    if-ne v2, p1, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "observerData":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    .end local v2    # "observerItem":Ljava/lang/Object;, "TType;"
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 165
    return-void

    .line 163
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sonymobile/home/util/ObserverList;->mObserverListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method
