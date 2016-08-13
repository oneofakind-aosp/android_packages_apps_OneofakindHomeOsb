.class public Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;
.super Lcom/sonymobile/home/tutorial/Tutorial;
.source "UpgradeStageTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$3;
    }
.end annotation


# instance fields
.field private final mBackgroundColor:I

.field private final mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field private final mStage:Lcom/sonymobile/home/stage/Stage;

.field private final mStageView:Lcom/sonymobile/home/stage/StageView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/Stage;Lcom/sonymobile/flix/components/Component;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "stage"    # Lcom/sonymobile/home/stage/Stage;
    .param p3, "toAddAfter"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/home/tutorial/Tutorial;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;)V

    .line 43
    iget-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 44
    iget-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v3, 0x7f0e0064

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mBackgroundColor:I

    .line 46
    iput-object p2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mStage:Lcom/sonymobile/home/stage/Stage;

    .line 47
    invoke-virtual {p2}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mStageView:Lcom/sonymobile/home/stage/StageView;

    .line 49
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->createFirstPage()Lcom/sonymobile/home/tutorial/TutorialPage;

    move-result-object v0

    .line 50
    .local v0, "firstPage":Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->addTutorialPage(Lcom/sonymobile/home/tutorial/TutorialPage;)V

    .line 52
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->createSecondPage()Lcom/sonymobile/home/tutorial/TutorialPage;

    move-result-object v1

    .line 53
    .local v1, "secondPage":Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->addTutorialPage(Lcom/sonymobile/home/tutorial/TutorialPage;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;)Lcom/sonymobile/home/stage/StageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mStageView:Lcom/sonymobile/home/stage/StageView;

    return-object v0
.end method

.method private createFirstPage()Lcom/sonymobile/home/tutorial/TutorialPage;
    .locals 8

    .prologue
    .line 63
    iget-object v5, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-virtual {v5}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 64
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0800a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "message":Ljava/lang/String;
    const v5, 0x7f08004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "nextButtonText":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    iget-object v5, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v6, 0x7f02013e

    iget v7, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mBackgroundColor:I

    invoke-direct {v2, v5, v6, v0, v7}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;-><init>(Lcom/sonymobile/flix/components/Scene;ILjava/lang/String;I)V

    .line 72
    .local v2, "overlay":Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;
    new-instance v3, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;

    iget-object v5, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v3, p0, v5, v1, v2}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;-><init>(Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;)V

    .line 95
    .local v3, "page":Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-virtual {v3, v2}, Lcom/sonymobile/home/tutorial/TutorialPage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 97
    return-object v3
.end method

.method private createSecondPage()Lcom/sonymobile/home/tutorial/TutorialPage;
    .locals 9

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 110
    .local v7, "res":Landroid/content/res/Resources;
    const v1, 0x7f0800f4

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "message":Ljava/lang/String;
    const v1, 0x7f08004f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "nextButtonText":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f02013e

    iget v8, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mBackgroundColor:I

    invoke-direct {v4, v1, v2, v6, v8}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;-><init>(Lcom/sonymobile/flix/components/Scene;ILjava/lang/String;I)V

    .line 118
    .local v4, "overlay":Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;
    new-instance v5, Lcom/sonymobile/home/tutorial/components/TutorialStage;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-direct {v5, v1, v2}, Lcom/sonymobile/home/tutorial/components/TutorialStage;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/Stage;)V

    .line 119
    .local v5, "tutorialStage":Lcom/sonymobile/home/tutorial/components/TutorialStage;
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->setDescendantAlpha(F)V

    .line 122
    new-instance v0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;-><init>(Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;Lcom/sonymobile/home/tutorial/components/TutorialStage;)V

    .line 171
    .local v0, "page":Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-virtual {v0, v4}, Lcom/sonymobile/home/tutorial/TutorialPage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 172
    invoke-virtual {v0, v5}, Lcom/sonymobile/home/tutorial/TutorialPage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 174
    return-object v0
.end method
