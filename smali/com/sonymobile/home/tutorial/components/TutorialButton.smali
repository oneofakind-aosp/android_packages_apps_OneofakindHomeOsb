.class public Lcom/sonymobile/home/tutorial/components/TutorialButton;
.super Lcom/sonymobile/flix/components/Component;
.source "TutorialButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;
    }
.end annotation


# instance fields
.field private final mButtonArea:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

.field private final mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

.field private final mContainer:Lcom/sonymobile/flix/components/Rectangle;

.field private mCurrentAnimation:Lcom/sonymobile/flix/util/Animation;

.field private final mLabel:Lcom/sonymobile/flix/components/Label;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 53
    const/high16 v0, 0x435c0000    # 220.0f

    const/high16 v2, 0x42820000    # 65.0f

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->setSize(FF)V

    .line 55
    new-instance v0, Lcom/sonymobile/flix/components/Rectangle;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Rectangle;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    const v2, -0x119abf

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Rectangle;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0, v3, v3}, Lcom/sonymobile/flix/components/Rectangle;->setRoundedCorners(FF)V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Rectangle;->setClippingEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Rectangle;->setSizeToParent()V

    .line 62
    new-instance v0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/16 v3, 0xd7

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->setDiameter(I)V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Rectangle;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 67
    new-instance v0, Lcom/sonymobile/flix/components/Label;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Label;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mLabel:Lcom/sonymobile/flix/components/Label;

    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mLabel:Lcom/sonymobile/flix/components/Label;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Label;->setTextSizeSp(F)V

    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Rectangle;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mLabel:Lcom/sonymobile/flix/components/Label;

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 72
    new-instance v0, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;-><init>(Lcom/sonymobile/home/tutorial/components/TutorialButton;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mButtonArea:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mButtonArea:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mButtonArea:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setSizeToParent()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/tutorial/components/TutorialButton;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->animatePress(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->animateRelease()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/tutorial/components/TutorialButton;)Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/tutorial/components/TutorialButton;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method private animatePress(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 91
    const/high16 v0, 0x43570000    # 215.0f

    div-float v4, p1, v0

    .line 92
    .local v4, "newX":F
    const/high16 v0, 0x42700000    # 60.0f

    div-float v5, p2, v0

    .line 94
    .local v5, "newY":F
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mContainer:Lcom/sonymobile/flix/components/Rectangle;

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 96
    new-instance v0, Lcom/sonymobile/home/tutorial/components/TutorialButton$2;

    const-wide/16 v2, 0x2ee

    invoke-direct {v0, p0, v2, v3}, Lcom/sonymobile/home/tutorial/components/TutorialButton$2;-><init>(Lcom/sonymobile/home/tutorial/components/TutorialButton;J)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCurrentAnimation:Lcom/sonymobile/flix/util/Animation;

    .line 103
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCurrentAnimation:Lcom/sonymobile/flix/util/Animation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 104
    return-void
.end method

.method private animateRelease()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCurrentAnimation:Lcom/sonymobile/flix/util/Animation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCurrentAnimation:Lcom/sonymobile/flix/util/Animation;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->setDiameter(I)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 111
    return-void
.end method


# virtual methods
.method public addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mButtonArea:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 119
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton;->mLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Label;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method
