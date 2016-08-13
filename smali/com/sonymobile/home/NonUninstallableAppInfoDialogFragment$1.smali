.class Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$1;
.super Ljava/lang/Object;
.source "NonUninstallableAppInfoDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$1;->this$0:Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

    iput-object p2, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$1;->this$0:Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;->dismiss()V

    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$1;->this$0:Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/home/AppInfoDialogFragment;->getAppInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
