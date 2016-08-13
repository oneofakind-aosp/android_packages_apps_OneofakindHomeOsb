.class public Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;
.super Landroid/preference/PreferenceFragment;
.source "PageTransitionPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageTransitionFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
    }
.end annotation


# instance fields
.field private mCurrentPageTransition:Ljava/lang/String;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 49
    sget-object v0, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mCurrentPageTransition:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private addPageTransitionPreference(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
    .locals 6
    .param p1, "pageTransition"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->name()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "key":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    invoke-virtual {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->getAnimationResId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->getTitleResId()I

    move-result v3

    iget-object v5, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mCurrentPageTransition:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;-><init>(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 124
    .local v0, "pageTransitionPreference":Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
    iget-object v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 125
    return-void
.end method

.method private onPageTransitionSelectionChanged(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "selectedPreference"    # Landroid/preference/Preference;

    .prologue
    .line 91
    instance-of v2, p1, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    if-eqz v2, :cond_1

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    .line 96
    .local v1, "pageTransitionPreference":Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x1

    # invokes: Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->preferenceSelectionChanged(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->access$000(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;Z)V

    .line 93
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/4 v2, 0x0

    # invokes: Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->preferenceSelectionChanged(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->access$000(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;Z)V

    goto :goto_1

    .line 103
    .end local v0    # "i":I
    .end local v1    # "pageTransitionPreference":Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
    :cond_1
    return-void
.end method

.method private populatePageTransitions()V
    .locals 7

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "user_settings_page_transition"

    sget-object v6, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v6}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mCurrentPageTransition:Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 114
    invoke-static {}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->values()[Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 115
    .local v3, "pageTransition":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-direct {p0, v3}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->addPageTransitionPreference(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "pageTransition":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 62
    iget-object v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 63
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mCurrentPageTransition:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_settings_page_transition"

    iget-object v2, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->mCurrentPageTransition:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    invoke-direct {p0, p2}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->onPageTransitionSelectionChanged(Landroid/preference/Preference;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;->populatePageTransitions()V

    .line 70
    return-void
.end method
