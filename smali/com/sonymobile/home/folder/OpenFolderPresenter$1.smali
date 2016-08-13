.class Lcom/sonymobile/home/folder/OpenFolderPresenter$1;
.super Ljava/lang/Object;
.source "OpenFolderPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsOpen:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$102(Lcom/sonymobile/home/folder/OpenFolderPresenter;Z)Z

    .line 161
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyClose()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$200(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V

    .line 162
    return-void
.end method

.method public onDeleteClicked()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyDelete()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$400(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V

    .line 174
    return-void
.end method

.method public onLabelClicked()V
    .locals 4

    .prologue
    .line 166
    sget-object v0, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    const v2, 0x7f08009f

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;
    invoke-static {v3}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/OpenFolderModel;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->newInstance(IILjava/lang/String;)Lcom/sonymobile/home/folder/FolderNameDialogFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 169
    return-void
.end method

.method public onOpen()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
