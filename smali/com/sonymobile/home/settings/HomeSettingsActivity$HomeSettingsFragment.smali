.class public Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "HomeSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/HomeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeSettingsFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->startLocationActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->showPrivacyDisclaimerDialog()V

    return-void
.end method

.method private addVersionString()V
    .locals 6

    .prologue
    .line 168
    const-string v4, "user_settings_about_version"

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 169
    .local v3, "versionPreference":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 171
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 173
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 174
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createHomeLicenseDialog()V
    .locals 5

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 447
    .local v1, "manager":Landroid/app/FragmentManager;
    const-string v4, "license_dialog"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 448
    .local v2, "previousDialog":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 449
    new-instance v0, Lcom/sonymobile/home/settings/LicenseDialog;

    invoke-direct {v0}, Lcom/sonymobile/home/settings/LicenseDialog;-><init>()V

    .line 450
    .local v0, "dialog":Lcom/sonymobile/home/settings/LicenseDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 451
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 452
    const-string v4, "license_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/settings/LicenseDialog;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 454
    .end local v0    # "dialog":Lcom/sonymobile/home/settings/LicenseDialog;
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private createHomeModeDialog()V
    .locals 3

    .prologue
    .line 440
    new-instance v0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;-><init>()V

    .line 441
    .local v0, "dialog":Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 442
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_HOME_STYLE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method private enableDeveloperOptions(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 196
    return-void
.end method

.method private initSummary(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 356
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 357
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 358
    .local v1, "pGrp":Landroid/preference/PreferenceGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 359
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->initSummary(Landroid/preference/Preference;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    .end local v1    # "pGrp":Landroid/preference/PreferenceGroup;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->updatePrefSummary(Landroid/preference/Preference;)V

    .line 364
    :cond_1
    return-void
.end method

.method private loadPrivacyStatus()V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;-><init>(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void
.end method

.method private onIconPackRequestFinished(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 347
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 349
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 353
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private onOnlineRecommendationsKeyChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 295
    .local v1, "preference":Landroid/preference/Preference;
    instance-of v2, v1, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 296
    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 299
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->loadPrivacyStatus()V

    .line 304
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPersonalizeRequestFinished(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 267
    if-eqz p1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->setPrivacyAccepted()V

    .line 269
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->startLocationActivity()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v1, "user_settings_personalize_recommendations"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 273
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Landroid/preference/SwitchPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private prepareModelsForModeChange(Z)V
    .locals 5
    .param p1, "automaticModeIsSelected"    # Z

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 458
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 466
    :cond_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/HomeApplication;

    .line 463
    .local v1, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v1}, Lcom/sonymobile/home/HomeApplication;->getDesktopModels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/DesktopModel;

    .line 464
    .local v3, "model":Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-virtual {v3, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->prepareToActivateModel(Z)V

    goto :goto_0
.end method

.method private removeEmptyCategories(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .param p1, "rootGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v4, "preferencesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 397
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v5, v2, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 398
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 399
    .local v3, "prefGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 400
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v3    # "prefGroup":Landroid/preference/PreferenceGroup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 405
    .restart local v2    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 407
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "rootGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 376
    .local v3, "preferenceToRemove":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 378
    .local v0, "didRemovePreference":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-nez v0, :cond_2

    .line 379
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 380
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 381
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v2, p2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v0

    .line 378
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    .end local v0    # "didRemovePreference":Z
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 384
    .restart local v0    # "didRemovePreference":Z
    .restart local v1    # "i":I
    :cond_2
    return v0
.end method

.method private setPrivacyAccepted()V
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/search/SearchActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_privacy_accepted"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    return-void
.end method

.method private showPrivacyDisclaimerDialog()V
    .locals 7

    .prologue
    .line 328
    const v5, 0x7f0800bd

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    .local v1, "message":Ljava/lang/CharSequence;
    const v5, 0x7f0800be

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f0800c9

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "positiveButton":Ljava/lang/String;
    const v5, 0x7f0800cb

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "negativeButton":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v5, v4, v1, v3, v2}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/permissions/ConfirmationDialog;

    move-result-object v0

    .line 334
    .local v0, "dialog":Lcom/sonymobile/home/permissions/ConfirmationDialog;
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 335
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private startLocationActivity()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sonymobile/home/permissions/LocationConsentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private updatePrefSummary(Landroid/preference/Preference;)V
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 410
    instance-of v2, p1, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 425
    :cond_1
    :goto_1
    return-void

    .line 411
    :sswitch_0
    const-string v4, "user_settings_icon_size_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "user_settings_allow_auto_rotation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    move-object v0, p1

    .line 413
    check-cast v0, Landroid/preference/ListPreference;

    .line 414
    .local v0, "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 415
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 416
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        -0x58f77490 -> :sswitch_1
        -0x19e4d9fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 342
    invoke-direct {p0, p2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->onIconPackRequestFinished(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 99
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 100
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    :cond_0
    const v8, 0x7f06000f

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->addPreferencesFromResource(I)V

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 105
    .local v7, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    const-string v8, "user_settings_allow_auto_rotation"

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v4

    .line 112
    .local v4, "isAutomaticDesktopMode":Z
    if-eqz v4, :cond_5

    .line 113
    new-instance v2, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;

    invoke-direct {v2, v1}, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "desktopPreferences":Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
    const-string v8, "user_settings_straight_to_desktop_mode"

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 119
    :goto_0
    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->allowAutoPackingOfItems()Z

    move-result v8

    if-nez v8, :cond_2

    .line 120
    const-string v8, "user_settings_auto_pack_desktop_items"

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 122
    :cond_2
    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->allowHomeModeMenuSetting()Z

    move-result v8

    if-nez v8, :cond_6

    .line 123
    const-string v8, "user_settings_desktop_home_screen_style"

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 134
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->allowOnlineSearchSuggestions(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 135
    const-string v8, "home_settings_app_recommendations"

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 136
    const-string v8, "user_settings_personalize_recommendations"

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 139
    :cond_4
    invoke-direct {p0, v7}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->enableDeveloperOptions(Landroid/preference/PreferenceScreen;)V

    .line 141
    const-string v8, "user_settings_set_icon_pack"

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 142
    .local v6, "pref":Landroid/preference/Preference;
    new-instance v8, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$1;-><init>(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    invoke-direct {p0, v7}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->initSummary(Landroid/preference/Preference;)V

    .line 152
    invoke-direct {p0, v7}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->removeEmptyCategories(Landroid/preference/PreferenceGroup;)V

    .line 154
    const-string v8, "home_settings_page_transition"

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 155
    .local v5, "pageTransitionPreference":Landroid/preference/Preference;
    new-instance v8, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$2;-><init>(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->addVersionString()V

    .line 165
    return-void

    .line 116
    .end local v2    # "desktopPreferences":Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
    .end local v5    # "pageTransitionPreference":Landroid/preference/Preference;
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_5
    new-instance v2, Lcom/sonymobile/home/desktop/ManualDesktopPreferenceManager;

    invoke-direct {v2, v1}, Lcom/sonymobile/home/desktop/ManualDesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    .restart local v2    # "desktopPreferences":Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
    goto :goto_0

    .line 125
    :cond_6
    const-string v8, "user_settings_desktop_home_screen_style"

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 126
    .local v3, "homeModePreference":Landroid/preference/Preference;
    if-eqz v3, :cond_3

    .line 127
    if-eqz v4, :cond_7

    .line 128
    const v8, 0x7f0800af

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 130
    :cond_7
    const v8, 0x7f0800b1

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public onDialogButtonClicked(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 237
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 238
    const-string v5, "button"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 239
    .local v4, "whichButton":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    .line 240
    .local v0, "accept":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->onPersonalizeRequestFinished(Z)V

    .line 254
    .end local v0    # "accept":Z
    .end local v4    # "whichButton":I
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    sget-object v5, Lcom/sonymobile/home/DialogFactory$Action;->SET_HOME_STYLE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v5}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v5

    if-ne p1, v5, :cond_1

    if-eqz p2, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 243
    .local v1, "activity":Landroid/app/Activity;
    const-string v5, "selectedValue"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 244
    .local v2, "automaticModeIsSelected":Z
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v3

    .line 246
    .local v3, "oldAutomaticModeIsSelected":Z
    if-eq v2, v3, :cond_1

    .line 247
    invoke-direct {p0, v2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->prepareModelsForModeChange(Z)V

    .line 248
    const-string v5, "HomeDialog"

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateAutomaticDesktopSetting(ZLjava/lang/String;Landroid/content/Context;)V

    .line 251
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onDialogFragmentCreated(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 259
    return-void
.end method

.method public onDialogFragmentDestroyed(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 264
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 214
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 430
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "key":Ljava/lang/String;
    const-string v1, "user_settings_desktop_home_screen_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->createHomeModeDialog()V

    .line 436
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 433
    :cond_1
    const-string v1, "user_settings_license_information"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->createHomeLicenseDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 201
    const-string v1, "Settings"

    invoke-static {v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->updatePrefSummary(Landroid/preference/Preference;)V

    .line 226
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 233
    :goto_1
    return-void

    .line 226
    :pswitch_0
    const-string v1, "user_settings_personalize_recommendations"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->onOnlineRecommendationsKeyChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x606b8a87
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
