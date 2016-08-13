.class public abstract Lcom/sonymobile/flix/util/DynamicsTask;
.super Ljava/lang/Object;
.source "DynamicsTask.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/DynamicsTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/flix/util/Dynamics;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;"
    }
.end annotation


# instance fields
.field protected mAdded:Z

.field protected mDelayedFinish:Z

.field protected final mDynamics:Lcom/sonymobile/flix/util/Dynamics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mFinishEnabled:Z

.field protected mFinished:Z

.field protected mStarted:Z

.field protected mStopped:Z

.field protected mTaskListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/util/DynamicsTask$Listener",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    .local p1, "dynamics":Lcom/sonymobile/flix/util/Dynamics;, "TT;"
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    .line 29
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mFinishEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDelayedFinish:Z

    .line 31
    return-void
.end method

.method private finish()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    const/4 v0, 0x1

    .line 90
    iget-object v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/Dynamics;->hasTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/Dynamics;->getTarget()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/util/Dynamics;->setValue(F)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/Dynamics;->getValue()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/Dynamics;->getDelta()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/flix/util/DynamicsTask;->onUpdate(Lcom/sonymobile/flix/util/Dynamics;FF)V

    .line 94
    iget-boolean v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDelayedFinish:Z

    if-eqz v1, :cond_1

    .line 95
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mFinished:Z

    .line 96
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->reset()V

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->notifyFinish()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/flix/util/DynamicsTask$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/util/DynamicsTask$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    .local p1, "listener":Lcom/sonymobile/flix/util/DynamicsTask$Listener;, "Lcom/sonymobile/flix/util/DynamicsTask$Listener<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .prologue
    .line 204
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    :cond_0
    return-void
.end method

.method public getDynamics()Lcom/sonymobile/flix/util/Dynamics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    return-object v0
.end method

.method protected notifyFinish()V
    .locals 4

    .prologue
    .line 116
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/util/DynamicsTask;->onFinish(Lcom/sonymobile/flix/util/Dynamics;)V

    .line 117
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/DynamicsTask$Listener;

    iget-object v3, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-interface {v2, p0, v3}, Lcom/sonymobile/flix/util/DynamicsTask$Listener;->onFinish(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method protected notifyStart()V
    .locals 4

    .prologue
    .line 108
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/util/DynamicsTask;->onStart(Lcom/sonymobile/flix/util/Dynamics;)V

    .line 109
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 110
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mTaskListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/DynamicsTask$Listener;

    iget-object v3, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-interface {v2, p0, v3}, Lcom/sonymobile/flix/util/DynamicsTask$Listener;->onStart(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 1
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 42
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mAdded:Z

    .line 43
    return-void
.end method

.method public onFinish(Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    .local p1, "dynamics":Lcom/sonymobile/flix/util/Dynamics;, "TT;"
    return-void
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 1
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 47
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mAdded:Z

    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->reset()V

    .line 51
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    .local p1, "dynamics":Lcom/sonymobile/flix/util/Dynamics;, "TT;"
    return-void
.end method

.method public abstract onUpdate(Lcom/sonymobile/flix/util/Dynamics;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation
.end method

.method public onUpdate(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mStarted:Z

    if-nez v2, :cond_0

    .line 64
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mStarted:Z

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->notifyStart()V

    .line 67
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mFinished:Z

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/Dynamics;->isAtRest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->reset()V

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->notifyFinish()V

    move v0, v1

    .line 85
    :cond_1
    :goto_0
    return v0

    .line 76
    :cond_2
    iput-boolean v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mFinished:Z

    .line 79
    :cond_3
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mFinishEnabled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/Dynamics;->isAtRest()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mStopped:Z

    if-eqz v2, :cond_6

    .line 80
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->finish()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/flix/util/Dynamics;->update(J)V

    .line 83
    iget-object v1, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    iget-object v2, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/flix/util/Dynamics;->getValue()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/Dynamics;->getDelta()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/flix/util/DynamicsTask;->onUpdate(Lcom/sonymobile/flix/util/Dynamics;FF)V

    goto :goto_0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mStarted:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mStopped:Z

    .line 36
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mFinished:Z

    .line 37
    iget-object v0, p0, Lcom/sonymobile/flix/util/DynamicsTask;->mDynamics:Lcom/sonymobile/flix/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Dynamics;->reset()V

    .line 38
    return-void
.end method
