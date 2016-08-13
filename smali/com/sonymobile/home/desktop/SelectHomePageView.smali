.class public Lcom/sonymobile/home/desktop/SelectHomePageView;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;
.source "SelectHomePageView.java"


# instance fields
.field private mHomePageSelectedBitmap:Landroid/graphics/Bitmap;

.field private mHomePageUnselectedBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/sonymobile/flix/components/ButtonListener;

.field private mSelectAsHomePage:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Z)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "selectedAsHomePage"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 43
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0, p2}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getBitmap(Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    const v1, 0x7f0f0037

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setId(I)V

    .line 46
    const-string v1, "SelectHomePage"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setName(Ljava/lang/String;)V

    .line 47
    iput-boolean p2, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mSelectAsHomePage:Z

    .line 48
    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setDescription(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setPivotPoint(FF)V

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getReleasedImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/flix/components/Image;->setPivotPoint(FF)V

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getPressedImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/flix/components/Image;->setPivotPoint(FF)V

    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getButton()Lcom/sonymobile/flix/components/Button;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/flix/components/Button;->setPivotPoint(FF)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setKeepUpdatedTransformMatrix(Z)V

    .line 57
    return-void
.end method

.method private getBitmap(Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "selected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageSelectedBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 98
    const v1, 0x7f0200a0

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageSelectedBitmap:Landroid/graphics/Bitmap;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageSelectedBitmap:Landroid/graphics/Bitmap;

    .line 110
    :goto_0
    return-object v0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageUnselectedBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 104
    const v1, 0x7f02009f

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageUnselectedBitmap:Landroid/graphics/Bitmap;

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageUnselectedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;->onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V

    .line 70
    iput-object v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageSelectedBitmap:Landroid/graphics/Bitmap;

    .line 71
    iput-object v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mHomePageUnselectedBitmap:Landroid/graphics/Bitmap;

    .line 72
    return-void
.end method

.method public selectAsHomePage(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mSelectAsHomePage:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mSelectAsHomePage:Z

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getBitmap(Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/SelectHomePageView;->removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/desktop/SelectHomePageView;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    .line 65
    return-void
.end method
