.class public Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;
.super Ljava/lang/Object;
.source "ListTouchHelper.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/ListTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SnapTask"
.end annotation


# instance fields
.field protected mHasStopped:Z

.field protected mWasAborted:Z

.field final synthetic this$0:Lcom/sonymobile/flix/util/ListTouchHelper;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/util/ListTouchHelper;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->mWasAborted:Z

    .line 1441
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1435
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->mWasAborted:Z

    .line 1436
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->mHasStopped:Z

    .line 1437
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 2
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapping:Z

    .line 1446
    return-void
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 2
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapping:Z

    .line 1481
    return-void
.end method

.method public onUpdate(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1450
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->mWasAborted:Z

    if-eqz v2, :cond_0

    .line 1475
    :goto_0
    return v0

    .line 1454
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->mHasStopped:Z

    if-eqz v2, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyStopped()V

    goto :goto_0

    .line 1461
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v2, v2, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/flix/util/SpringDynamics;->update(J)V

    .line 1463
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v2, v2, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/SpringDynamics;->isAtRest()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1464
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v3, v3, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/SpringDynamics;->getTarget()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 1465
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 1466
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-boolean v2, v2, Lcom/sonymobile/flix/util/ListTouchHelper;->mDelayedStop:Z

    if-eqz v2, :cond_2

    .line 1467
    iput-boolean v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->mHasStopped:Z

    :goto_1
    move v0, v1

    .line 1475
    goto :goto_0

    .line 1469
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyStopped()V

    goto :goto_0

    .line 1473
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v3, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v3, v3, Lcom/sonymobile/flix/util/ListTouchHelper;->mSnapDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/SpringDynamics;->getValue()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$SnapTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    sub-float/2addr v3, v4

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->move(FZI)V

    goto :goto_1
.end method
