.class public Lcom/sonymobile/home/util/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# static fields
.field static volatile sPortraitLayoutInLandscape:Ljava/lang/Boolean;


# direct methods
.method public static isLandscape(Lcom/sonymobile/flix/components/Scene;)Z
    .locals 2
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z
    .locals 2
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 37
    sget-object v1, Lcom/sonymobile/home/util/LayoutUtils;->sPortraitLayoutInLandscape:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 39
    .local v0, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/home/util/LayoutUtils;->sPortraitLayoutInLandscape:Ljava/lang/Boolean;

    .line 42
    .end local v0    # "rm":Lcom/sonymobile/home/resources/ResourceManager;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonymobile/home/util/LayoutUtils;->sPortraitLayoutInLandscape:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static usePortraitLayoutInLandscapeOrientation(Lcom/sonymobile/flix/components/Scene;)Z
    .locals 2
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 63
    sget-object v1, Lcom/sonymobile/home/util/LayoutUtils;->sPortraitLayoutInLandscape:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 65
    .local v0, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/home/util/LayoutUtils;->sPortraitLayoutInLandscape:Ljava/lang/Boolean;

    .line 67
    .end local v0    # "rm":Lcom/sonymobile/home/resources/ResourceManager;
    :cond_0
    sget-object v1, Lcom/sonymobile/home/util/LayoutUtils;->sPortraitLayoutInLandscape:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static useRtlLayoutDirection(Lcom/sonymobile/flix/components/Scene;)Z
    .locals 2
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
