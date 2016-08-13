.class Lcom/sonymobile/home/stage/StageDropTarget$5;
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

.field final synthetic val$newLocation:Lcom/sonymobile/home/data/ItemLocation;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$newLocation:Lcom/sonymobile/home/data/ItemLocation;

    iput-object p4, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p5, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 7
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v6, 0x1

    .line 428
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$newLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 431
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StageModel;->addItemToStage(Lcom/sonymobile/home/data/Item;)Z

    .line 433
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V
    invoke-static {v0, v6}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V

    .line 435
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemAdded"

    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-static {v2}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 441
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$5;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v0, v6, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 442
    return-void
.end method
