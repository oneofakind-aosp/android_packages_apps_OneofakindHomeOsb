.class public Lcom/sonymobile/home/cui/CuiGridViewObservable;
.super Landroid/database/Observable;
.source "CuiGridViewObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/sonymobile/home/cui/CuiGridViewObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 3

    .prologue
    .line 21
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridViewObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridViewObserver;

    invoke-interface {v1}, Lcom/sonymobile/home/cui/CuiGridViewObserver;->onChanged()V

    .line 22
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v2

    .line 26
    return-void

    .line 25
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public viewChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 34
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridViewObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridViewObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridViewObserver;

    invoke-interface {v1, p1}, Lcom/sonymobile/home/cui/CuiGridViewObserver;->onViewChanged(I)V

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
