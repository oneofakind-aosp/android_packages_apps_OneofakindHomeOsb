.class public Lcom/sonymobile/home/storage/UpgradePreferenceManager;
.super Ljava/lang/Object;
.source "UpgradePreferenceManager.java"


# static fields
.field private static sInstance:Lcom/sonymobile/home/storage/UpgradePreferenceManager;


# instance fields
.field private final mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mForceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPreferenceAddSearchWidget:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPreferenceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mPreferencesRead:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mForceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceAddSearchWidget:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean v1, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferencesRead:Z

    .line 45
    return-void
.end method

.method private checkIfInitialized()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferencesRead:Z

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 153
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonymobile/home/storage/UpgradePreferenceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-class v1, Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->sInstance:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->sInstance:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->sInstance:Lcom/sonymobile/home/storage/UpgradePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public completeAddSearchWidget()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceAddSearchWidget:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    return-void
.end method

.method public forceCompressDesktopItems()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mForceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    return-void
.end method

.method public declared-synchronized read()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferencesRead:Z

    if-nez v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mContext:Landroid/content/Context;

    const-string v4, "home_upgrade_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v4, "compress_desktop_items"

    iget-object v5, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    iget-object v3, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceAddSearchWidget:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v4, "remove_duplicate_searchbar"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SEARCH_BAR_SHARED_PREFERENCES_KEY"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferencesRead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit p0

    return-void

    .restart local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move v1, v2

    .line 72
    goto :goto_0

    .line 65
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setShouldCompressDesktopItems(Z)V
    .locals 3
    .param p1, "newValue"    # Z

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->checkIfInitialized()V

    .line 134
    iget-object v2, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    :cond_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAddSearchWidget()Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->checkIfInitialized()V

    .line 114
    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceAddSearchWidget:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public shouldCompressDesktopItems()Z
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->checkIfInitialized()V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mForceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized store()V
    .locals 5

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->checkIfInitialized()V

    .line 84
    iget-object v2, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "home_upgrade_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "compress_desktop_items"

    iget-object v3, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceCompressDesktopItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v2, "SEARCH_BAR_SHARED_PREFERENCES_KEY"

    iget-object v3, p0, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->mPreferenceAddSearchWidget:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
