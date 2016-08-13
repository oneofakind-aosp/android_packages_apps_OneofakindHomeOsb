.class public Lcom/sonymobile/flix/util/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;,
        Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;,
        Lcom/sonymobile/flix/util/Scheduler$Task;
    }
.end annotation


# instance fields
.field protected mBlocked:Z

.field protected mCleanUpdate:Z

.field protected final mDelayedTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$Task;",
            "Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected final mNamedTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$Task;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPauseTime:J

.field protected final mRegularTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$Task;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTaskLock:Ljava/lang/Object;

.field protected final mTaskRunnablePool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTaskToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$Task;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mTotalPauseDuration:J

.field protected final mUpdatingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mUpdatingTasks:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mDelayedTasks:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskRunnablePool:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskToName:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mNamedTasks:Ljava/util/Map;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mPauseTime:J

    .line 54
    return-void
.end method

.method private assertTaskNotNull(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 2
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Task must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    return-void
.end method

.method private wasTaskRemoved(Lcom/sonymobile/flix/util/Scheduler$Task;I)Z
    .locals 7
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    iget-object v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v5

    .line 397
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 400
    .local v0, "lastIndex":I
    if-gez v0, :cond_0

    .line 401
    monitor-exit v5

    .line 413
    :goto_0
    return v3

    .line 406
    :cond_0
    if-gt p2, v0, :cond_1

    move v1, p2

    .line 407
    .local v1, "testIndex":I
    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    .line 408
    .local v2, "testIndex2":I
    :goto_2
    iget-object v6, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_3

    iget-object v6, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_3

    iget-object v6, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 410
    monitor-exit v5

    goto :goto_0

    .line 412
    .end local v0    # "lastIndex":I
    .end local v1    # "testIndex":I
    .end local v2    # "testIndex2":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "lastIndex":I
    :cond_1
    move v1, v0

    .line 406
    goto :goto_1

    .restart local v1    # "testIndex":I
    :cond_2
    move v2, v4

    .line 407
    goto :goto_2

    .line 412
    .restart local v2    # "testIndex2":I
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 413
    goto :goto_0
.end method


# virtual methods
.method public addDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;JJ)Z
    .locals 10
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "firstDelay"    # J
    .param p4, "delay"    # J

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->assertTaskNotNull(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 141
    const/4 v8, 0x0

    .line 142
    .local v8, "accepted":Z
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mBlocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mDelayedTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    .line 144
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v8, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler;->obtainTaskRunnable()Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v2

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->start(Lcom/sonymobile/flix/util/Scheduler$Task;JJJ)Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;

    .line 147
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->onDelayedTaskAdded(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 148
    instance-of v0, p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    .end local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    invoke-interface {p1, p0}, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;->onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V

    .line 152
    :cond_0
    return v8

    .line 143
    .restart local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected addNamedTask(Ljava/lang/Object;Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 498
    invoke-direct {p0, p2}, Lcom/sonymobile/flix/util/Scheduler;->assertTaskNotNull(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 499
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mNamedTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 501
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskToName:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    monitor-exit v2

    .line 510
    return-void

    .line 504
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .restart local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mNamedTasks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 509
    .end local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->assertTaskNotNull(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "accepted":Z
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mBlocked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v0, 0x1

    .line 74
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->onTaskAdded(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 77
    instance-of v1, p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    if-eqz v1, :cond_1

    .line 78
    check-cast p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    .end local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    invoke-interface {p1, p0}, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;->onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V

    .line 81
    :cond_1
    return v0

    .line 74
    .restart local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addTask(Ljava/lang/Object;Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/Scheduler;->addNamedTask(Ljava/lang/Object;Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 88
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/util/Scheduler;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    return v0
.end method

.method public getRealTime()J
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mPauseTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler;->getRealTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTotalPauseDuration:J

    sub-long/2addr v0, v2

    .line 427
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mPauseTime:J

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTotalPauseDuration:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public hasRegularTasks()Z
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mDelayedTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    monitor-exit v1

    .line 250
    :goto_0
    return v0

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    monitor-exit v1

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final obtainTaskRunnable()Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskRunnablePool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;-><init>(Lcom/sonymobile/flix/util/Scheduler;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskRunnablePool:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskRunnablePool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;

    goto :goto_0
.end method

.method protected onDelayedTaskAdded(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 0
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 594
    return-void
.end method

.method protected onDelayedTaskRemoved(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 0
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 600
    return-void
.end method

.method protected onTaskAdded(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 0
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 591
    return-void
.end method

.method protected onTaskRemoved(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 0
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 597
    return-void
.end method

.method protected final recycleTaskRunnable(Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;)V
    .locals 1
    .param p1, "taskRunnable"    # Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskRunnablePool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method protected removeDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z
    .locals 4
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "removeTaskFromNamed"    # Z

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "taskRunnable":Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;
    iget-object v3, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v3

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mDelayedTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;

    move-object v1, v0

    .line 187
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->remove()V

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->removeTaskFromNamed(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->onDelayedTaskRemoved(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 194
    instance-of v2, p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    if-eqz v2, :cond_1

    .line 195
    check-cast p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    .end local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    invoke-interface {p1, p0}, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;->onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V

    .line 197
    :cond_1
    const/4 v2, 0x1

    .line 199
    :goto_0
    return v2

    .line 187
    .restart local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 199
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected removeRegularTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z
    .locals 3
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "removeTaskFromNamed"    # Z

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "remove":Z
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->removeTaskFromNamed(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Scheduler;->onTaskRemoved(Lcom/sonymobile/flix/util/Scheduler$Task;)V

    .line 212
    instance-of v1, p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    if-eqz v1, :cond_1

    .line 213
    check-cast p1, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;

    .end local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    invoke-interface {p1, p0}, Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;->onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V

    .line 215
    :cond_1
    const/4 v1, 0x1

    .line 217
    :goto_0
    return v1

    .line 206
    .restart local p1    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 217
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/util/Scheduler;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z

    move-result v0

    return v0
.end method

.method protected removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z
    .locals 3
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "removeTaskFromNamed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/Scheduler;->removeDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/Scheduler;->removeRegularTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iput-boolean v1, p0, Lcom/sonymobile/flix/util/Scheduler;->mCleanUpdate:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method protected removeTaskFromNamed(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 4
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 543
    iget-object v3, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v3

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskToName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskToName:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "name":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 547
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mNamedTasks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 548
    .local v1, "tasksWithName":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 551
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler;->mNamedTasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .end local v0    # "name":Ljava/lang/Object;
    .end local v1    # "tasksWithName":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    :cond_0
    monitor-exit v3

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/util/Scheduler;->update(J)V

    .line 363
    return-void
.end method

.method public update(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v7, 0x1

    .line 371
    iput-wide p1, p0, Lcom/sonymobile/flix/util/Scheduler;->mLastUpdateTime:J

    .line 372
    iget-object v4, p0, Lcom/sonymobile/flix/util/Scheduler;->mUpdatingTasks:Ljava/util/List;

    .line 373
    .local v4, "updatingTasks":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/util/Scheduler$Task;>;"
    iget-object v6, p0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v6

    .line 375
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 376
    .local v1, "nbrRegularTasks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 377
    iget-object v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mRegularTasks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iput-boolean v7, p0, Lcom/sonymobile/flix/util/Scheduler;->mCleanUpdate:Z

    .line 381
    iget-object v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mUpdatingTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 382
    .local v2, "nbrUpdatingTasks":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 383
    iget-object v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mUpdatingTasks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/flix/util/Scheduler$Task;

    .line 384
    .local v3, "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    iget-boolean v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mCleanUpdate:Z

    if-nez v5, :cond_2

    invoke-direct {p0, v3, v0}, Lcom/sonymobile/flix/util/Scheduler;->wasTaskRemoved(Lcom/sonymobile/flix/util/Scheduler$Task;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "i":I
    .end local v1    # "nbrRegularTasks":I
    .end local v2    # "nbrUpdatingTasks":I
    .end local v3    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 387
    .restart local v0    # "i":I
    .restart local v1    # "nbrRegularTasks":I
    .restart local v2    # "nbrUpdatingTasks":I
    .restart local v3    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :cond_2
    invoke-interface {v3, p1, p2}, Lcom/sonymobile/flix/util/Scheduler$Task;->onUpdate(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 388
    invoke-virtual {p0, v3, v7}, Lcom/sonymobile/flix/util/Scheduler;->removeRegularTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z

    goto :goto_2

    .line 391
    .end local v3    # "task":Lcom/sonymobile/flix/util/Scheduler$Task;
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mUpdatingTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 392
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sonymobile/flix/util/Scheduler;->mCleanUpdate:Z

    .line 393
    return-void
.end method

.method public updateTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/flix/util/Scheduler;->updateTask(Lcom/sonymobile/flix/util/Scheduler$Task;J)Z

    move-result v0

    return v0
.end method

.method public updateTask(Lcom/sonymobile/flix/util/Scheduler$Task;J)Z
    .locals 4
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "now"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 349
    invoke-interface {p1, p2, p3}, Lcom/sonymobile/flix/util/Scheduler$Task;->onUpdate(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/flix/util/Scheduler;->removeRegularTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z

    .line 351
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler;->mCleanUpdate:Z

    .line 354
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
