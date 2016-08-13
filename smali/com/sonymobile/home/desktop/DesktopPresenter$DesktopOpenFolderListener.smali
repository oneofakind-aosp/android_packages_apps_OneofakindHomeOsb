.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopOpenFolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V
    .locals 0

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/desktop/DesktopPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p2, "x1"    # Lcom/sonymobile/home/desktop/DesktopPresenter$1;

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    return-void
.end method


# virtual methods
.method public onCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5400(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;)V

    .line 1523
    return-void
.end method

.method public onFolderClosed(Z)V
    .locals 2
    .param p1, "isDraggingItem"    # Z

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->removeOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 1506
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->enterTransferMode()V

    .line 1509
    :cond_0
    return-void
.end method

.method public onFolderDeletePressed()V
    .locals 0

    .prologue
    .line 1513
    return-void
.end method

.method public onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "moved"    # Z

    .prologue
    .line 1532
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5500(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->isInUninstallmode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderUninstallMode(Ljava/lang/String;)I

    move-result v0

    .line 1534
    .local v0, "mode":I
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderOpener;->setMode(I)V

    .line 1536
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method

.method public onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->isItemRemovable(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateTopComponentsVisibility(ZZ)V

    .line 1528
    return-void
.end method

.method public onUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5300(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;)V

    .line 1518
    return-void
.end method
