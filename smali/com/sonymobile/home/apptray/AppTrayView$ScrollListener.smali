.class Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;
.super Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;
.source "AppTrayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field mCurrentPage:I

.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/apptray/AppTrayView;)V
    .locals 1

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;-><init>()V

    .line 561
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->mCurrentPage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/apptray/AppTrayView;Lcom/sonymobile/home/apptray/AppTrayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;
    .param p2, "x1"    # Lcom/sonymobile/home/apptray/AppTrayView$1;

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayView;)V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 1
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayView;->mScrollPosition:F
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->access$600(Lcom/sonymobile/home/apptray/AppTrayView;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->setScrollPosition(F)V

    .line 576
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayView;->updateFromTouch()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->access$700(Lcom/sonymobile/home/apptray/AppTrayView;)V

    .line 578
    :cond_0
    return-void
.end method

.method public onMoveStarted(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayView;->notifyInteractionStart()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->access$300(Lcom/sonymobile/home/apptray/AppTrayView;)V

    .line 568
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->access$500(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayView;->access$400(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 569
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->mCurrentPage:I

    .line 570
    return-void
.end method

.method public onStop(F)V
    .locals 7
    .param p1, "position"    # F

    .prologue
    .line 582
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayView;->notifyInteractionEnd()V
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayView;->access$800(Lcom/sonymobile/home/apptray/AppTrayView;)V

    .line 584
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayView;->access$900(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 585
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v1

    .line 586
    .local v1, "currentPage":I
    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->mCurrentPage:I

    if-eq v1, v2, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    const/16 v2, 0x4000

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayView;->access$1000(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v6}, Lcom/sonymobile/home/apptray/AppTrayView;->getPageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 599
    :cond_0
    iput v1, p0, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;->mCurrentPage:I

    .line 600
    return-void
.end method
