.class public Lcom/sonymobile/home/NonUninstallableDialogFragment;
.super Lcom/sonymobile/home/AppInfoDialogFragment;
.source "NonUninstallableDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/home/AppInfoDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/sonymobile/home/NonUninstallableDialogFragment;
    .locals 2
    .param p0, "actionId"    # I
    .param p1, "appLabel"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Lcom/sonymobile/home/NonUninstallableDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/NonUninstallableDialogFragment;-><init>()V

    .line 31
    .local v0, "fragmentDialog":Lcom/sonymobile/home/NonUninstallableDialogFragment;
    invoke-static {p0, p1, v1, v1}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->getDialogArgumentsBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "actionId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "actionId":I
    invoke-virtual {p0}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appLabel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "appLabel":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08004f

    new-instance v4, Lcom/sonymobile/home/NonUninstallableDialogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/sonymobile/home/NonUninstallableDialogFragment$1;-><init>(Lcom/sonymobile/home/NonUninstallableDialogFragment;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
