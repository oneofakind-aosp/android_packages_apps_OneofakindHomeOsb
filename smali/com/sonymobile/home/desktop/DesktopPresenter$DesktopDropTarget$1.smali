.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->prependPageOnPageSwitch()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->appendPageOnPageSwitch()I

    move-result v0

    return v0
.end method

.method private appendPageOnPageSwitch()I
    .locals 2

    .prologue
    .line 602
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->appendPage()I
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2100(Lcom/sonymobile/home/desktop/DesktopPresenter;)I

    move-result v0

    .line 603
    .local v0, "newPage":I
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mRightMostPageAddedOnPageSwitch:I
    invoke-static {v1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2202(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)I

    .line 606
    :cond_0
    return v0
.end method

.method private prependPageOnPageSwitch()I
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->prependPage()I
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2300(Lcom/sonymobile/home/desktop/DesktopPresenter;)I

    move-result v0

    .line 611
    .local v0, "newPage":I
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLeftMostPageAddedOnPageSwitch:I
    invoke-static {v1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2402(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)I

    .line 614
    :cond_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 546
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    invoke-interface {v3, v4}, Lcom/sonymobile/home/transfer/TransferHandler;->isOurTransfer(Lcom/sonymobile/home/transfer/DropTarget;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 548
    .local v2, "ourTransfer":Z
    :goto_0
    if-nez v2, :cond_1

    .line 599
    :goto_1
    return-void

    .line 546
    .end local v2    # "ourTransfer":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 552
    .restart local v2    # "ourTransfer":Z
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 553
    .local v0, "currentPage":I
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;)V

    .line 580
    .local v1, "listener":Lcom/sonymobile/flix/util/Animation$Listener;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLatestPageSwitchForward:Z
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2000(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 583
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 598
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$400(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    move-result-object v3

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-static {v3, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 585
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 586
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->appendPageOnPageSwitch()I

    goto :goto_2

    .line 589
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v3

    if-le v0, v3, :cond_5

    .line 591
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_2

    .line 593
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 594
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;->prependPageOnPageSwitch()I

    goto :goto_2
.end method
