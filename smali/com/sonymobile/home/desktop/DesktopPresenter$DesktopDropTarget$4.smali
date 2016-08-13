.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;
.super Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

.field final synthetic val$isLocal:Z

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-boolean p3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$isLocal:Z

    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 8
    .param p1, "folder"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v6, 0x1

    .line 797
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 799
    .local v1, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$isLocal:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$item:Lcom/sonymobile/home/data/Item;

    if-eqz v2, :cond_1

    .line 800
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 804
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isAutoPackEnabled()Z
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z

    move-result v3

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V
    invoke-static {v2, v3, v6}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;ZZ)V

    .line 806
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->updateModel(Ljava/util/List;)V

    .line 809
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v2, v6, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 821
    :goto_0
    instance-of v2, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v2

    check-cast p1, Lcom/sonymobile/home/data/FolderItem;

    .end local p1    # "folder":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I

    move-result v0

    .line 824
    .local v0, "numOfItemsInFolder":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppAddedToFolder"

    const-string v4, ""

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 830
    .end local v0    # "numOfItemsInFolder":I
    :cond_0
    return-void

    .line 812
    .restart local p1    # "folder":Lcom/sonymobile/home/data/Item;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isAutoPackEnabled()Z
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z

    move-result v3

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V
    invoke-static {v2, v3, v6}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;ZZ)V

    .line 815
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopAdapter;->notifyContentChanged()V

    .line 818
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v2, v6, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    goto :goto_0
.end method
