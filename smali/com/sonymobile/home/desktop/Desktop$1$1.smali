.class Lcom/sonymobile/home/desktop/Desktop$1$1;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop$1;->onStageAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/Desktop$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop$1;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$1$1;->this$1:Lcom/sonymobile/home/desktop/Desktop$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTutorialFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$1$1;->this$1:Lcom/sonymobile/home/desktop/Desktop$1;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/tutorial/Tutorial;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->setTutorialListener(Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;)V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$1$1;->this$1:Lcom/sonymobile/home/desktop/Desktop$1;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/Desktop$1;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # setter for: Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->access$002(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/Tutorial;

    .line 234
    return-void
.end method

.method public onTutorialStart()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method
