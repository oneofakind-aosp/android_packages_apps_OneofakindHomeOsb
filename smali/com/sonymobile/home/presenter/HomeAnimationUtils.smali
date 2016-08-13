.class public Lcom/sonymobile/home/presenter/HomeAnimationUtils;
.super Ljava/lang/Object;
.source "HomeAnimationUtils.java"


# static fields
.field private static sAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static sAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static sDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static sFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private static sLinearInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public static getAccelerateDecelerateInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 112
    :cond_0
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getAccelerateInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    :cond_0
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getDecelerateInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    :cond_0
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getFastOutSlowInInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    :cond_0
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static getLinearInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    :cond_0
    sget-object v0, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static makeClassicAnimation(Lcom/sonymobile/flix/components/Scene;)Landroid/os/Bundle;
    .locals 3
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    const v2, 0x7f04000e

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static makeLaunchAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 2
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p1, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 124
    invoke-static {p0, p1}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->makeRevealAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->makeClassicAnimation(Lcom/sonymobile/flix/components/Scene;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeRevealAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 5
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p1, "sourceBounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
