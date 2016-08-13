.class public Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;
.super Ljava/lang/Object;
.source "HomeAppWidgetHostFactory.java"


# static fields
.field private static sInjectedTestAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;->sInjectedTestAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;

    monitor-enter v0

    const v1, 0xa3d9739

    :try_start_0
    invoke-static {p0, v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;->createInstance(Landroid/content/Context;I)Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;I)Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostId"    # I

    .prologue
    .line 42
    const-class v1, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;->sInjectedTestAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;->sInjectedTestAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;-><init>(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
