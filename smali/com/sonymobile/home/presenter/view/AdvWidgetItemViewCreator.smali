.class public Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;
.super Ljava/lang/Object;
.source "AdvWidgetItemViewCreator.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;


# instance fields
.field private final mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0
    .param p1, "advWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 43
    return-void
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 10
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 52
    if-eqz p2, :cond_0

    move-object v8, p2

    .line 54
    check-cast v8, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;

    .line 55
    .local v8, "advWidgetResource":Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;
    new-instance v7, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;

    invoke-direct {v7, p3, p1, p4}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 56
    .local v7, "advWidgetItemView":Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;
    invoke-virtual {v8}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->getWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-virtual {v8}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->isDefault()Z

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v3}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setAdvancedWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;ZZ)V

    .line 71
    .end local v8    # "advWidgetResource":Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;
    :goto_0
    return-object v7

    .line 60
    .end local v7    # "advWidgetItemView":Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;
    :cond_0
    new-instance v7, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;

    invoke-direct {v7, p3, p1, p4}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 61
    .restart local v7    # "advWidgetItemView":Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v3}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setAdvancedWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;ZZ)V

    move-object v6, p1

    .line 64
    check-cast v6, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 65
    .local v6, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    const-string v0, "AdvWidget"

    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error creating advanced widget item view: "

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v9, "resourceItem is null"

    invoke-direct {v5, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 0
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 92
    return-void
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 6
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 76
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    move-object v0, p3

    .line 77
    check-cast v0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;

    .local v0, "advWidgetResource":Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;
    move-object v1, p1

    .line 78
    check-cast v1, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;

    .line 81
    .local v1, "advWidgetView":Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;
    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->getWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->isDefault()Z

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v5}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setAdvancedWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;ZZ)V

    .line 87
    .end local v0    # "advWidgetResource":Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;
    .end local v1    # "advWidgetView":Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v2, "AdvWidgetItemViewCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating AdvWidgetItemView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with resource item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
