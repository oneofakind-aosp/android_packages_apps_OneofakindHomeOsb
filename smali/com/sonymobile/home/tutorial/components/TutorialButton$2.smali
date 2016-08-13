.class Lcom/sonymobile/home/tutorial/components/TutorialButton$2;
.super Lcom/sonymobile/flix/util/Animation;
.source "TutorialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/components/TutorialButton;->animatePress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/components/TutorialButton;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$2;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/flix/util/Animation;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$2;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->access$200(Lcom/sonymobile/home/tutorial/components/TutorialButton;)Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    move-result-object v0

    const/high16 v1, 0x43570000    # 215.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->setDiameter(I)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$2;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialButton;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->access$300(Lcom/sonymobile/home/tutorial/components/TutorialButton;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$2;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialButton;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialButton;->mCircle:Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;
    invoke-static {v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton;->access$200(Lcom/sonymobile/home/tutorial/components/TutorialButton;)Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 101
    return-void
.end method
