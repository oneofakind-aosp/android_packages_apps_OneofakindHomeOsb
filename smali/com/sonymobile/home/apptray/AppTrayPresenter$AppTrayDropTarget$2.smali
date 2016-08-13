.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;
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

.field final synthetic val$isLocal:Z

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$overlappedItem:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    iput-boolean p4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$isLocal:Z

    iput-object p5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 8
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v4, 0x1

    .line 754
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 757
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeHoles()Ljava/util/List;

    move-result-object v0

    .line 758
    .local v0, "newModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 761
    .local v1, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const-string v2, "apptray"

    invoke-virtual {p1, v2}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 765
    iget-boolean v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$isLocal:Z

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    iget-boolean v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$isLocal:Z

    if-eqz v2, :cond_1

    .line 772
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$3400(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    .line 779
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 782
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModelAndItems(Ljava/util/List;Ljava/util/List;)V

    .line 785
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v2, v4, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 787
    const-string v2, "Apptray"

    const-string v3, "FolderCreated"

    const-string v4, ""

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 789
    return-void
.end method
