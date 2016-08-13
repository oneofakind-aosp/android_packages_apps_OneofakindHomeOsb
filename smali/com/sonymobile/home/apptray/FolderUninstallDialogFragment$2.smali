.class Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$2;
.super Ljava/lang/Object;
.source "FolderUninstallDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$2;->this$0:Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v1, p0, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment$2;->this$0:Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v2

    # invokes: Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;->access$000(Lcom/sonymobile/home/apptray/FolderUninstallDialogFragment;ILandroid/os/Bundle;)V

    .line 42
    return-void
.end method
