.class public Lcom/sonymobile/home/DeletePageDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "DeletePageDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/sonymobile/home/DeletePageDialogFragment;
    .locals 3
    .param p0, "actionId"    # I
    .param p1, "pageIndex"    # I

    .prologue
    .line 28
    new-instance v1, Lcom/sonymobile/home/DeletePageDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/home/DeletePageDialogFragment;-><init>()V

    .line 29
    .local v1, "fragmentDialog":Lcom/sonymobile/home/DeletePageDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "actionId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v2, "pageIndex"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/DeletePageDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/home/DeletePageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "actionId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "actionId":I
    invoke-virtual {p0}, Lcom/sonymobile/home/DeletePageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pageIndex"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "pageIndex":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/DeletePageDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080095

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08004c

    new-instance v4, Lcom/sonymobile/home/DeletePageDialogFragment$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/sonymobile/home/DeletePageDialogFragment$2;-><init>(Lcom/sonymobile/home/DeletePageDialogFragment;II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08004a

    new-instance v4, Lcom/sonymobile/home/DeletePageDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/home/DeletePageDialogFragment$1;-><init>(Lcom/sonymobile/home/DeletePageDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
