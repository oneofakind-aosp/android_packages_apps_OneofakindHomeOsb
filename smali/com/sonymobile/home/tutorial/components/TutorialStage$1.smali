.class Lcom/sonymobile/home/tutorial/components/TutorialStage$1;
.super Ljava/lang/Object;
.source "TutorialStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/components/TutorialStage;->layout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/components/TutorialStage;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStageViewCopy:Lcom/sonymobile/flix/components/Image;
    invoke-static {v2}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$000(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 101
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    new-instance v2, Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v3}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$100(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v4}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$200(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageView;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    # setter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStageViewCopy:Lcom/sonymobile/flix/components/Image;
    invoke-static {v0, v2}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$002(Lcom/sonymobile/home/tutorial/components/TutorialStage;Lcom/sonymobile/flix/components/Image;)Lcom/sonymobile/flix/components/Image;

    .line 102
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStageViewCopy:Lcom/sonymobile/flix/components/Image;
    invoke-static {v2}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$000(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 103
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStageViewCopy:Lcom/sonymobile/flix/components/Image;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$000(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$300(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setDescendantAlpha(F)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # getter for: Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$300(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;->this$0:Lcom/sonymobile/home/tutorial/components/TutorialStage;

    # invokes: Lcom/sonymobile/home/tutorial/components/TutorialStage;->positionPlaceHolders()V
    invoke-static {v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->access$400(Lcom/sonymobile/home/tutorial/components/TutorialStage;)V

    .line 108
    return-void
.end method
