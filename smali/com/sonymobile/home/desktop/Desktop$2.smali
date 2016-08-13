.class Lcom/sonymobile/home/desktop/Desktop$2;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createStage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditModeEnter()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 278
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v2

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$400(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->isItemRemovable(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$500(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/transfer/TransferView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateTopComponentsVisibility(ZZ)V

    .line 282
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 278
    goto :goto_0
.end method

.method public onEditModeExit()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onLongPressItem(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$400(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->isItemRemovable(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$600(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$500(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/transfer/TransferView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/transfer/TransferView;->isCancellable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->show(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public onTransferModeEnter()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->enterTransferMode()V

    .line 294
    return-void
.end method

.method public onTransferModeExit()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$2;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->exitTransferMode()V

    .line 299
    return-void
.end method
