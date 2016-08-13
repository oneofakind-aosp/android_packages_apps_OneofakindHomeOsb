.class public Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;
.super Ljava/lang/Object;
.source "WidgetItemViewCreator.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator$FindBlockingContainer;
    }
.end annotation


# instance fields
.field private final mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0
    .param p1, "appWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 45
    return-void
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 55
    check-cast v1, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    .line 56
    .local v1, "appWidgetResource":Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->getWidget()Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v2

    .line 57
    .local v2, "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-eqz v2, :cond_0

    .line 60
    new-instance v0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    .end local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    invoke-direct {v0, p3, p1, p4}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 61
    .restart local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setAppWidgetContentDescription(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->isDefault()Z

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v5}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setAppWidget(Lcom/sonymobile/home/ui/widget/AppWidget;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;ZZ)V

    .line 75
    .end local v1    # "appWidgetResource":Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    .end local v2    # "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    :goto_0
    return-object v0

    .line 67
    .restart local v1    # "appWidgetResource":Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    .restart local v2    # "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    :cond_0
    new-instance v0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    .end local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    invoke-direct {v0, p3, p1, p4}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .restart local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    goto :goto_0

    .line 72
    .end local v1    # "appWidgetResource":Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    .end local v2    # "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    :cond_1
    new-instance v0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    .end local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    invoke-direct {v0, p3, p1, p4}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .restart local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 0
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 95
    return-void
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 6
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 80
    move-object v1, p3

    check-cast v1, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    .line 81
    .local v1, "appWidgetResource":Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    .line 84
    .local v0, "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setAppWidgetContentDescription(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->getWidget()Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->isDefault()Z

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v5}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setAppWidget(Lcom/sonymobile/home/ui/widget/AppWidget;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;ZZ)V

    .line 90
    .end local v0    # "appWidgetItemView":Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v2, "WidgetItemViewCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating WidgetItemView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when resource item is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
