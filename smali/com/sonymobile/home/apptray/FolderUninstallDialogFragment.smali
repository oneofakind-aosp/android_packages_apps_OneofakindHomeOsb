.class public Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "FolderUninstallDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static newInstance()Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08004c

    new-instance v2, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$2;-><init>(Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08004a

    new-instance v2, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$1;-><init>(Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
