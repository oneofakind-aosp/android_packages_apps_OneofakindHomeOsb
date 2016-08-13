.class Lcom/sonymobile/home/stage/StagePresenter$1;
.super Ljava/lang/Object;
.source "StagePresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/StagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StagePresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StagePresenter;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 5
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    .line 169
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 170
    .local v0, "comp":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 172
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 177
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StagePresenter;->access$000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/stage/StageModel;->addItemInNextAvailablePosition(Lcom/sonymobile/home/data/Item;)V

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    const/4 v3, 0x0

    # setter for: Lcom/sonymobile/home/stage/StagePresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2, v3}, Lcom/sonymobile/home/stage/StagePresenter;->access$102(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 184
    return-void

    .line 179
    :cond_0
    const-string v2, "StagePresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " couldn\'t be added back to the model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTransferCompleted(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 8
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "event"    # Lcom/sonymobile/home/transfer/DropEvent;

    .prologue
    .line 137
    iget-boolean v2, p2, Lcom/sonymobile/home/transfer/DropEvent;->isLocal:Z

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    const/4 v3, 0x0

    # setter for: Lcom/sonymobile/home/stage/StagePresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2, v3}, Lcom/sonymobile/home/stage/StagePresenter;->access$102(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 165
    return-void

    .line 146
    :cond_1
    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 148
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "itemDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StagePresenter;->access$000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/stage/StageModel;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    .line 152
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/StagePresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ItemRemoved"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    iget v5, v5, Lcom/sonymobile/home/data/ItemLocation;->position:I

    int-to-long v6, v5

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 160
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter$1;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v2}, Lcom/sonymobile/home/stage/StagePresenter;->access$000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/stage/StageModel;->updateModel(Ljava/util/List;)V

    goto :goto_0
.end method
