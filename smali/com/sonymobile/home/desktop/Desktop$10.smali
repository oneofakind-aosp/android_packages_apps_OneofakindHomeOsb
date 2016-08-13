.class Lcom/sonymobile/home/desktop/Desktop$10;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 1

    .prologue
    .line 851
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/Desktop;->onStart()V

    .line 854
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/Desktop;->onResume()V

    .line 875
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/Desktop;->focusView()Z

    .line 876
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 858
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$500(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/transfer/TransferView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    .line 859
    .local v0, "inTransfer":Z
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1, v3, v3}, Lcom/sonymobile/home/desktop/Desktop;->setAppTrayButtonVisible(ZZ)V

    .line 860
    if-eqz v0, :cond_0

    .line 861
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/Desktop;->access$400(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->isItemRemovable(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/Desktop;->access$500(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/transfer/TransferView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/transfer/TransferView;->isCancellable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateTopComponentsVisibility(ZZ)V

    .line 868
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->exitTransferMode()V

    .line 866
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$10;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateTopComponentsVisibility(ZZ)V

    goto :goto_0
.end method
