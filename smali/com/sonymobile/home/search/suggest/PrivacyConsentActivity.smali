.class public Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;
.super Landroid/app/Activity;
.source "PrivacyConsentActivity.java"

# interfaces
.implements Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->getUserConsentIfNecessary(Z)V

    return-void
.end method

.method private doFinish(Z)V
    .locals 1
    .param p1, "privacyAccepted"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 106
    .local v0, "result":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->finish()V

    .line 108
    return-void

    .line 105
    .end local v0    # "result":I
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private getUserConsentIfNecessary(Z)V
    .locals 1
    .param p1, "privacyAccepted"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->doFinish(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->showWelcomeFragment()V

    goto :goto_0
.end method

.method private initOrientation()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_requested_orientation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->setRequestedOrientation(I)V

    .line 49
    :cond_0
    return-void
.end method

.method private loadPrivacyStatus()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;-><init>(Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method

.method private setPrivacyAccepted()V
    .locals 4

    .prologue
    .line 127
    invoke-static {p0}, Lcom/sonymobile/home/search/SearchActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_privacy_accepted"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    return-void
.end method

.method private showWelcomeFragment()V
    .locals 6

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 81
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-class v4, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 88
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    invoke-static {}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->newInstance()Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    move-result-object v3

    .line 91
    .local v3, "welcomeScreenFragment":Lcom/sonymobile/home/permissions/WelcomeScreenFragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 92
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v4, 0x1020002

    const-class v5, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 94
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v3    # "welcomeScreenFragment":Lcom/sonymobile/home/permissions/WelcomeScreenFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->setResult(I)V

    .line 114
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->finish()V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->initOrientation()V

    .line 38
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->loadPrivacyStatus()V

    .line 39
    return-void
.end method

.method public onWelcomeScreenFinished(Z)V
    .locals 0
    .param p1, "accepted"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->setPrivacyAccepted()V

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->doFinish(Z)V

    .line 124
    return-void
.end method
