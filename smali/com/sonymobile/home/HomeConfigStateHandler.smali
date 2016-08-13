.class public final Lcom/sonymobile/home/HomeConfigStateHandler;
.super Ljava/lang/Object;
.source "HomeConfigStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    }
.end annotation


# static fields
.field private static sConfigState:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    sput-object v0, Lcom/sonymobile/home/HomeConfigStateHandler;->sConfigState:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/home/HomeConfigStateHandler;->sIsEnabled:Z

    return-void
.end method

.method public static declared-synchronized getState()Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/sonymobile/home/HomeConfigStateHandler;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/HomeConfigStateHandler;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/home/HomeConfigStateHandler;->sConfigState:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized hasConfigChanged()Z
    .locals 3

    .prologue
    .line 57
    const-class v1, Lcom/sonymobile/home/HomeConfigStateHandler;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/HomeConfigStateHandler;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/home/HomeConfigStateHandler;->sConfigState:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    sget-object v2, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_CHANGE:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 66
    const-class v0, Lcom/sonymobile/home/HomeConfigStateHandler;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sonymobile/home/HomeConfigStateHandler;->sIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setState(Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;)V
    .locals 2
    .param p0, "configState"    # Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .prologue
    .line 37
    const-class v0, Lcom/sonymobile/home/HomeConfigStateHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sonymobile/home/HomeConfigStateHandler;->sConfigState:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
