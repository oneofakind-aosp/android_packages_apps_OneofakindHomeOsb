.class Lcom/sonymobile/flix/util/Worker$3;
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
    .line 604
    iput-object p1, p0, Lcom/sonymobile/flix/util/Worker$3;->this$0:Lcom/sonymobile/flix/util/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$3;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$3;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->onCancel()V

    .line 612
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$3;->this$0:Lcom/sonymobile/flix/util/Worker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    .line 613
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$3;->this$0:Lcom/sonymobile/flix/util/Worker;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker;->executeNextTask()V

    .line 614
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$3;->this$0:Lcom/sonymobile/flix/util/Worker;

    iget-object v0, v0, Lcom/sonymobile/flix/util/Worker;->mExecutingTask:Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker$Task;->onFinish()V

    goto :goto_0
.end method
