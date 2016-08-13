.class public final Lcom/sonymobile/flix/util/Worker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/Worker$Task;
    }
.end annotation


# static fields
.field protected static sDebugRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/Worker$Task;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/Worker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBackgroundThread:Landroid/os/HandlerThread;

.field protected final mBackgroundThreadHandler:Landroid/os/Handler;

.field protected final mBackgroundThreadRunnable:Ljava/lang/Runnable;

.field protected mClosed:Z

.field protected mClosing:Z

.field protected mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

.field protected final mMainThreadHandler:Landroid/os/Handler;

.field protected final mMainThreadRunnable:Ljava/lang/Runnable;

.field protected mPaused:Z

.field protected mSequenceIndex:I

.field protected final mTaskQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/sonymobile/flix/util/Worker$Task;",
            ">;"
        }
    .end annotation
.end field

.field protected mThreadPriority:I

.field protected mWorkerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/util/Worker;->sPool:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/util/Worker;->sDebugRunningTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/flix/util/Worker;-><init>(Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadPriority"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v1, Lcom/sonymobile/flix/util/Worker$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/util/Worker$2;-><init>(Lcom/sonymobile/flix/util/Worker;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThreadRunnable:Ljava/lang/Runnable;

    .line 604
    new-instance v1, Lcom/sonymobile/flix/util/Worker$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/util/Worker$3;-><init>(Lcom/sonymobile/flix/util/Worker;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mMainThreadRunnable:Ljava/lang/Runnable;

    .line 164
    iput p2, p0, Lcom/sonymobile/flix/util/Worker;->mThreadPriority:I

    .line 165
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mMainThreadHandler:Landroid/os/Handler;

    .line 167
    new-instance v1, Ljava/util/PriorityQueue;

    const/16 v2, 0xb

    new-instance v3, Lcom/sonymobile/flix/util/Worker$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/flix/util/Worker$1;-><init>(Lcom/sonymobile/flix/util/Worker;)V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    .line 183
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/util/Worker;->setName(Ljava/lang/String;)V

    .line 185
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mWorkerName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 186
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 188
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 189
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Thread looper is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThreadHandler:Landroid/os/Handler;

    .line 194
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Worker;->executeNextTask()V

    .line 195
    return-void
.end method


# virtual methods
.method public cancel(Lcom/sonymobile/flix/util/Worker$Task;)V
    .locals 2
    .param p1, "task"    # Lcom/sonymobile/flix/util/Worker$Task;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancel null task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonymobile/flix/util/Worker$Task;->mCanceled:Z

    .line 399
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p1, Lcom/sonymobile/flix/util/Worker$Task;->mInterruptOnCancel:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 403
    :cond_1
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAll()V
    .locals 4

    .prologue
    .line 432
    iget-object v3, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v3

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/util/Worker;->cancel(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/util/Worker$Task;

    .line 437
    .local v1, "task":Lcom/sonymobile/flix/util/Worker$Task;
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/util/Worker;->cancel(Lcom/sonymobile/flix/util/Worker$Task;)V

    goto :goto_0

    .line 439
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/sonymobile/flix/util/Worker$Task;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 234
    sget-object v1, Lcom/sonymobile/flix/util/Worker;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 235
    :try_start_0
    sget-object v0, Lcom/sonymobile/flix/util/Worker;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Worker;->mClosed:Z

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Worker;->mClosing:Z

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Worker;->quit()V

    .line 241
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 242
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected executeNextTask()V
    .locals 5

    .prologue
    .line 517
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/Worker;->mPaused:Z

    if-eqz v1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v2

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sonymobile/flix/util/Worker;->mClosed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "nextTask":Lcom/sonymobile/flix/util/Worker$Task;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nextTask":Lcom/sonymobile/flix/util/Worker$Task;
    check-cast v0, Lcom/sonymobile/flix/util/Worker$Task;

    .line 525
    .restart local v0    # "nextTask":Lcom/sonymobile/flix/util/Worker$Task;
    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 528
    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->onSetup()V

    .line 529
    iput-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    .line 533
    iget-boolean v1, v0, Lcom/sonymobile/flix/util/Worker$Task;->mOnMainThread:Z

    if-eqz v1, :cond_5

    .line 535
    iget-object v3, p0, Lcom/sonymobile/flix/util/Worker;->mMainThreadHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 546
    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/Worker;->mClosing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 547
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Worker;->quit()V

    .line 550
    .end local v0    # "nextTask":Lcom/sonymobile/flix/util/Worker$Task;
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 537
    .restart local v0    # "nextTask":Lcom/sonymobile/flix/util/Worker$Task;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 540
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Worker;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_0
    return-void

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    :goto_1
    throw v0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public post(Lcom/sonymobile/flix/util/Worker$Task;)V
    .locals 1
    .param p1, "task"    # Lcom/sonymobile/flix/util/Worker$Task;

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;IZ)V

    .line 268
    return-void
.end method

.method public post(Lcom/sonymobile/flix/util/Worker$Task;IZ)V
    .locals 2
    .param p1, "task"    # Lcom/sonymobile/flix/util/Worker$Task;
    .param p2, "queuePriority"    # I
    .param p3, "interruptOnCancel"    # Z

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot post null task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sonymobile/flix/util/Worker$Task;->mCanceled:Z

    .line 313
    iput-boolean p3, p1, Lcom/sonymobile/flix/util/Worker$Task;->mInterruptOnCancel:Z

    .line 314
    iput p2, p1, Lcom/sonymobile/flix/util/Worker$Task;->mQueuePriority:I

    .line 315
    iget v0, p0, Lcom/sonymobile/flix/util/Worker;->mSequenceIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/flix/util/Worker;->mSequenceIndex:I

    iput v0, p1, Lcom/sonymobile/flix/util/Worker$Task;->mSequence:I

    .line 316
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Worker;->executeNextTask()V

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected quit()V
    .locals 3

    .prologue
    .line 554
    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v2

    .line 555
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/Worker;->mClosed:Z

    if-nez v1, :cond_0

    .line 556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/flix/util/Worker;->mClosed:Z

    .line 557
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 558
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 562
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    monitor-exit v2

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    if-eqz p1, :cond_1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/flix/util/Worker;->mThreadPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mWorkerName:Ljava/lang/String;

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker;->mTaskQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, p1}, Landroid/os/HandlerThread;->setName(Ljava/lang/String;)V

    .line 478
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    return-void

    .line 472
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Worker ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/flix/util/Worker;->mThreadPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/flix/util/Worker;->mWorkerName:Ljava/lang/String;

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
