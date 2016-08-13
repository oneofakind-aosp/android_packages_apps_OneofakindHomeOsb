.class Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;
.super Ljava/lang/Object;
.source "OpenFolderPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ModelObserver;
.implements Lcom/sonymobile/home/transfer/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFolderDropTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;
    }
.end annotation


# instance fields
.field final mCoordsOver:[F

.field private mDragPosition:I

.field private final mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

.field private final mPostman:Landroid/view/View;

.field mViewHeight:F

.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;-><init>(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;Lcom/sonymobile/home/folder/OpenFolderPresenter$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    .line 460
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mCoordsOver:[F

    .line 508
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mPostman:Landroid/view/View;

    .line 509
    return-void
.end method

.method static synthetic access$802(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;
    .param p1, "x1"    # I

    .prologue
    .line 448
    iput p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mPostman:Landroid/view/View;

    return-object v0
.end method

.method private handleMoveLeftZone(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->cancel()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1400(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;)V

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 662
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    add-int/lit8 v1, p1, -0x1

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->updateHole(I)Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1500(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;I)Z

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->updateHole(I)Z
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1500(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;I)Z

    goto :goto_0
.end method

.method private handleMoveRightZone(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->cancel()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1400(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;)V

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 641
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->updateHole(I)Z
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1500(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;I)Z

    goto :goto_0

    .line 642
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->isRightEdge(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    add-int/lit8 v1, p1, 0x1

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->updateHole(I)Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1500(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;I)Z

    goto :goto_0
.end method

.method private inTransferMode()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sonymobile/home/transfer/TransferHandler;->isOurTransfer(Lcom/sonymobile/home/transfer/DropTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRightEdge(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 624
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderView;->getNumberOfColumns()I

    move-result v0

    .line 625
    .local v0, "cols":I
    rem-int v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 5
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "actionSet"    # I
    .param p3, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p4, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    .prologue
    const/4 v4, 0x1

    .line 540
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/OpenFolderView;->enableItemAnimations(Z)V

    .line 541
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v2

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 542
    .local v1, "moved":Z
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    const/4 v3, 0x0

    # setter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2, v3}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$602(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 544
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->removeHoles()Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/folder/OpenFolderModel;->updateModelAndItems(Ljava/util/List;)V

    .line 546
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyContentChanged()V

    .line 547
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyDrop(Lcom/sonymobile/home/data/Item;Z)V
    invoke-static {v2, v3, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1200(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/data/Item;Z)V

    .line 550
    new-instance v2, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v4, v3, v4}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    invoke-interface {p4, v4, v2}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 552
    return-void
.end method

.method public enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z
    .locals 1
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->getGridHeight()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mViewHeight:F

    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method public exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V
    .locals 2
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->cancel()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1400(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;)V

    .line 614
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->close(Z)V

    .line 615
    return-void
.end method

.method public onModelChanged()V
    .locals 2

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->inTransferMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->getItems()Ljava/util/List;

    move-result-object v0

    .line 517
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/transfer/TransferHandler;->cancelTransfer()V

    .line 522
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 528
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V
    .locals 11
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    .line 563
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTargetView:Lcom/sonymobile/flix/components/Component;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    iget v5, p3, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    iget v6, p3, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    iget-object v7, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mCoordsOver:[F

    invoke-static {v4, v5, v6, v7}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 568
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mCoordsOver:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mViewHeight:F

    div-float/2addr v5, v10

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 569
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/folder/OpenFolderView;->scrollContent(I)V

    .line 574
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mCoordsOver:[F

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/folder/OpenFolderView;->getItemIndexAtScreenLocation([F)I

    move-result v1

    .line 576
    .local v1, "index":I
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 577
    .local v3, "maxPosition":I
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 579
    if-ltz v1, :cond_6

    if-gt v1, v3, :cond_6

    .line 580
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    .line 582
    .local v2, "intersectedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iput v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    .line 584
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 586
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mCoordsOver:[F

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/folder/OpenFolderView;->getItemViewFraction([F)F

    move-result v0

    .line 588
    .local v0, "fraction":F
    cmpg-float v4, v0, v9

    if-gtz v4, :cond_3

    .line 589
    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    invoke-direct {p0, v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->handleMoveLeftZone(I)V

    .line 609
    .end local v0    # "fraction":F
    .end local v2    # "intersectedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    :goto_1
    return-void

    .line 570
    .end local v1    # "index":I
    .end local v3    # "maxPosition":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mCoordsOver:[F

    aget v4, v4, v8

    const/high16 v5, 0x40e00000    # 7.0f

    iget v6, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mViewHeight:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 571
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sonymobile/home/folder/OpenFolderView;->scrollContent(I)V

    goto :goto_0

    .line 590
    .restart local v0    # "fraction":F
    .restart local v1    # "index":I
    .restart local v2    # "intersectedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .restart local v3    # "maxPosition":I
    :cond_3
    cmpl-float v4, v0, v9

    if-lez v4, :cond_4

    .line 591
    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    invoke-direct {p0, v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->handleMoveRightZone(I)V

    goto :goto_1

    .line 593
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->cancel()V
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1400(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;)V

    goto :goto_1

    .line 597
    .end local v0    # "fraction":F
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->cancel()V
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1400(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;)V

    .line 598
    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    iget-object v5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v5}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemCount()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->setHole(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->makeRoom(ILcom/sonymobile/home/data/Item;)V

    goto :goto_1

    .line 606
    .end local v2    # "intersectedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_6
    iput v3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I

    .line 607
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mHoleMaker:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->updateHole(I)Z
    invoke-static {v4, v3}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->access$1500(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;I)Z

    goto :goto_1
.end method
