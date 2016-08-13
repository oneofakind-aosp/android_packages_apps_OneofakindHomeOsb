.class Lcom/sonymobile/home/folder/OpenFolderPresenter$2;
.super Ljava/lang/Object;
.source "OpenFolderPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 3
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    .line 406
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 409
    .local v0, "comp":Lcom/sonymobile/flix/components/Component;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 411
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->clearPickup()V

    .line 413
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)Z

    .line 416
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1, v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$602(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 417
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyContentChanged()V

    .line 419
    :cond_0
    return-void
.end method

.method public onTransferCompleted(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 4
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "dropEvent"    # Lcom/sonymobile/home/transfer/DropEvent;

    .prologue
    .line 423
    iget-boolean v0, p2, Lcom/sonymobile/home/transfer/DropEvent;->isLocal:Z

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$602(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 443
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->clearPickup()V

    .line 444
    return-void

    .line 425
    :cond_1
    iget-boolean v0, p2, Lcom/sonymobile/home/transfer/DropEvent;->targetPersistent:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 428
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->removeHoles()Ljava/util/List;

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsPersistentMode:Z
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 439
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->removeHoles()Ljava/util/List;

    goto :goto_0
.end method
