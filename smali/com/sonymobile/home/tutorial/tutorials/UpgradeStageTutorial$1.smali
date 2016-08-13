.class Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;
.super Lcom/sonymobile/home/tutorial/TutorialPage;
.source "UpgradeStageTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->createFirstPage()Lcom/sonymobile/home/tutorial/TutorialPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

.field final synthetic val$nextButtonText:Ljava/lang/String;

.field final synthetic val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->this$0:Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

    iput-object p3, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->val$nextButtonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-direct {p0, p2}, Lcom/sonymobile/home/tutorial/TutorialPage;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/sonymobile/home/tutorial/TutorialPage;->layout()V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->layout()V

    .line 91
    return-void
.end method

.method public setupNextButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->val$nextButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->setTutorialButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V

    .line 79
    return-void
.end method

.method public updateConfiguration()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/sonymobile/home/tutorial/TutorialPage;->updateConfiguration()V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$1;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->updateConfiguration()V

    .line 85
    return-void
.end method
