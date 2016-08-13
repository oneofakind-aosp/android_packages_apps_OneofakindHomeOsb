.class public Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "DeleteUnloadableAppDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;
    .locals 3
    .param p0, "actionId"    # I
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 29
    new-instance v1, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;-><init>()V

    .line 30
    .local v1, "fragmentDialog":Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "actionId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v2, "appLabel"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "applicationPackageName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "user"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "actionId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "actionId":I
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "appLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "applicationPackageName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 47
    .local v3, "user":Landroid/os/UserHandle;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080094

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08004f

    new-instance v6, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;

    invoke-direct {v6, p0, v2, v3, v0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;-><init>(Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08004a

    new-instance v6, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$1;-><init>(Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
