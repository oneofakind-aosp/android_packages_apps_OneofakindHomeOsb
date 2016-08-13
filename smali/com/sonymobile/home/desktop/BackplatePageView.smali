.class public Lcom/sonymobile/home/desktop/BackplatePageView;
.super Lcom/sonymobile/home/ui/pageview/PageView;
.source "BackplatePageView.java"


# instance fields
.field private final mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

.field private mHasColorFilter:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;ILcom/sonymobile/flix/components/NinePatchImage;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageIndex"    # I
    .param p3, "backplate"    # Lcom/sonymobile/flix/components/NinePatchImage;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageView;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mHasColorFilter:Z

    .line 35
    iput-object p3, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/BackplatePageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected getBackplate()Lcom/sonymobile/flix/components/NinePatchImage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    return-object v0
.end method

.method public resetNudgeColor()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mHasColorFilter:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 80
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 81
    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setPaint(Landroid/graphics/Paint;)V

    .line 82
    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mHasColorFilter:Z

    .line 86
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public setBackplateAlpha(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/NinePatchImage;->setAlpha(F)V

    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/NinePatchImage;->setDescendantAlpha(F)V

    .line 52
    const/high16 v0, 0x3b000000    # 0.001953125f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    goto :goto_0
.end method

.method public setNudgeColor()V
    .locals 4

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mHasColorFilter:Z

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 66
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0xf2e00d9

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 67
    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setPaint(Landroid/graphics/Paint;)V

    .line 68
    iget-object v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/BackplatePageView;->mHasColorFilter:Z

    .line 72
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method
