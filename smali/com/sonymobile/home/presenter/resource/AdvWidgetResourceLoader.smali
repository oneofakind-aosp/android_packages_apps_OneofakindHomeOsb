.class public Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;
.super Ljava/lang/Object;
.source "AdvWidgetResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceLoader;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private getHomeAdvWidget(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "widgetId"    # Ljava/util/UUID;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "advWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .prologue
    .line 119
    const/4 v6, 0x0

    .line 122
    .local v6, "homeAdvWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :try_start_0
    invoke-virtual {p5, p1, p2, p3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadWidgetSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 130
    :goto_0
    return-object v6

    .line 123
    :catch_0
    move-exception v5

    .line 124
    .local v5, "e":Ljava/lang/Exception;
    const-string v0, "AdvWidget"

    const-string v4, "Error loading advanced widget: "

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getLabel(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 103
    move-object v1, p2

    check-cast v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 105
    .local v1, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 106
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 109
    .local v0, "actInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 114
    .end local v0    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed fetching widget activity info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 86
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 87
    .local v1, "widgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 90
    .local v0, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->removeWidget(Ljava/util/UUID;)V

    .line 94
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 66
    new-instance v0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Ljava/lang/String;Z)V

    .line 68
    .local v0, "resource":Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;
    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f0f0005

    return v0
.end method

.method public getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "preLoader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 44
    move-object v6, p2

    check-cast v6, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 45
    .local v6, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-direct {p0, p1, v6}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;->getLabel(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "label":Ljava/lang/String;
    const/4 v8, 0x0

    .line 48
    .local v8, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v5

    .line 49
    .local v5, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v5, :cond_0

    .line 50
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;->getHomeAdvWidget(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v8

    .line 56
    :goto_0
    if-eqz v8, :cond_1

    new-instance v0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v7, v1}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Ljava/lang/String;Z)V

    :goto_1
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get adv widget resource failed, advWidgetManager is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 3
    .param p1, "forceRelease"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 73
    move-object v1, p2

    check-cast v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 74
    .local v1, "widgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 77
    .local v0, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->destroyWidget(Ljava/util/UUID;)V

    .line 81
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 0
    .param p1, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 100
    return-void
.end method

.method public updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 61
    return-object p3
.end method
