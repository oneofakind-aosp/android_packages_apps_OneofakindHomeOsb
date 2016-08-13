.class public Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "CannotCustomizeDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
