.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppTrayOpenFolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p2, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$1;

    .prologue
    .line 1189
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    return-void
.end method


# virtual methods
.method public onCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4600(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/data/Item;)V

    .line 1214
    return-void
.end method

.method public onFolderClosed(Z)V
    .locals 2
    .param p1, "isDraggingItem"    # Z

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->removeOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 1195
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->enterTransferMode()V

    .line 1198
    :cond_0
    return-void
.end method

.method public onFolderDeletePressed()V
    .locals 2

    .prologue
    .line 1202
    invoke-static {}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;->newInstance()Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;

    move-result-object v0

    .line 1203
    .local v0, "folderUninstallDialogFragment":Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 1204
    return-void
.end method

.method public onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "moved"    # Z

    .prologue
    .line 1222
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4700(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->isInUninstallmode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderUninstallMode(Ljava/lang/String;)I

    move-result v0

    .line 1224
    .local v0, "mode":I
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderOpener;->setMode(I)V

    .line 1226
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method

.method public onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1218
    return-void
.end method

.method public onUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4500(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/data/Item;)V

    .line 1209
    return-void
.end method
