.class Lcom/sonymobile/home/stage/StageDropTarget$3;
.super Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
.source "StageDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/stage/StageDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StageDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$localDrag:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-boolean p3, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$localDrag:Z

    iput-object p4, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p5, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 9
    .param p1, "folder"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v8, 0x1

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v1, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    check-cast p1, Lcom/sonymobile/home/data/FolderItem;

    .end local p1    # "folder":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, p1}, Lcom/sonymobile/home/stage/StageModel;->getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I

    move-result v0

    .line 341
    .local v0, "numOfItemsInFolder":I
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/StagePresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppAddedToFolder"

    const-string v4, ""

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 345
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$localDrag:Z

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/home/stage/StageModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 351
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V
    invoke-static {v2, v3}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V

    .line 353
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/stage/StageModel;->updateModel(Ljava/util/List;)V

    .line 356
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v2, v8, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 367
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V
    invoke-static {v2, v8}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V

    .line 362
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1000(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/StageAdapter;->notifyContentChanged()V

    .line 365
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget$3;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v2, v8, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    goto :goto_0
.end method
