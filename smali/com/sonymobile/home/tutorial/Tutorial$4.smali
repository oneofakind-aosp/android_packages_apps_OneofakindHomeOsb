.class Lcom/sonymobile/home/tutorial/Tutorial$4;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/Tutorial;->finishTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/Tutorial;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/Tutorial;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->access$300(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/TutorialPage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/TutorialPage;->setTutorialPageListener(Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;)V

    .line 350
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->access$200(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-static {v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$300(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/TutorialPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # setter for: Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z
    invoke-static {v0, v2}, Lcom/sonymobile/home/tutorial/Tutorial;->access$002(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z

    .line 352
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialFinished:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$402(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z

    .line 353
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # setter for: Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialInProgress:Z
    invoke-static {v0, v2}, Lcom/sonymobile/home/tutorial/Tutorial;->access$502(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z

    .line 354
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    iget-object v0, v0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;
    invoke-static {v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$200(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 355
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialListener:Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->access$600(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;->onTutorialFinished()V

    .line 356
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$4;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$002(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z

    .line 345
    return-void
.end method
