.class Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;
.super Ljava/lang/Object;
.source "NonUninstallableAppInfoDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

.field final synthetic val$actionId:I

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->this$0:Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

    iput p2, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->val$actionId:I

    iput-object p3, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->this$0:Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

    iget v1, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->val$actionId:I

    iget-object v2, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$2;->val$appName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonymobile/home/AppInfoDialogFragment;->getResponseBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 68
    return-void
.end method
