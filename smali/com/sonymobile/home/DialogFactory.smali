.class public Lcom/sonymobile/home/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/DialogFactory$Action;
    }
.end annotation


# direct methods
.method public static showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "dialogFragment"    # Landroid/app/DialogFragment;

    .prologue
    .line 127
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->getActiveInstance()Lcom/sonymobile/home/HomeFragment;

    move-result-object v1

    .line 128
    .local v1, "homeFragment":Lcom/sonymobile/home/HomeFragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->canShowDialogs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 131
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 132
    invoke-virtual {p1, v0, p0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 135
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_0
    return-void
.end method
