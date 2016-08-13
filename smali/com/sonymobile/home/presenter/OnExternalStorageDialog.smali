.class public Lcom/sonymobile/home/presenter/OnExternalStorageDialog;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "OnExternalStorageDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonymobile/home/presenter/OnExternalStorageDialog;
    .locals 3
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Lcom/sonymobile/home/presenter/OnExternalStorageDialog;

    invoke-direct {v1}, Lcom/sonymobile/home/presenter/OnExternalStorageDialog;-><init>()V

    .line 30
    .local v1, "fragmentDialog":Lcom/sonymobile/home/presenter/OnExternalStorageDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "appLabel"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/presenter/OnExternalStorageDialog;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/OnExternalStorageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "appLabel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "appLabel":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/OnExternalStorageDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    const v3, 0x7f080070

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 43
    new-instance v2, Lcom/sonymobile/home/presenter/OnExternalStorageDialog$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/presenter/OnExternalStorageDialog$1;-><init>(Lcom/sonymobile/home/presenter/OnExternalStorageDialog;)V

    .line 49
    .local v2, "dismissDialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    const v3, 0x7f08004f

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
