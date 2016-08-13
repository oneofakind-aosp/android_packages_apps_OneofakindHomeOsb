.class Lcom/sonymobile/home/NonUninstallableDialogFragment$1;
.super Ljava/lang/Object;
.source "NonUninstallableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/NonUninstallableDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/NonUninstallableDialogFragment;

.field final synthetic val$actionId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/NonUninstallableDialogFragment;I)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/home/NonUninstallableDialogFragment$1;->this$0:Lcom/sonymobile/home/NonUninstallableDialogFragment;

    iput p2, p0, Lcom/sonymobile/home/NonUninstallableDialogFragment$1;->val$actionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/NonUninstallableDialogFragment$1;->this$0:Lcom/sonymobile/home/NonUninstallableDialogFragment;

    iget v1, p0, Lcom/sonymobile/home/NonUninstallableDialogFragment$1;->val$actionId:I

    invoke-static {v2, v2}, Lcom/sonymobile/home/AppInfoDialogFragment;->getResponseBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 49
    return-void
.end method
