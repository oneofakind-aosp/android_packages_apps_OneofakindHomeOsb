.class public Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;
.super Lcom/sonymobile/home/presenter/view/PageIndicatorView;
.source "DesktopPageIndicatorView.java"


# instance fields
.field private final mDeselectedHomepage:Lcom/sonymobile/flix/components/Image;

.field private mHomepageIndex:I

.field private final mSelectedHomepage:Lcom/sonymobile/flix/components/Image;

.field private mShowHomepage:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resIdDeselected"    # I
    .param p3, "resIdSelected"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;-><init>(Lcom/sonymobile/flix/components/Scene;II)V

    .line 19
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mShowHomepage:Z

    .line 30
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    const v1, 0x7f020083

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mDeselectedHomepage:Lcom/sonymobile/flix/components/Image;

    .line 31
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    const v1, 0x7f020084

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mSelectedHomepage:Lcom/sonymobile/flix/components/Image;

    .line 32
    return-void
.end method

.method private addHomepageIcon()V
    .locals 4

    .prologue
    .line 53
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Image;

    .line 56
    .local v1, "selectedImage":Lcom/sonymobile/flix/components/Image;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mSelectedHomepage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Image;

    .line 58
    .local v0, "deselectedImage":Lcom/sonymobile/flix/components/Image;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mDeselectedHomepage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    .end local v0    # "deselectedImage":Lcom/sonymobile/flix/components/Image;
    .end local v1    # "selectedImage":Lcom/sonymobile/flix/components/Image;
    :cond_0
    return-void
.end method

.method private removeHomepageIcon()V
    .locals 4

    .prologue
    .line 63
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mSelected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Image;

    .line 67
    .local v1, "selectedImage":Lcom/sonymobile/flix/components/Image;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mSelectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mDeselected:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Image;

    .line 69
    .local v0, "deselectedImage":Lcom/sonymobile/flix/components/Image;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mDeselectedTemplate:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    .end local v0    # "deselectedImage":Lcom/sonymobile/flix/components/Image;
    .end local v1    # "selectedImage":Lcom/sonymobile/flix/components/Image;
    :cond_0
    return-void
.end method


# virtual methods
.method public setHomepageIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mShowHomepage:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->removeHomepageIcon()V

    .line 81
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->addHomepageIcon()V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mHomepageIndex:I

    goto :goto_0
.end method

.method public setNbrPages(I)Z
    .locals 1
    .param p1, "nbrPages"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setNbrPages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->mShowHomepage:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->addHomepageIcon()V

    .line 97
    :cond_0
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
