.class Lcom/sonymobile/home/tutorial/Tutorial$3;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/Tutorial;->switchPage(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/Tutorial;

.field final synthetic val$fromPage:Lcom/sonymobile/home/tutorial/TutorialPage;

.field final synthetic val$toPage:Lcom/sonymobile/home/tutorial/TutorialPage;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/Tutorial;Lcom/sonymobile/home/tutorial/TutorialPage;Lcom/sonymobile/home/tutorial/TutorialPage;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    iput-object p2, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$fromPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    iput-object p3, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$toPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$fromPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    sget-object v1, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->FROM:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/TutorialPage;->onSwitchPageAnimationFinished(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$toPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    sget-object v1, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->TO:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/TutorialPage;->onSwitchPageAnimationFinished(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    # getter for: Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->access$200(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$fromPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 260
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$002(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z

    .line 261
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->access$002(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z

    .line 251
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$fromPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    sget-object v1, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->FROM:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/TutorialPage;->onSwitchPageAnimationStart(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V

    .line 252
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial$3;->val$toPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    sget-object v1, Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;->TO:Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/TutorialPage;->onSwitchPageAnimationStart(Lcom/sonymobile/home/tutorial/TutorialPage$Navigation;)V

    .line 253
    return-void
.end method
