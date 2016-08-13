.class public Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;
.super Ljava/lang/Object;
.source "HomeAdvWidgetFactory.java"


# static fields
.field private static sInjectedTestAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;->sInjectedTestAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p2, "info"    # Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    .prologue
    .line 33
    const-class v1, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;->sInjectedTestAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;->sInjectedTestAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;-><init>(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
