.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 565
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopView;->hideScrollBackplate(J)V

    .line 566
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->isExpandBoundsPagesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 569
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isLeftExpandBoundsPage(I)Z
    invoke-static {v1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1300(Lcom/sonymobile/home/desktop/DesktopPresenter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->prependPageOnPageSwitch()I
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->access$1400(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;)I

    .line 574
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    .line 576
    .end local v0    # "pageIndex":I
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mMinPageSwitchDuration:I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$1900(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)I

    move-result v2

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I
    invoke-static {v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$1802(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)I

    .line 577
    return-void

    .line 571
    .restart local v0    # "pageIndex":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isRightExpandBoundsPage(I)Z
    invoke-static {v1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1500(Lcom/sonymobile/home/desktop/DesktopPresenter;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->appendPageOnPageSwitch()I
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->access$1600(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;)I

    goto :goto_0
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->showScrollBackplate()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->hideNudge()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$1200(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V

    .line 561
    return-void
.end method
