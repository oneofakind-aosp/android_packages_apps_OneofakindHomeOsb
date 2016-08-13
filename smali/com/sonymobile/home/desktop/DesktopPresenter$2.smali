.class Lcom/sonymobile/home/desktop/DesktopPresenter$2;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 8
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    .line 285
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 288
    .local v0, "comp":Lcom/sonymobile/flix/components/Component;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 291
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    .line 292
    .local v3, "itemToPutBack":Lcom/sonymobile/home/data/Item;
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->reserveLocationAndPackItems(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/grid/GridRect;

    move-result-object v1

    .line 293
    .local v1, "freeSlot":Lcom/sonymobile/grid/GridRect;
    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    iget-object v4, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v4, v1}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 295
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    .line 303
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    const/4 v5, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v4, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 304
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopAdapter;->clearPickup()V

    .line 305
    return-void

    .line 297
    :cond_0
    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    iget-object v2, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 298
    .local v2, "grid":Lcom/sonymobile/grid/GridRect;
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    iget v5, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v6, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget v7, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemAtFirstVacantLocation(Lcom/sonymobile/home/data/Item;III)Z

    goto :goto_0
.end method

.method public onTransferCompleted(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 8
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "event"    # Lcom/sonymobile/home/transfer/DropEvent;

    .prologue
    const-wide/16 v6, 0x0

    .line 310
    iget-boolean v3, p2, Lcom/sonymobile/home/transfer/DropEvent;->isLocal:Z

    if-nez v3, :cond_2

    .line 318
    if-eqz p1, :cond_2

    .line 319
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 320
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "itemDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    instance-of v3, v3, Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v3, :cond_0

    .line 323
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 325
    .local v2, "transferableItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->remove()V

    .line 328
    .end local v2    # "transferableItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    .line 330
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->updateModel(Ljava/util/List;)V

    .line 334
    instance-of v3, v0, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/sonymobile/home/data/ShortcutItem;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v3, :cond_3

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ItemRemoved"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 349
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v1    # "itemDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v3, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 350
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopAdapter;->clearPickup()V

    .line 351
    return-void

    .line 340
    .restart local v0    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v1    # "itemDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_3
    instance-of v3, v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v3, :cond_2

    .line 341
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$2;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WidgetRemoved"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
