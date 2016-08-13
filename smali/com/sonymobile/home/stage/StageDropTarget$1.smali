.class Lcom/sonymobile/home/stage/StageDropTarget$1;
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

.field final synthetic val$overlappedItem:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    iput-boolean p4, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$localDrag:Z

    iput-object p5, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p6, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v4, 0x1

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v0, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 279
    iget-boolean v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$localDrag:Z

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-boolean v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$localDrag:Z

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/stage/StageModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/stage/StageModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 289
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/stage/StageModel;->addItem(Lcom/sonymobile/home/data/Item;)Z

    .line 291
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    const/4 v2, 0x0

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V

    .line 293
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1200(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonymobile/home/stage/StageView;->enableItemAnimations(Z)V

    .line 295
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/stage/StageModel;->updateModel(Ljava/util/List;)V

    .line 297
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v1, v4, v2}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 299
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StagePresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderCreated"

    const-string v3, ""

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    iget v4, v4, Lcom/sonymobile/home/data/ItemLocation;->position:I

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 302
    return-void
.end method
