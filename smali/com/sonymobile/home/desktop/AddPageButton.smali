.class public Lcom/sonymobile/home/desktop/AddPageButton;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;
.source "AddPageButton.java"


# instance fields
.field private mListener:Lcom/sonymobile/flix/components/ButtonListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 21
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020049

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/AddPageButton;->setBitmap(I)V

    .line 23
    const-string v1, "AddHomePage"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/AddPageButton;->setName(Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/AddPageButton;->setKeepUpdatedTransformMatrix(Z)V

    .line 28
    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/AddPageButton;->setDescription(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public setListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AddPageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AddPageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/AddPageButton;->removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/AddPageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/AddPageButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/home/desktop/AddPageButton;->mListener:Lcom/sonymobile/flix/components/ButtonListener;

    .line 44
    :cond_1
    return-void
.end method
