.class public Lcom/sonymobile/home/presenter/view/TipItemViewCreator;
.super Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;
.source "TipItemViewCreator.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 34
    return-void
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "tipItemView":Lcom/sonymobile/home/presenter/view/TipItemView;
    if-eqz p2, :cond_0

    .line 47
    new-instance v0, Lcom/sonymobile/home/presenter/view/TipItemView;

    .end local v0    # "tipItemView":Lcom/sonymobile/home/presenter/view/TipItemView;
    invoke-direct {v0, p3, p1, p4}, Lcom/sonymobile/home/presenter/view/TipItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 48
    .restart local v0    # "tipItemView":Lcom/sonymobile/home/presenter/view/TipItemView;
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/home/presenter/view/TipItemViewCreator;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 50
    :cond_0
    return-object v0
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 5
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 55
    if-eqz p3, :cond_0

    move-object v1, p3

    .line 56
    check-cast v1, Lcom/sonymobile/home/presenter/resource/TipResource;

    .local v1, "tipResource":Lcom/sonymobile/home/presenter/resource/TipResource;
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/sonymobile/home/presenter/view/TipItemView;

    .line 58
    .local v0, "tipItemView":Lcom/sonymobile/home/presenter/view/TipItemView;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/TipResource;->getTitleLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/TipItemView;->setTitle(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/TipResource;->getInfoLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/TipItemView;->setInfo(Ljava/lang/String;)V

    .line 63
    .end local v0    # "tipItemView":Lcom/sonymobile/home/presenter/view/TipItemView;
    .end local v1    # "tipResource":Lcom/sonymobile/home/presenter/resource/TipResource;
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v2, "TipItemViewCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating TipItemView "

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
