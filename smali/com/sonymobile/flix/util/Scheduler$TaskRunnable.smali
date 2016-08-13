.class Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field private mDelay:J

.field private mExecuting:Z

.field private mHandlerNext:J

.field private mRemoved:Z

.field private mSchedulerNext:J

.field private mTask:Lcom/sonymobile/flix/util/Scheduler$Task;

.field final synthetic this$0:Lcom/sonymobile/flix/util/Scheduler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    return-void
.end method


# virtual methods
.method protected recycle()V
    .locals 1

    .prologue
    .line 677
    monitor-enter p0

    .line 678
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mExecuting:Z

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mRemoved:Z

    .line 681
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/util/Scheduler;->recycleTaskRunnable(Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;)V

    .line 683
    return-void

    .line 681
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 730
    monitor-enter p0

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v1, v1, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mRemoved:Z

    .line 733
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mExecuting:Z

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->recycle()V

    .line 736
    :cond_0
    monitor-exit p0

    .line 737
    return-void

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 687
    monitor-enter p0

    .line 689
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mExecuting:Z

    .line 691
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mRemoved:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->recycle()V

    .line 693
    monitor-exit p0

    .line 725
    :goto_0
    return-void

    .line 695
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 697
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mSchedulerNext:J

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/flix/util/Scheduler$Task;->onUpdate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    iget-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mHandlerNext:J

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mHandlerNext:J

    .line 700
    iget-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mSchedulerNext:J

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mDelay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mSchedulerNext:J

    .line 702
    monitor-enter p0

    .line 703
    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mRemoved:Z

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->recycle()V

    .line 708
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 717
    monitor-enter p0

    .line 718
    :try_start_2
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mRemoved:Z

    if-eqz v0, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->recycle()V

    .line 720
    monitor-exit p0

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 695
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 706
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v1, v1, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mHandlerNext:J

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 708
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v1, v0, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_5
    iget-object v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/util/Scheduler;->removeDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;Z)Z

    .line 713
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->recycle()V

    .line 714
    monitor-exit v1

    goto :goto_0

    .line 715
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 723
    :cond_3
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mExecuting:Z

    .line 724
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public start(Lcom/sonymobile/flix/util/Scheduler$Task;JJJ)Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;
    .locals 6
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "schedulerTime"    # J
    .param p4, "firstDelay"    # J
    .param p6, "delay"    # J

    .prologue
    .line 662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 663
    .local v0, "handlerTime":J
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v3, v2, Lcom/sonymobile/flix/util/Scheduler;->mTaskLock:Ljava/lang/Object;

    monitor-enter v3

    .line 664
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v2, v2, Lcom/sonymobile/flix/util/Scheduler;->mDelayedTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    iput-object p1, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mTask:Lcom/sonymobile/flix/util/Scheduler$Task;

    .line 667
    iput-wide p6, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mDelay:J

    .line 668
    add-long v2, v0, p4

    iput-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mHandlerNext:J

    .line 669
    add-long v2, p2, p4

    iput-wide v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mSchedulerNext:J

    .line 670
    monitor-enter p0

    .line 671
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v2, v2, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->this$0:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v3, v3, Lcom/sonymobile/flix/util/Scheduler;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/sonymobile/flix/util/Scheduler$TaskRunnable;->mHandlerNext:J

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 672
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 673
    return-object p0

    .line 665
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 672
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
