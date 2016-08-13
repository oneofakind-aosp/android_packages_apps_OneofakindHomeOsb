.class Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;
.super Ljava/lang/Object;
.source "StagePresenter.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/StagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StageOpenFolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StagePresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/stage/StagePresenter;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/stage/StagePresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;
    .param p2, "x1"    # Lcom/sonymobile/home/stage/StagePresenter$1;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;-><init>(Lcom/sonymobile/home/stage/StagePresenter;)V

    return-void
.end method


# virtual methods
.method public onCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # invokes: Lcom/sonymobile/home/stage/StagePresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->access$600(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/data/Item;)V

    .line 231
    return-void
.end method

.method public onFolderClosed(Z)V
    .locals 2
    .param p1, "isDraggingItem"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StagePresenter;->access$300(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StagePresenter;->access$200(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->removeOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StagePresenter;->access$400(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->enterTransferMode()V

    .line 217
    :cond_0
    return-void
.end method

.method public onFolderDeletePressed()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "moved"    # Z

    .prologue
    .line 239
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StagePresenter;->access$700(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->isInUninstallmode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StagePresenter;->access$000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderUninstallMode(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "mode":I
    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StagePresenter;->access$800(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderOpener;->setMode(I)V

    .line 243
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method

.method public onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 235
    return-void
.end method

.method public onUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # invokes: Lcom/sonymobile/home/stage/StagePresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->access$500(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/data/Item;)V

    .line 226
    return-void
.end method
