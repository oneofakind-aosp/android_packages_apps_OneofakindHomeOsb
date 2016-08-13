.class public Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "FolderDeleteDialogFragment.java"

# interfaces
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;
    }
.end annotation


# instance fields
.field private mFolderDeleteDialogListener:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;

.field private mIsListenerNotified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mIsListenerNotified:Z

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mIsListenerNotified:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->notifyDialogButtonClicked(Z)V

    return-void
.end method

.method public static newInstance(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;Lcom/sonymobile/home/DialogHandler;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    .locals 2
    .param p0, "folderDeleteDialogListener"    # Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;
    .param p1, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;

    .prologue
    .line 33
    new-instance v0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;-><init>()V

    .line 34
    .local v0, "folderDeleteDialogFragment":Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    iput-object p0, v0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mFolderDeleteDialogListener:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;

    .line 35
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 38
    return-object v0
.end method

.method private notifyDialogButtonClicked(Z)V
    .locals 2
    .param p1, "canceled"    # Z

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "cancel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08004c

    new-instance v2, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$2;-><init>(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08004a

    new-instance v2, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$1;-><init>(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mIsListenerNotified:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, v1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->notifyDialogButtonClicked(Z)V

    .line 73
    iput-boolean v1, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mIsListenerNotified:Z

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/home/HomeDialogFragment;->onDestroy()V

    .line 77
    return-void
.end method

.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 81
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, "cancel":Z
    if-eqz p2, :cond_0

    .line 84
    const-string v1, "cancel"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mFolderDeleteDialogListener:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;

    if-eqz v1, :cond_1

    .line 87
    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mFolderDeleteDialogListener:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;

    invoke-interface {v1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;->onCancel()V

    .line 94
    .end local v0    # "cancel":Z
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v0    # "cancel":Z
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mFolderDeleteDialogListener:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;

    invoke-interface {v1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;->onOk()V

    goto :goto_0
.end method
