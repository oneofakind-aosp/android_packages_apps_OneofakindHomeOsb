.class public Lcom/sonymobile/home/apptray/AppTrayPageView;
.super Lcom/sonymobile/home/ui/pageview/PageView;
.source "AppTrayPageView.java"


# instance fields
.field private mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

.field private mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

.field private mIsEditModeBackplateEnabled:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;IFF)V
    .locals 11
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageIndex"    # I
    .param p3, "backplateWidth"    # F
    .param p4, "backplateHeight"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageView;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mIsEditModeBackplateEnabled:Z

    .line 49
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v3

    .line 50
    .local v3, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-virtual {v3}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 52
    .local v10, "res":Landroid/content/res/Resources;
    const v0, 0x7f0b0058

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v7

    .line 54
    .local v7, "backplateTopOffset":I
    const v0, 0x7f020148

    invoke-static {v10, v0}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v8, 0x1

    .line 55
    .local v8, "hasDefaultBackplate":Z
    :goto_0
    const v0, 0x7f02004b

    invoke-static {v10, v0}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v9, 0x1

    .line 57
    .local v9, "hasEditModeBackplate":Z
    :goto_1
    if-eqz v8, :cond_0

    .line 58
    const v2, 0x7f020148

    const-string v4, "Apptray default backplate"

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/apptray/AppTrayPageView;->createBackplate(Lcom/sonymobile/flix/components/Scene;ILcom/sonymobile/home/resources/ResourceManager;Ljava/lang/String;FF)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setY(F)V

    .line 66
    :cond_0
    if-eqz v9, :cond_1

    .line 67
    const v2, 0x7f02004b

    const-string v4, "Apptray edit mode backplate"

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/apptray/AppTrayPageView;->createBackplate(Lcom/sonymobile/flix/components/Scene;ILcom/sonymobile/home/resources/ResourceManager;Ljava/lang/String;FF)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setY(F)V

    .line 77
    :cond_1
    return-void

    .line 54
    .end local v8    # "hasDefaultBackplate":Z
    .end local v9    # "hasEditModeBackplate":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 55
    .restart local v8    # "hasDefaultBackplate":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 72
    .restart local v9    # "hasEditModeBackplate":Z
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_2
.end method

.method private createBackplate(Lcom/sonymobile/flix/components/Scene;ILcom/sonymobile/home/resources/ResourceManager;Ljava/lang/String;FF)Lcom/sonymobile/flix/components/Component;
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "res"    # I
    .param p3, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {p3, p2, v2}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->getNinePatchBitmap(Lcom/sonymobile/home/resources/ResourceManager;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "backplateBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-direct {v1, p1, v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 98
    .local v1, "backplateComponent":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v1, p4}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p5, p6}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 100
    return-object v1
.end method


# virtual methods
.method public setEditModeBackplateEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_1

    .line 110
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mIsEditModeBackplateEnabled:Z

    if-eq p1, v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 116
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mIsEditModeBackplateEnabled:Z

    .line 119
    :cond_1
    return-void

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBackplateSize(FF)V
    .locals 1
    .param p1, "backplateWidth"    # F
    .param p2, "backplateHeight"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mDefaultBackplate:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPageView;->mEditModeBackplate:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 134
    :cond_1
    return-void
.end method
