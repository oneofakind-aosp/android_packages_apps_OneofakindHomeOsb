.class Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$2;
.super Ljava/lang/Object;
.source "AppTraySortModeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$2;->this$0:Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 55
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v0

    .line 56
    .local v0, "actionId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "selectedRadioButtonIndex"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$2;->this$0:Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;

    # invokes: Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V
    invoke-static {v2, v0, v1}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->access$000(Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;ILandroid/os/Bundle;)V

    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 60
    return-void
.end method
