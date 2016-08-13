.class Lcom/sonymobile/home/apptray/AppTrayPresenter$1;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private itemExists(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onTransferCanceled(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 4
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 163
    .local v0, "comp":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 165
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearPickup()V

    .line 167
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->itemExists(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->hasOriginalPickupPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)Z

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearOriginalPickupPosition()V

    .line 174
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$102(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 177
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$200(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->close(Z)V

    .line 180
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setVisible(Z)V

    .line 183
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->show(Z)V

    .line 185
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 188
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/apptray/AppTrayView;->endTransferZoom(Z)V

    .line 189
    return-void
.end method

.method public onTransferCompleted(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 4
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "event"    # Lcom/sonymobile/home/transfer/DropEvent;

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->hasOriginalPickupPosition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$102(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 221
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-boolean v1, p2, Lcom/sonymobile/home/transfer/DropEvent;->isLocal:Z

    if-eqz v1, :cond_2

    .line 219
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearOriginalPickupPosition()V

    .line 220
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$102(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    goto :goto_0

    .line 201
    :cond_2
    iget-boolean v1, p2, Lcom/sonymobile/home/transfer/DropEvent;->targetPersistent:Z

    if-eqz v1, :cond_3

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v0, "removeItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearPickup()V

    .line 208
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$102(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 209
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModel(Ljava/util/List;)V

    goto :goto_1

    .line 212
    .end local v0    # "removeItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)Z

    .line 215
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    goto :goto_1
.end method
