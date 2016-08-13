.class public Lcom/sonymobile/home/iconpacks/IconPacksActivity;
.super Landroid/preference/PreferenceActivity;
.source "IconPacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;,
        Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 271
    return-void
.end method

.method private showIconPackPreviewScreen(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v1, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    invoke-direct {v1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;-><init>()V

    .line 92
    .local v1, "iconPacksPreviewFragment":Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    return-void
.end method

.method private showIconPackScreen()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;-><init>()V

    .line 87
    .local v0, "iconPacksFragment":Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 88
    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 118
    .local v0, "currentFragment":Landroid/app/Fragment;
    instance-of v3, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    if-eqz v3, :cond_0

    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 135
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 122
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 124
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 125
    const-string v3, "icon_pack_package_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_1
    if-eqz v2, :cond_2

    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->showIconPackScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 64
    .local v1, "currentFragment":Landroid/app/Fragment;
    if-nez v1, :cond_1

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 68
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 69
    const-string v4, "icon_pack_package_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 73
    invoke-direct {p0, v3}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->showIconPackPreviewScreen(Ljava/lang/String;)V

    .line 79
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 81
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_2
    return-void

    .line 75
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->showIconPackScreen()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity;->onBackPressed()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
