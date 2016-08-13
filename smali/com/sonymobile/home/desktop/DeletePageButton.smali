.class public Lcom/sonymobile/home/desktop/DeletePageButton;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;
.source "DeletePageButton.java"


# instance fields
.field private mListener:Lcom/sonymobile/flix/components/ButtonListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 21
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02005d

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setBitmap(I)V

    .line 23
    const v1, 0x7f0f001a

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setId(I)V

    .line 24
    const-string v1, "DeleteHomePage"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v2, v2}, Lcom/sonymobile/home/desktop/DeletePageButton;->setPivotPoint(FF)V

    .line 29
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DeletePageButton;->getReleasedImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/sonymobile/flix/components/Image;->setPivotPoint(FF)V

    .line 30
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DeletePageButton;->getPressedImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/sonymobile/flix/components/Image;->setPivotPoint(FF)V

    .line 31
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DeletePageButton;->getButton()Lcom/sonymobile/flix/components/Button;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/sonymobile/flix/components/Button;->setPivotPoint(FF)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setKeepUpdatedTransformMatrix(Z)V

    .line 36
    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setDescription(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public setListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DeletePageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DeletePageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DeletePageButton;->removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DeletePageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DeletePageButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DeletePageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    .line 52
    :cond_1
    return-void
.end method
