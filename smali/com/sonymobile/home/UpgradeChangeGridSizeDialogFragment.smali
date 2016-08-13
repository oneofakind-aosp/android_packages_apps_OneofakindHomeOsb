.class public Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "UpgradeChangeGridSizeDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;-><init>()V

    .line 28
    .local v0, "fragmentDialog":Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 33
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004f

    new-instance v3, Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment$1;-><init>(Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 43
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    return-object v0
.end method
