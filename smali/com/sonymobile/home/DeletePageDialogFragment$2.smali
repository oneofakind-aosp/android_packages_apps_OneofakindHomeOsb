.class Lcom/sonymobile/home/DeletePageDialogFragment$2;
.super Ljava/lang/Object;
.source "DeletePageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/DeletePageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/DeletePageDialogFragment;

.field final synthetic val$actionId:I

.field final synthetic val$pageIndex:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/DeletePageDialogFragment;II)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/home/DeletePageDialogFragment$2;->this$0:Lcom/sonymobile/home/DeletePageDialogFragment;

    iput p2, p0, Lcom/sonymobile/home/DeletePageDialogFragment$2;->val$pageIndex:I

    iput p3, p0, Lcom/sonymobile/home/DeletePageDialogFragment$2;->val$actionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "pageIndex"

    iget v2, p0, Lcom/sonymobile/home/DeletePageDialogFragment$2;->val$pageIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-object v1, p0, Lcom/sonymobile/home/DeletePageDialogFragment$2;->this$0:Lcom/sonymobile/home/DeletePageDialogFragment;

    iget v2, p0, Lcom/sonymobile/home/DeletePageDialogFragment$2;->val$actionId:I

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/home/DeletePageDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 51
    return-void
.end method
