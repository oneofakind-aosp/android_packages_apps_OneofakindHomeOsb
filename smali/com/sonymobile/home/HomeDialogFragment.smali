.class public abstract Lcom/sonymobile/home/HomeDialogFragment;
.super Landroid/app/DialogFragment;
.source "HomeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    return-void
.end method

.method private getEventListener()Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    iget-object v1, p0, Lcom/sonymobile/home/HomeDialogFragment;->mListener:Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    if-eqz v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sonymobile/home/HomeDialogFragment;->mListener:Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .end local v0    # "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    check-cast v0, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    .restart local v0    # "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    check-cast v0, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    .restart local v0    # "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 94
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 97
    :cond_0
    return-void
.end method

.method protected notifyDialogButtonClicked(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getEventListener()Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    move-result-object v0

    .line 133
    .local v0, "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;->onDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getEventListener()Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    move-result-object v0

    .line 74
    .local v0, "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0}, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;->onDialogFragmentCreated(Lcom/sonymobile/home/HomeDialogFragment;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;->getEventListener()Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;

    move-result-object v0

    .line 82
    .local v0, "listener":Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0}, Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;->onDialogFragmentDestroyed(Lcom/sonymobile/home/HomeDialogFragment;)V

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 87
    return-void
.end method
