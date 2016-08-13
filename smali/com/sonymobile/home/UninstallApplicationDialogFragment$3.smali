.class Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;
.super Ljava/lang/Object;
.source "UninstallApplicationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/UninstallApplicationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/UninstallApplicationDialogFragment;

.field final synthetic val$actionId:I

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/UninstallApplicationDialogFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->this$0:Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    iput p2, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->val$actionId:I

    iput-object p3, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->this$0:Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    iget v1, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->val$actionId:I

    iget-object v2, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;->val$appName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonymobile/home/AppInfoDialogFragment;->getResponseBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 70
    return-void
.end method
