.class public Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;
.super Lcom/sonymobile/flix/components/Component;
.source "SimpleTutorialOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;
    }
.end annotation


# instance fields
.field private final mBackground:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;

.field private mButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

.field private final mIcon:Lcom/sonymobile/flix/components/Image;

.field private final mLabel:Lcom/sonymobile/flix/components/Label;

.field private final mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;ILjava/lang/String;I)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "iconResId"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "bgColorArgb"    # I

    .prologue
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 60
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 64
    new-instance v0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1, p4}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mBackground:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;

    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mBackground:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 68
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1, p2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mIcon:Lcom/sonymobile/flix/components/Image;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 72
    new-instance v0, Lcom/sonymobile/flix/components/Label;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1, p3}, Lcom/sonymobile/flix/components/Label;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Label;->setTextMaxLinesUnlimited()V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Label;->setTextSizeSp(F)V

    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0, v2, v2}, Lcom/sonymobile/flix/components/Label;->setSize(FF)V

    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Label;->setLayoutAlignment(Landroid/text/Layout$Alignment;)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Label;->setLayoutLineSpacing(FF)V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 80
    return-void
.end method

.method private getTextWidthFactor()F
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f070010

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 92
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method


# virtual methods
.method public layout()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->setSizeToParent()V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mBackground:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->setSizeToParent()V

    .line 114
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mIcon:Lcom/sonymobile/flix/components/Image;

    const v5, 0x3e828f5c    # 0.255f

    move v2, v1

    move-object v3, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 115
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    const/4 v2, 0x0

    const v5, 0x3ee66666    # 0.45f

    move-object v3, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    const v5, 0x3f2b851f    # 0.67f

    move v2, v1

    move-object v3, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 120
    :cond_0
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onAddedTo(Lcom/sonymobile/flix/components/Component;)V

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->updateConfiguration()V

    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->layout()V

    .line 87
    return-void
.end method

.method public setTutorialButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mButton:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .line 100
    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->getTextWidthFactor()F

    move-result v0

    .line 104
    .local v0, "widthFactor":F
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mLabel:Lcom/sonymobile/flix/components/Label;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Label;->setTextMaxWidth(F)V

    .line 105
    return-void
.end method
