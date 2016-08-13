.class Lcom/sonymobile/home/desktop/Desktop$1;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createUpgradeListener()Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStageAdded()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/tutorial/Tutorial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    new-instance v1, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/Desktop;->access$100(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/Desktop;->access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/Desktop;->access$300(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/home/tutorial/tutorials/UpgradeStageTutorial;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/Stage;Lcom/sonymobile/flix/components/Component;)V

    # setter for: Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->access$002(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/Tutorial;

    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/tutorial/Tutorial;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$1$1;-><init>(Lcom/sonymobile/home/desktop/Desktop$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->setTutorialListener(Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;)V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/tutorial/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->start()V

    goto :goto_0
.end method
