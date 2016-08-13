.class Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;
.super Lcom/sonymobile/home/tutorial/TutorialPage;
.source "UpgradeStageTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->createSecondPage()Lcom/sonymobile/home/tutorial/TutorialPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

.field final synthetic val$nextButtonText:Ljava/lang/String;

.field final synthetic val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

.field final synthetic val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;Lcom/sonymobile/home/tutorial/components/TutorialStage;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->this$0:Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

    iput-object p3, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$nextButtonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    iput-object p5, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    invoke-direct {p0, p2}, Lcom/sonymobile/home/tutorial/TutorialPage;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 140
    invoke-super {p0}, Lcom/sonymobile/home/tutorial/TutorialPage;->layout()V

    .line 141
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->layout()V

    .line 142
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->layout()V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->this$0:Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

    # getter for: Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->mStageView:Lcom/sonymobile/home/stage/StageView;
    invoke-static {v2}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;->access$000(Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;)Lcom/sonymobile/home/stage/StageView;

    move-result-object v3

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 145
    return-void
.end method

.method public onSwitchPageAnimationFinished(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V
    .locals 2
    .param p1, "navigation"    # Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    .prologue
    .line 149
    sget-object v0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$3;->$SwitchMap$com$sonymobile$home$tutorial$TutorialPage$Navigation:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->show()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSwitchPageAnimationStart(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V
    .locals 2
    .param p1, "navigation"    # Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    .prologue
    .line 160
    sget-object v0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$3;->$SwitchMap$com$sonymobile$home$tutorial$TutorialPage$Navigation:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->hide()V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setupNextButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/home/tutorial/components/TutorialButton;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$nextButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->setTutorialButton(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V

    .line 129
    return-void
.end method

.method public updateConfiguration()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/sonymobile/home/tutorial/TutorialPage;->updateConfiguration()V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$overlay:Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;->updateConfiguration()V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial$2;->val$tutorialStage:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->updateConfiguration()V

    .line 136
    return-void
.end method
