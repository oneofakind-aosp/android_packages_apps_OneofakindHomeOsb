.class public Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
.super Ljava/lang/Object;
.source "HomeAdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;,
        Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;,
        Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private final mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field private final mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

.field private final mContext:Landroid/content/Context;

.field private final mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/sonymobile/home/ui/widget/HomeAdvWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorker:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "advWidgetProviderHelper"    # Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;
    .param p3, "worker"    # Lcom/sonymobile/flix/util/Worker;
    .param p4, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    .line 113
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mWorker:Lcom/sonymobile/flix/util/Worker;

    .line 115
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    .line 116
    iput-object p4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    .param p3, "x3"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoaded(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/util/UUID;
    .param p6, "x6"    # Z

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoadingFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->logAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contextPattern"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "logInfo"    # Ljava/lang/String;

    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx$Short;->w(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private notifyAdvWidgetLoaded(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    .param p3, "advWidget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 518
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method private notifyAdvWidgetLoadingFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "uuid"    # Ljava/util/UUID;
    .param p6, "silent"    # Z

    .prologue
    .line 532
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;

    move-object v1, p0

    move v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;ZLcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method


# virtual methods
.method protected configuredWidget(Ljava/util/UUID;I)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "response"    # I

    .prologue
    .line 498
    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;

    .line 500
    .local v3, "pendingAdvWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;
    if-eqz v3, :cond_0

    .line 501
    iget-object v0, v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 502
    .local v0, "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    iget-object v1, v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mHandler:Landroid/os/Handler;

    .line 503
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mListener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    .line 505
    .local v2, "listener":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 506
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onConfigurationSuccess()V

    .line 507
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createHostView()Z

    .line 508
    invoke-direct {p0, v1, v2, v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoaded(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V

    .line 514
    .end local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "listener":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    :cond_0
    :goto_0
    return-void

    .line 510
    .restart local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "listener":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onConfigurationFail()V

    .line 511
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onRemove()Z

    goto :goto_0
.end method

.method public customizeAdvWidget(Lcom/sonymobile/home/data/AdvWidgetItem;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/AdvWidgetItem;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 406
    .local v0, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->initializeWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z

    .line 411
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onCustomize(Landroid/os/Bundle;)Z

    .line 416
    return-void

    .line 413
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "HomeAdvWidget was not loaded before trying to customize"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public destroyWidget(Ljava/util/UUID;)V
    .locals 2
    .param p1, "widgetId"    # Ljava/util/UUID;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 440
    .local v0, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDestroy()Z

    .line 443
    :cond_0
    return-void
.end method

.method public generateId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getAdvWidgetExceptionHandler()Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    return-object v0
.end method

.method public getLabel(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 586
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 587
    .local v0, "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    const/4 v1, 0x0

    .line 588
    .local v1, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v2

    iget-object v1, v2, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->label:Ljava/lang/String;

    .line 591
    :cond_0
    return-object v1
.end method

.method public initializeWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z
    .locals 3
    .param p1, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 361
    const/4 v0, 0x1

    .line 363
    .local v0, "success":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createProxy()Z

    move-result v0

    .line 368
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getLifeCycleState()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onInit()Z

    move-result v0

    .line 372
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getLifeCycleState()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 374
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onCreate()Z

    move-result v0

    .line 377
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 379
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createHostView()Z

    move-result v0

    .line 382
    :cond_3
    if-nez v0, :cond_4

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeWidget failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx$Short;->e(Ljava/lang/String;)V

    .line 386
    :cond_4
    return v0
.end method

.method public loadAdvWidgetProviderInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 302
    new-instance v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    invoke-direct {v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;-><init>()V

    .line 303
    .local v1, "advWidgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 305
    const/4 v8, 0x0

    iput v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->resizeMode:I

    .line 308
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 309
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 311
    .local v0, "actInfo":Landroid/content/pm/ActivityInfo;
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v6

    .line 312
    .local v6, "version":F
    invoke-static {v6}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->isVersionSupported(F)Z

    move-result v8

    if-nez v8, :cond_0

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdvWidgetFrwk Version not supported "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/flix/debug/Logx$Short;->w(Ljava/lang/String;)V

    move-object v1, v7

    .line 349
    .end local v0    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "advWidgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "version":F
    :goto_0
    return-object v1

    .line 318
    .restart local v0    # "actInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "advWidgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "version":F
    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 319
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->label:Ljava/lang/String;

    .line 321
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 324
    .local v4, "packageResource":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinWidgetSpanX(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v8

    iput v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minWidth:I

    .line 326
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinWidgetSpanY(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v8

    iput v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minHeight:I

    .line 329
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v8

    iput v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->resizeMode:I

    .line 332
    iget v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->resizeMode:I

    if-eqz v8, :cond_1

    .line 333
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinResizeWidgetSpanX(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v8

    iput v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minResizeWidth:I

    .line 335
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinResizeWidgetSpanY(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v8

    iput v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minResizeHeight:I

    .line 339
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getUseHardwareLayer(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->hardwareLayer:Z

    .line 341
    iget-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getIsScrollable(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->isScrollable:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v0    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "packageResource":Landroid/content/res/Resources;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "version":F
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed fetching widget activity info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/flix/debug/Logx$Short;->w(Ljava/lang/String;)V

    move-object v1, v7

    .line 347
    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "actInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "label":Ljava/lang/CharSequence;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "version":F
    :cond_2
    move-object v8, v7

    .line 319
    goto :goto_1
.end method

.method public loadWidgetAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Landroid/os/Handler;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "listener"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null packageName not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-nez p2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null className not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    if-nez p3, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null uuid not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;)V

    invoke-virtual {v7, v0}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 237
    return-void
.end method

.method public loadWidgetSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null packageName not allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_0
    if-nez p2, :cond_1

    .line 262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null className not allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_1
    if-nez p3, :cond_2

    .line 265
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null uuid not allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 271
    .local v2, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    if-nez v2, :cond_4

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadAdvWidgetProviderInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v0

    .line 274
    .local v0, "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    if-nez v0, :cond_3

    .line 275
    const/4 v3, 0x0

    .line 290
    .end local v0    # "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    :goto_0
    return-object v3

    .line 278
    .restart local v0    # "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-static {v3, v4, v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;->createInstance(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v2

    .line 279
    invoke-virtual {v2, p3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setId(Ljava/util/UUID;)V

    .line 280
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostActivity(Landroid/app/Activity;)V

    .line 281
    new-instance v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHost(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V

    .line 282
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createClazz()V

    .line 285
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 286
    .local v1, "registeredWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    if-eqz v1, :cond_4

    .line 287
    move-object v2, v1

    .end local v0    # "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    .end local v1    # "registeredWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :cond_4
    move-object v3, v2

    .line 290
    goto :goto_0
.end method

.method protected logTrackAndPushExceptionToGA(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "logInfo"    # Ljava/lang/String;

    .prologue
    .line 605
    const-string v0, "AdvWidget"

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 449
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 451
    .local v0, "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDestroy()Z

    goto :goto_0

    .line 453
    .end local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;>;"
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 455
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 456
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;

    .line 457
    .local v4, "pendingAdvWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;
    iget-object v0, v4, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 458
    .restart local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDestroy()Z

    .line 459
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mListener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    goto :goto_1

    .line 461
    .end local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;>;"
    .end local v4    # "pendingAdvWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 462
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->onDestroy()V

    .line 463
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/sonymobile/home/HomeApplication;->watch(Landroid/content/Context;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 485
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 486
    .local v0, "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onTrimMemory(I)V

    goto :goto_0

    .line 488
    .end local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :cond_0
    return-void
.end method

.method public removeWidget(Ljava/util/UUID;)V
    .locals 2
    .param p1, "widgetId"    # Ljava/util/UUID;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 427
    .local v0, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onRemove()Z

    .line 430
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mActivity:Landroid/app/Activity;

    .line 473
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 474
    .local v0, "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 476
    .end local v0    # "advWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :cond_0
    return-void
.end method
