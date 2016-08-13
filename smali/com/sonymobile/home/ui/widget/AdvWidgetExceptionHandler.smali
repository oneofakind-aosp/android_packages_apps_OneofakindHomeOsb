.class public Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
.super Ljava/lang/Object;
.source "AdvWidgetExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final mAdvWidgetExceptionObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->notifyUncaughtException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/util/UUID;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->notifyCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V

    return-void
.end method

.method private static buildContextPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "contextPattern"    # Ljava/lang/String;

    .prologue
    .line 321
    return-object p0
.end method

.method private static buildElementPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "elementPattern"    # Ljava/lang/String;
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    .local v0, "pattern":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildExceptionDescription(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "contextPattern"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->buildContextPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "cp":Ljava/lang/String;
    const-string v5, ":"

    invoke-static {p1, p2, v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->buildVersionPattern(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "versionPattern":Ljava/lang/String;
    const-string v5, "class"

    const-string v6, ":"

    invoke-static {v5, p3, v6}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->buildElementPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "classNamePattern":Ljava/lang/String;
    const-string v5, "package"

    const-string v6, ":"

    invoke-static {v5, p2, v6}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->buildElementPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "packageNamePattern":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Lcom/sonymobile/home/util/HomeDebug;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    .local v2, "exceptionDescription":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static buildVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v2, "Version_unknown"

    .line 296
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 297
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 298
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 299
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static buildVersionPattern(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {p0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->buildVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "buildVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    .local v1, "pattern":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getExceptionSource(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    const-string v2, "unknown_source"

    .line 136
    .local v2, "exceptionContext":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 137
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v6, "com.sonymobile.advancedwidget"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.sonyericsson.advancedwidget"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    :cond_0
    const-string v2, "AdvWidget"

    .line 145
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    return-object v2

    .line 136
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "exceptionContext"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "logInfo"    # Ljava/lang/String;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 355
    invoke-static {p0, p1, p2, p3, p5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->buildExceptionDescription(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "customExceptionDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx$Short;->w(Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->pushException(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private notifyCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 399
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    .local v1, "advWidgetExceptionObservers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;

    .line 402
    .local v0, "advWidgetExceptionObserver":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;->onCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0

    .line 404
    .end local v0    # "advWidgetExceptionObserver":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;
    :cond_0
    return-void
.end method

.method private notifyUncaughtException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 427
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    .local v1, "advWidgetExceptionObservers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;

    .line 430
    .local v0, "advWidgetExceptionObserver":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;
    invoke-interface {v0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;->onUncaughtException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 432
    .end local v0    # "advWidgetExceptionObserver":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;
    :cond_0
    return-void
.end method

.method private notifyUpdateState(Ljava/util/UUID;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 413
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 415
    .local v1, "advWidgetExceptionObservers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;

    .line 416
    .local v0, "advWidgetExceptionObserver":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;
    invoke-interface {v0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;->onExceptionUpdateState(Ljava/util/UUID;)V

    goto :goto_0

    .line 418
    .end local v0    # "advWidgetExceptionObserver":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V
    .locals 1
    .param p1, "advWidgetExceptionObserver"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method public handleException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 260
    invoke-direct {p0, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->notifyUpdateState(Ljava/util/UUID;)V

    .line 261
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;-><init>(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Exception;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 88
    return-void
.end method

.method public removeAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V
    .locals 1
    .param p1, "advWidgetExceptionObserver"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mAdvWidgetExceptionObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public setDefaultUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 81
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 82
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->getExceptionSource(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdvWidget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    .local v0, "isAdvWidgetSource":Z
    instance-of v1, p2, Lcom/sonymobile/home/ui/widget/AdvWidgetException;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    return-void

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;-><init>(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {p1, p2}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
