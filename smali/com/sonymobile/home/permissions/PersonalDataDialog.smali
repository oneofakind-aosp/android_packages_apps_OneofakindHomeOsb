.class public Lcom/sonymobile/home/permissions/PersonalDataDialog;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "PersonalDataDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonymobile/home/permissions/PersonalDataDialog;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/sonymobile/home/permissions/PersonalDataDialog;

    invoke-direct {v0}, Lcom/sonymobile/home/permissions/PersonalDataDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 31
    const v4, 0x7f0800c4

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/permissions/PersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "title":Ljava/lang/String;
    const v4, 0x7f08004f

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/permissions/PersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "okButton":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/PersonalDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030025

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 38
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0c00b0

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
