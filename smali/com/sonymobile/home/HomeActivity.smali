.class public Lcom/sonymobile/home/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;


# static fields
.field public static sDebugStartTime:J


# instance fields
.field private mCurrentConfiguration:Landroid/content/res/Configuration;

.field private mHomeFragment:Lcom/sonymobile/home/HomeFragment;

.field private mPermissionManager:Lcom/sonymobile/home/permissions/PermissionManager;

.field private mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->setEnabled(Z)V

    .line 59
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->disableTouchNotEnabled()V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/HomeActivity;)Lcom/sonymobile/home/HomeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    return-object v0
.end method

.method private hasConfigChanged(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "configHasChanged":Z
    invoke-static {}, Lcom/sonymobile/home/HomeConfigStateHandler;->hasConfigChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    if-eqz p1, :cond_0

    .line 150
    const-string v3, "instance_state_configuration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 153
    .local v1, "previousConfiguration":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    .line 154
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 156
    .local v2, "previousLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private replaceCurrentHomeFragment()Lcom/sonymobile/home/HomeFragment;
    .locals 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 121
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 122
    .local v3, "replaceTransaction":Landroid/app/FragmentTransaction;
    const-string v4, "HomeFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeFragment;

    .line 124
    .local v0, "currentHomeFragment":Lcom/sonymobile/home/HomeFragment;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment;->setRemoved()V

    .line 127
    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 130
    :cond_0
    new-instance v2, Lcom/sonymobile/home/HomeFragment;

    invoke-direct {v2}, Lcom/sonymobile/home/HomeFragment;-><init>()V

    .line 131
    .local v2, "newHomeFragment":Lcom/sonymobile/home/HomeFragment;
    const-string v4, "HomeFragment"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 133
    return-object v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 349
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/HomeFragment;->handleActivityResult(IILandroid/content/Intent;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment;->onBackButtonPressed()V

    .line 193
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sput-wide v6, Lcom/sonymobile/home/HomeActivity;->sDebugStartTime:J

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v3}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 71
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v3, "HomeFragment"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/HomeFragment;

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    .line 72
    new-instance v3, Lcom/sonymobile/home/HomeActivity$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/HomeActivity$1;-><init>(Lcom/sonymobile/home/HomeActivity;)V

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 82
    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v5, p0, Lcom/sonymobile/home/HomeActivity;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 84
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 86
    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v3}, Lcom/sonymobile/home/HomeFragment;->getShouldRecreateFragment()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 88
    .local v1, "shouldRecreateFragment":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/HomeActivity;->hasConfigChanged(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_4

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/HomeFragment;->setShouldRecreateFragment(Z)V

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/HomeActivity;->replaceCurrentHomeFragment()Lcom/sonymobile/home/HomeFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->updateAllAsync()V

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 111
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 112
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/permissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/permissions/PermissionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mPermissionManager:Lcom/sonymobile/home/permissions/PermissionManager;

    .line 117
    return-void

    .end local v1    # "shouldRecreateFragment":Z
    .end local v2    # "window":Landroid/view/Window;
    :cond_3
    move v1, v4

    .line 86
    goto :goto_0

    .line 98
    .restart local v1    # "shouldRecreateFragment":Z
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-nez v3, :cond_5

    .line 100
    new-instance v3, Lcom/sonymobile/home/HomeFragment;

    invoke-direct {v3}, Lcom/sonymobile/home/HomeFragment;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    .line 101
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    const-string v5, "HomeFragment"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->updateWallpaperDimensions()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/HomeActivity;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 283
    return-void
.end method

.method public onDialogButtonClicked(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/HomeFragment;->onDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onDialogFragmentCreated(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 1
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/HomeFragment;->onDialogFragmentCreated(Lcom/sonymobile/home/HomeDialogFragment;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onDialogFragmentDestroyed(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 1
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/HomeFragment;->onDialogFragmentDestroyed(Lcom/sonymobile/home/HomeDialogFragment;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 197
    const/16 v2, 0x52

    if-ne p1, v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v2, :cond_1

    .line 199
    iget-object v1, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->onMenuButtonPressed()Z

    move-result v0

    .line 212
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 205
    .local v0, "handled":Z
    if-nez v0, :cond_0

    const/16 v2, 0x54

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    .line 207
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/sonymobile/home/HomeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v1

    .line 209
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, 0x400000

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 173
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    .line 179
    .local v0, "isHomeScreenInFront":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->updateWallpaperDimensions()V

    .line 181
    iget-object v1, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/HomeFragment;->onHomeButtonPressed(Z)V

    .line 184
    .end local v0    # "isHomeScreenInFront":Z
    :cond_0
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 265
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mPermissionManager:Lcom/sonymobile/home/permissions/PermissionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/permissions/PermissionManager;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 359
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    const-string v0, "instance_state_configuration"

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/sonymobile/home/HomeActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v1, v2, v0, v2}, Lcom/sonymobile/home/HomeFragment;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 342
    const/4 v0, 0x1

    .line 344
    :cond_0
    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 249
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 273
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/HomeFragment;->setFocused(Z)V

    .line 303
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/HomeFragment;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected updateWallpaperDimensions()V
    .locals 10

    .prologue
    .line 307
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 308
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 309
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 312
    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 313
    .local v3, "maxDim":I
    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 317
    .local v4, "minDim":I
    invoke-static {}, Lcom/sonymobile/home/HomeApplication;->useTabletLayout()Z

    move-result v5

    .line 318
    .local v5, "useTabletLayout":Z
    if-eqz v5, :cond_0

    .line 319
    int-to-float v8, v3

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 320
    .local v7, "width":I
    move v2, v3

    .line 326
    .local v2, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/home/desktop/WallpaperWorker;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/desktop/WallpaperWorker;

    move-result-object v6

    .line 327
    .local v6, "wallpaperWorker":Lcom/sonymobile/home/desktop/WallpaperWorker;
    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/home/desktop/WallpaperWorker;->suggestDesiredDimensionsAsync(II)V

    .line 328
    return-void

    .line 322
    .end local v2    # "height":I
    .end local v6    # "wallpaperWorker":Lcom/sonymobile/home/desktop/WallpaperWorker;
    .end local v7    # "width":I
    :cond_0
    mul-int/lit8 v7, v4, 0x2

    .line 323
    .restart local v7    # "width":I
    move v2, v3

    .restart local v2    # "height":I
    goto :goto_0
.end method
