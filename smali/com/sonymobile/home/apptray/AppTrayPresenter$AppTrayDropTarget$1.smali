.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 478
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->inTransferMode()Z
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$2200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Z

    move-result v1

    .line 481
    .local v1, "ourTransfer":Z
    if-nez v1, :cond_0

    .line 527
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v0

    .line 485
    .local v0, "currentPage":I
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayView;->getPageCount()I

    move-result v2

    .line 490
    .local v2, "pageCount":I
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchToNextPage:Z
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$2300(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 493
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    .line 494
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v5, v5, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v5}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 526
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mMinPageSwitchDuration:I
    invoke-static {v5}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$2700(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 495
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->isPageEmpty(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->addPage()I

    move-result v3

    .line 500
    .local v3, "pageIndex":I
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 503
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_1

    .line 506
    .end local v3    # "pageIndex":I
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->isPageEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v0, :cond_4

    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_4

    .line 511
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$2500(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    move-result-object v4

    const/4 v5, 0x1

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V
    invoke-static {v4, v5}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V

    .line 514
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    new-instance v6, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;

    invoke-direct {v6, p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;I)V

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_1

    .line 523
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v4, v4, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto/16 :goto_1
.end method
