.class Lcom/sonymobile/home/tutorial/components/TutorialButton$1;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
.source "TutorialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/components/TutorialButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/components/TutorialButton;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onPress(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    # invokes: Lcom/sonymobile/home/tutorial/components/TutorialButton;->animatePress(FF)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->access$000(Lcom/sonymobile/home/tutorial/components/TutorialButton;FF)V

    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 77
    return-void
.end method

.method public onRelease(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    # invokes: Lcom/sonymobile/home/tutorial/components/TutorialButton;->animateRelease()V
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->access$100(Lcom/sonymobile/home/tutorial/components/TutorialButton;)V

    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$1;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 83
    return-void
.end method
