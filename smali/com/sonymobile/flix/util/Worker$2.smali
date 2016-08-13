.class Lcom/sonymobile/flix/util/Worker$2;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/util/Worker;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sonymobile/flix/util/Worker$2;->this$0:Lcom/sonymobile/flix/util/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 588
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 589
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$2;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$2;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->onExecute()V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$2;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v1, v0, Lcom/sonymobile/flix/util/Worker;->mMainThreadHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$2;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Worker;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/flix/util/Worker$2;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v2, v2, Lcom/sonymobile/flix/util/Worker;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    monitor-exit v1

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
