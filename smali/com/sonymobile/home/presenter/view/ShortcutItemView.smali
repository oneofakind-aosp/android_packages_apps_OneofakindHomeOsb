.class public Lcom/sonymobile/home/presenter/view/ShortcutItemView;
.super Lcom/sonymobile/home/presenter/view/IconLabelView;
.source "ShortcutItemView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "includeLabel"    # Z
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/presenter/view/IconLabelView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected doHandleClick(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ShortcutItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ShortcutItemView;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 46
    .local v3, "sourceBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ShortcutItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->makeLaunchAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v2

    .line 47
    .local v2, "options":Landroid/os/Bundle;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 48
    invoke-static {v1, v2, p1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->launchShortcut(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 50
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/presenter/view/ShortcutItemView;->setStayPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2    # "options":Landroid/os/Bundle;
    .end local v3    # "sourceBounds":Landroid/graphics/Rect;
    :goto_0
    return v4

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ShortcutItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/ShortcutItemView;->mLabel:Ljava/lang/String;

    invoke-static {p1, v4, v6}, Lcom/sonymobile/home/presenter/PageViewPresenter;->handleActivityNotFound(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Ljava/lang/String;)V

    move v4, v5

    .line 53
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v5

    .line 59
    goto :goto_0
.end method
