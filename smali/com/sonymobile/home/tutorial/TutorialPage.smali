.class public Lcom/sonymobile/home/tutorial/TutorialPage;
.super Lcom/sonymobile/flix/components/Component;
.source "TutorialPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;,
        Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

.field private final mNextButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/TutorialPage;->prepareForDrawing()V

    .line 47
    new-instance v0, Lcom/sonymobile/home/tutorial/components/TutorialButton;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mNextButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mNextButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    new-instance v1, Lcom/sonymobile/home/tutorial/TutorialPage$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/tutorial/TutorialPage$1;-><init>(Lcom/sonymobile/home/tutorial/TutorialPage;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/tutorial/TutorialPage;)Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/TutorialPage;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    return-object v0
.end method


# virtual methods
.method public layout()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/TutorialPage;->setSizeToParent()V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mNextButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->setupNextButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V

    .line 94
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onAddedTo(Lcom/sonymobile/flix/components/Component;)V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mNextButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->hasChild(Lcom/sonymobile/flix/components/Component;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mNextButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onSwitchPageAnimationFinished(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V
    .locals 0
    .param p1, "navigation"    # Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    .prologue
    .line 114
    return-void
.end method

.method public onSwitchPageAnimationStart(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V
    .locals 0
    .param p1, "navigation"    # Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    .prologue
    .line 106
    return-void
.end method

.method public setTutorialPageListener(Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/TutorialPage;->mListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    .line 85
    return-void
.end method

.method public setupNextButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V
    .locals 6
    .param p1, "button"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 75
    move-object v0, p1

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 76
    return-void
.end method

.method public updateConfiguration()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
