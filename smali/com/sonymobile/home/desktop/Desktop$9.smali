.class Lcom/sonymobile/home/desktop/Desktop$9;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createDesktopView(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V
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
    .line 551
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressItem(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isCuiMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->hideCuiMenu()Z

    .line 557
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->showStage(Z)V

    .line 559
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V
    .locals 5
    .param p1, "oldState"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    .param p2, "newState"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 564
    sget-object v1, Lcom/sonymobile/home/desktop/Desktop$12;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    .line 588
    .local v0, "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    sget-object v1, Lcom/sonymobile/home/desktop/Desktop$12;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 621
    :cond_1
    :goto_1
    return-void

    .line 567
    .end local v0    # "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    :pswitch_0
    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p2, v1, :cond_2

    .line 569
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/Desktop;->showStage(Z)V

    .line 570
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v3, v3}, Lcom/sonymobile/home/desktop/Desktop;->setAppTrayButtonVisible(ZZ)V

    .line 571
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$1200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;->setVisible(Z)V

    .line 573
    :cond_2
    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-ne p2, v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v3, v3}, Lcom/sonymobile/home/desktop/Desktop;->setCuiFabVisible(ZZ)V

    goto :goto_0

    .line 579
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v4, v3}, Lcom/sonymobile/home/desktop/Desktop;->setCuiFabVisible(ZZ)V

    goto :goto_0

    .line 591
    .restart local v0    # "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    :pswitch_2
    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p1, v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$1200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;->setVisible(Z)V

    .line 594
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$600(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->hide()V

    .line 595
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/Desktop;->hideStage(Z)V

    .line 596
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v4, v3}, Lcom/sonymobile/home/desktop/Desktop;->setAppTrayButtonVisible(ZZ)V

    .line 597
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 598
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->enterEditMode()V

    goto :goto_1

    .line 604
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$500(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/transfer/TransferView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v1

    if-nez v1, :cond_3

    .line 605
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v3, v3}, Lcom/sonymobile/home/desktop/Desktop;->setCuiFabVisible(ZZ)V

    .line 607
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 608
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->enterEditMode()V

    goto :goto_1

    .line 613
    :pswitch_4
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->exitEditMode()V

    goto :goto_1

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 588
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTransferModeEnter()V
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    .line 626
    .local v0, "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->enterTransferMode()V

    .line 627
    return-void
.end method

.method public onTransferModeExit()V
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$9;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    .line 632
    .local v0, "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->exitTransferMode()V

    .line 633
    return-void
.end method
