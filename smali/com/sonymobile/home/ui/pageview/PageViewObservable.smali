.class public Lcom/sonymobile/home/ui/pageview/PageViewObservable;
.super Landroid/database/Observable;
.source "PageViewObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/sonymobile/home/ui/pageview/PageViewObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyContentChanged()V
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageViewObserver;

    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewObserver;->onContentChanged()V

    .line 35
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v2

    .line 39
    return-void

    .line 38
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyPageItemChanged(J)V
    .locals 3
    .param p1, "uniqueId"    # J

    .prologue
    .line 47
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageViewObserver;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewObserver;->onPageItemChanged(J)V

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 51
    :cond_0
    monitor-exit v2

    .line 52
    return-void

    .line 51
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyPageItemOrderChanged()V
    .locals 3

    .prologue
    .line 55
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageViewObserver;

    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewObserver;->onPageItemOrderChanged()V

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 59
    :cond_0
    monitor-exit v2

    .line 60
    return-void

    .line 59
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
