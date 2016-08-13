.class Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderUninstallDialogActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p2, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$1;

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    return-void
.end method


# virtual methods
.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1234
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$5000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->getFolderItem()Lcom/sonymobile/home/data/FolderItem;

    move-result-object v0

    .line 1237
    .local v0, "closedFolderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$5100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 1239
    if-eqz v0, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->moveFolderContentsToAppTray(Lcom/sonymobile/home/data/FolderItem;)V
    invoke-static {v1, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$5200(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/data/FolderItem;)V

    .line 1244
    .end local v0    # "closedFolderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_0
    return-void
.end method
