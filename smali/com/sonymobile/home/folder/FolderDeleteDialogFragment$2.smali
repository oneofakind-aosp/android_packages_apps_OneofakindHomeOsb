.class Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$2;
.super Ljava/lang/Object;
.source "FolderDeleteDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$2;->this$0:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$2;->this$0:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->mIsListenerNotified:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->access$002(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;Z)Z

    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$2;->this$0:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->notifyDialogButtonClicked(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->access$100(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;Z)V

    .line 53
    return-void
.end method
