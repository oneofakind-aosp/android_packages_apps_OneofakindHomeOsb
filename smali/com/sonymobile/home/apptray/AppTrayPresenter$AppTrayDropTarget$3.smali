.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;
.super Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 8
    .param p1, "folder"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v5, 0x1

    .line 805
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 807
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 810
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeHoles()Ljava/util/List;

    move-result-object v0

    .line 811
    .local v0, "newModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 814
    .local v2, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 817
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$3400(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    .line 823
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModelAndItems(Ljava/util/List;Ljava/util/List;)V

    .line 826
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v3, v5, v4}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 841
    .end local v0    # "newModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v2    # "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    instance-of v3, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v3, :cond_0

    .line 842
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v3

    check-cast p1, Lcom/sonymobile/home/data/FolderItem;

    .end local p1    # "folder":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v3, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I

    move-result v1

    .line 844
    .local v1, "numOfItemsInFolder":I
    const-string v3, "Apptray"

    const-string v4, "AppAddedToFolder"

    const-string v5, ""

    int-to-long v6, v1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 849
    .end local v1    # "numOfItemsInFolder":I
    :cond_0
    return-void

    .line 829
    .restart local p1    # "folder":Lcom/sonymobile/home/data/Item;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 832
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$3400(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    .line 835
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 838
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v3, v5, v4}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    goto :goto_0
.end method
