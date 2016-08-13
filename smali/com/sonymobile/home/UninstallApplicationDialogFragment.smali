.class public Lcom/sonymobile/home/UninstallApplicationDialogFragment;
.super Lcom/sonymobile/home/AppInfoDialogFragment;
.source "UninstallApplicationDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/home/AppInfoDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/UninstallApplicationDialogFragment;
    .locals 2
    .param p0, "actionId"    # I
    .param p1, "appLabel"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;-><init>()V

    .line 39
    .local v0, "fragmentDialog":Lcom/sonymobile/home/UninstallApplicationDialogFragment;
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getDialogArgumentsBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "actionId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "actionId":I
    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appLabel"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "appLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "applicationPackageName"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appName"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 52
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;

    invoke-direct {v7, p0, v5}, Lcom/sonymobile/home/UninstallApplicationDialogFragment$1;-><init>(Lcom/sonymobile/home/UninstallApplicationDialogFragment;Ljava/lang/String;)V

    invoke-static {v6, v2, v4, v7}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->createAppInfoTitle(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "appInfoTitle":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800f6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f08004c

    new-instance v8, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;

    invoke-direct {v8, p0, v0, v5, v3}, Lcom/sonymobile/home/UninstallApplicationDialogFragment$3;-><init>(Lcom/sonymobile/home/UninstallApplicationDialogFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f08004a

    new-instance v8, Lcom/sonymobile/home/UninstallApplicationDialogFragment$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/home/UninstallApplicationDialogFragment$2;-><init>(Lcom/sonymobile/home/UninstallApplicationDialogFragment;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
