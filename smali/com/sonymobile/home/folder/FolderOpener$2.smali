.class Lcom/sonymobile/home/folder/FolderOpener$2;
.super Ljava/lang/Object;
.source "FolderOpener.java"

# interfaces
.implements Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderOpener;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Landroid/content/res/Resources;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderOpener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderOpener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # invokes: Lcom/sonymobile/home/folder/FolderOpener;->notifyOnCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->access$900(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;)V

    .line 141
    return-void
.end method

.method public onClose(Z)V
    .locals 2
    .param p1, "isDraggingItem"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # getter for: Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderOpener;->access$000(Lcom/sonymobile/home/folder/FolderOpener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # invokes: Lcom/sonymobile/home/folder/FolderOpener;->notifyOnClosed(Z)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->access$100(Lcom/sonymobile/home/folder/FolderOpener;Z)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # getter for: Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderOpener;->access$200(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->removeFromScene()Z

    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # getter for: Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderOpener;->access$300(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;->removeFromScene()Z

    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # getter for: Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderOpener;->access$400(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/home/folder/OpenFolderModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderModel;->unload()V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/folder/FolderOpener;->mFolderItemView:Lcom/sonymobile/home/presenter/view/FolderItemView;
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->access$502(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/presenter/view/FolderItemView;)Lcom/sonymobile/home/presenter/view/FolderItemView;

    .line 123
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->access$002(Lcom/sonymobile/home/folder/FolderOpener;Z)Z

    .line 124
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # getter for: Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderOpener;->access$600(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # invokes: Lcom/sonymobile/home/folder/FolderOpener;->notifyOnDeletePressed()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderOpener;->access$700(Lcom/sonymobile/home/folder/FolderOpener;)V

    .line 131
    return-void
.end method

.method public onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "moved"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # invokes: Lcom/sonymobile/home/folder/FolderOpener;->notifyOnFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/folder/FolderOpener;->access$1100(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;Z)V

    .line 151
    return-void
.end method

.method public onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "longPressedItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # invokes: Lcom/sonymobile/home/folder/FolderOpener;->notifyOnLongPressed(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->access$1000(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;)V

    .line 146
    return-void
.end method

.method public onUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$2;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    # invokes: Lcom/sonymobile/home/folder/FolderOpener;->notifyOnUninstall(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->access$800(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;)V

    .line 136
    return-void
.end method
