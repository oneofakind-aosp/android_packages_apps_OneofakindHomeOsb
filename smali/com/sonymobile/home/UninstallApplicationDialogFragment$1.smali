.class Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;
.super Ljava/lang/Object;
.source "UninstallApplicationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/UninstallApplicationDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;->this$0:Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    iput-object p2, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;->this$0:Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->dismiss()V

    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;->this$0:Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/home/AppInfoDialogFragment;->getAppInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
