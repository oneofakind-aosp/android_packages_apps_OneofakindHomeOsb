.class public Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;
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
    name = "FlingTask"
.end annotation


# instance fields
.field protected mFlingDirection:I

.field protected mHasStopped:Z

.field protected mWasAborted:Z

.field final synthetic this$0:Lcom/sonymobile/flix/util/ListTouchHelper;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/util/ListTouchHelper;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mWasAborted:Z

    .line 1349
    return-void
.end method

.method public init(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    const/4 v0, 0x0

    .line 1339
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mWasAborted:Z

    .line 1340
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mHasStopped:Z

    .line 1344
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mFlingDirection:I

    .line 1345
    return-void

    .line 1344
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 2
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlinging:Z

    .line 1354
    return-void
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 2
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlinging:Z

    .line 1426
    return-void
.end method

.method public onUpdate(J)Z
    .locals 11
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1358
    iget-boolean v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mWasAborted:Z

    if-eqz v4, :cond_0

    .line 1420
    :goto_0
    return v8

    .line 1362
    :cond_0
    iget-boolean v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mHasStopped:Z

    if-eqz v4, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyStopped()V

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-boolean v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsEnabled:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget-object v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v5, v5, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMin:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    iget-object v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v5, v5, Lcom/sonymobile/flix/util/ListTouchHelper;->mBoundsMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    :cond_2
    move v6, v0

    .line 1371
    .local v6, "outsideBounds":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 1372
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    iget-object v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v5, v5, Lcom/sonymobile/flix/util/ListTouchHelper;->mRubberbandFriction:F

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/util/FrictionDynamics;->setFriction(F)V

    .line 1377
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    invoke-virtual {v4, p1, p2}, Lcom/sonymobile/flix/util/FrictionDynamics;->update(J)V

    .line 1378
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v5, v5, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    invoke-virtual {v5}, Lcom/sonymobile/flix/util/FrictionDynamics;->getDelta()F

    move-result v5

    const/4 v9, 0x2

    invoke-virtual {v4, v5, v8, v9}, Lcom/sonymobile/flix/util/ListTouchHelper;->move(FZI)V

    .line 1380
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v1, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mPosition:F

    .line 1381
    .local v1, "scrollPosition":F
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/FrictionDynamics;->getVelocity()F

    move-result v3

    .line 1382
    .local v3, "velocity":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1386
    .local v7, "speed":F
    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mToSnapVelocityThreshold:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    cmpg-float v4, v7, v4

    if-gez v4, :cond_5

    .line 1387
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapToBounds()Z

    goto :goto_0

    .end local v1    # "scrollPosition":F
    .end local v3    # "velocity":F
    .end local v6    # "outsideBounds":Z
    .end local v7    # "speed":F
    :cond_3
    move v6, v8

    .line 1369
    goto :goto_1

    .line 1374
    .restart local v6    # "outsideBounds":Z
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingDynamics:Lcom/sonymobile/flix/util/FrictionDynamics;

    iget-object v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v5, v5, Lcom/sonymobile/flix/util/ListTouchHelper;->mFlingFriction:F

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/util/FrictionDynamics;->setFriction(F)V

    goto :goto_2

    .line 1393
    .restart local v1    # "scrollPosition":F
    .restart local v3    # "velocity":F
    .restart local v7    # "speed":F
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-boolean v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mAutoSnappingEnabled:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mToSnapVelocityThreshold:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_7

    .line 1400
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v4, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->requestSnap(F)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1401
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v5, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mFlingDirection:I

    if-ne v5, v0, :cond_6

    :goto_3
    invoke-virtual {v4, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->getSnapPosition(Z)F

    move-result v2

    .line 1402
    .local v2, "snapTo":F
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->snap(FFFJ)V

    goto/16 :goto_0

    .end local v2    # "snapTo":F
    :cond_6
    move v0, v8

    .line 1401
    goto :goto_3

    .line 1408
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mStoppedVelocityThreshold:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_8

    .line 1411
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mVelocity:F

    .line 1412
    iget-object v4, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-boolean v4, v4, Lcom/sonymobile/flix/util/ListTouchHelper;->mDelayedStop:Z

    if-eqz v4, :cond_9

    .line 1413
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->mHasStopped:Z

    :cond_8
    move v8, v0

    .line 1420
    goto/16 :goto_0

    .line 1415
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/flix/util/ListTouchHelper$FlingTask;->this$0:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->notifyStopped()V

    goto/16 :goto_0
.end method
