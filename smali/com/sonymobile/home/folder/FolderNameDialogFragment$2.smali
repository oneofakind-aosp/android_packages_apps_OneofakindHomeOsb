.class Lcom/sonymobile/home/folder/FolderNameDialogFragment$2;
.super Ljava/lang/Object;
.source "FolderNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderNameDialogFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment$2;->this$0:Lcom/sonymobile/home/folder/FolderNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment$2;->this$0:Lcom/sonymobile/home/folder/FolderNameDialogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment$2;->this$0:Lcom/sonymobile/home/folder/FolderNameDialogFragment;

    # invokes: Lcom/sonymobile/home/folder/FolderNameDialogFragment;->notifyNameChange()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->access$000(Lcom/sonymobile/home/folder/FolderNameDialogFragment;)V

    .line 62
    return-void
.end method
