.class public Lcom/sonymobile/home/presenter/view/ActivityItemView;
.super Lcom/sonymobile/home/presenter/view/IconLabelView;
.source "ActivityItemView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "includeLabel"    # Z
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/presenter/view/IconLabelView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected doHandleClick(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ActivityItemView;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 44
    .local v3, "sourceBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ActivityItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->makeLaunchAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v2

    .line 45
    .local v2, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ActivityItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 46
    .local v1, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-static {p1}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler(Landroid/content/Context;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v2}, Lcom/sonymobile/home/model/PackageHandler;->startMainActivity(Lcom/sonymobile/home/data/ActivityItem;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 48
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/presenter/view/ActivityItemView;->setStayPressed(Z)V

    .line 50
    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/sonymobile/home/presenter/WifiOffloadPresenter;->sendWifiOffloadBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "item":Lcom/sonymobile/home/data/ActivityItem;
    .end local v2    # "options":Landroid/os/Bundle;
    .end local v3    # "sourceBounds":Landroid/graphics/Rect;
    :goto_0
    return v4

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ActivityItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/ActivityItemView;->mLabel:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/sonymobile/home/presenter/PageViewPresenter;->handleActivityNotFound(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Ljava/lang/String;)V

    .line 53
    const/4 v4, 0x0

    goto :goto_0
.end method
