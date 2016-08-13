.class public Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;
.super Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;
.source "FolderItemViewCreator.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 35
    return-void
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "folderItemView":Lcom/sonymobile/home/presenter/view/FolderItemView;
    if-eqz p2, :cond_0

    .line 47
    new-instance v0, Lcom/sonymobile/home/presenter/view/FolderItemView;

    .end local v0    # "folderItemView":Lcom/sonymobile/home/presenter/view/FolderItemView;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;->includedLabel(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    invoke-direct {v0, p3, p1, v1, p4}, Lcom/sonymobile/home/presenter/view/FolderItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 49
    .restart local v0    # "folderItemView":Lcom/sonymobile/home/presenter/view/FolderItemView;
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 51
    :cond_0
    return-object v0
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 6
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    move-object v2, p1

    .line 57
    check-cast v2, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .local v2, "view":Lcom/sonymobile/home/presenter/view/IconLabelView;
    move-object v1, p3

    .line 58
    check-cast v1, Lcom/sonymobile/home/presenter/resource/FolderResource;

    .line 59
    .local v1, "resource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/FolderResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2, p2, v1, v0}, Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;->updateIconLabelView(Lcom/sonymobile/home/presenter/view/IconLabelView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/FolderResource;->getBadge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setNotificationBadge(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;->updateViewParameters(Ljava/lang/String;Lcom/sonymobile/home/presenter/view/IconLabelView;)V

    .line 67
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "resource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    .end local v2    # "view":Lcom/sonymobile/home/presenter/view/IconLabelView;
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v3, "FolderItemViewCreator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating FolderItemView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with resource item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
