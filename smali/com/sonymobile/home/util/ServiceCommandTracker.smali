.class public Lcom/sonymobile/home/util/ServiceCommandTracker;
.super Ljava/lang/Object;
.source "ServiceCommandTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;,
        Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;
    }
.end annotation


# instance fields
.field private final mServiceStopper:Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;

.field private final mStartCommandLock:Ljava/lang/Object;

.field private final mStartedCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;)V
    .locals 1
    .param p1, "serviceStopper"    # Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartedCommands:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartCommandLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mServiceStopper:Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;

    .line 52
    return-void
.end method

.method private findCommand(I)Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 102
    iget-object v2, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartedCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;

    .line 103
    .local v0, "command":Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    iget v2, v0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;->startId:I

    if-ne v2, p1, :cond_0

    .line 108
    .end local v0    # "command":Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopFinishedCommandsInOrder()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartedCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;

    .line 92
    .local v0, "command":Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    iget-boolean v2, v0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;->finished:Z

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 94
    iget-object v2, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mServiceStopper:Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;

    iget v3, v0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;->startId:I

    invoke-interface {v2, v3}, Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;->onStopCommand(I)V

    goto :goto_0

    .line 99
    .end local v0    # "command":Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public finishCommand(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 74
    iget-object v2, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartCommandLock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/util/ServiceCommandTracker;->findCommand(I)Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;

    move-result-object v0

    .line 76
    .local v0, "command":Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;->finished:Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/util/ServiceCommandTracker;->stopFinishedCommandsInOrder()V

    .line 81
    monitor-exit v2

    .line 82
    return-void

    .line 81
    .end local v0    # "command":Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startCommand(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartCommandLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/util/ServiceCommandTracker;->mStartedCommands:Ljava/util/ArrayList;

    new-instance v2, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;

    invoke-direct {v2, p1}, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
