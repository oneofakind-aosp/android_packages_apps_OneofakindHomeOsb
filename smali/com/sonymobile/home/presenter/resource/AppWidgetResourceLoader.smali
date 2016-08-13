.class public Lcom/sonymobile/home/presenter/resource/AppWidgetResourceLoader;
.super Ljava/lang/Object;
.source "AppWidgetResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceLoader;


# instance fields
.field private final mMainUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResourceLoader;->mMainUser:Landroid/os/UserHandle;

    .line 36
    return-void
.end method

.method private getAppWidgetResource(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appWidgetClassName"    # Ljava/lang/String;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 127
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v1

    .line 129
    .local v1, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {v1, p2, p3, p4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getRegisteredAppWidget(ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v0

    .line 132
    .local v0, "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v1, p2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->loadLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "loadedLabel":Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    .line 137
    if-eqz p5, :cond_0

    iget-object v6, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResourceLoader;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {p5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    .line 138
    .local v3, "isBadgeNeeded":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 140
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v4, p5}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v3    # "isBadgeNeeded":Z
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .local v2, "contentDescription":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    invoke-direct {v6, v0, p4, v2}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;-><init>(Lcom/sonymobile/home/ui/widget/AppWidget;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v0    # "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v4    # "loadedLabel":Ljava/lang/CharSequence;
    :goto_2
    return-object v6

    .line 137
    .restart local v0    # "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    .restart local v4    # "loadedLabel":Ljava/lang/CharSequence;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 142
    .restart local v3    # "isBadgeNeeded":Z
    :cond_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentDescription":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v3    # "isBadgeNeeded":Z
    :cond_2
    move-object v2, p4

    .restart local v2    # "contentDescription":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v0    # "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v4    # "loadedLabel":Ljava/lang/CharSequence;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 96
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .line 97
    .local v1, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 100
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    .line 104
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 72
    new-instance v0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    invoke-direct {v0}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;-><init>()V

    .line 74
    .local v0, "resource":Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0f000a

    return v0
.end method

.method public getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "preLoader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 46
    const/4 v6, 0x0

    .local v6, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    move-object v7, p2

    .line 47
    check-cast v7, Lcom/sonymobile/home/data/WidgetItem;

    .line 48
    .local v7, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    if-eqz v7, :cond_0

    .line 49
    invoke-virtual {v7}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "appWidgetClassName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v7}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/presenter/resource/AppWidgetResourceLoader;->getAppWidgetResource(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    move-result-object v6

    .line 53
    .end local v4    # "appWidgetClassName":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 3
    .param p1, "forceRelease"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 84
    move-object v1, p2

    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .line 85
    .local v1, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 87
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->destroyAppWidget(I)V

    .line 91
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 0
    .param p1, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 110
    return-void
.end method

.method public updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 58
    return-object p3
.end method
