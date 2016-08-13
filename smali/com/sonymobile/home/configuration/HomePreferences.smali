.class public Lcom/sonymobile/home/configuration/HomePreferences;
.super Ljava/lang/Object;
.source "HomePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;
    }
.end annotation


# instance fields
.field private mLoadingDone:Z

.field private final mOnPreferencesLoadedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private volatile mRestoreCustomization:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mOnPreferencesLoadedListeners:Ljava/util/ArrayList;

    .line 36
    const-string v0, "home_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/home/configuration/HomePreferences;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/HomePreferences;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mRestoreCustomization:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/configuration/HomePreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/HomePreferences;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/configuration/HomePreferences;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/HomePreferences;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mLoadingDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/configuration/HomePreferences;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/HomePreferences;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mOnPreferencesLoadedListeners:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOnLoadedListener(Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mLoadingDone:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1, p0}, Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;->onPreferencesLoaded(Lcom/sonymobile/home/configuration/HomePreferences;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mOnPreferencesLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRestoreCustomization()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mRestoreCustomization:Z

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/sonymobile/home/configuration/HomePreferences$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/configuration/HomePreferences$1;-><init>(Lcom/sonymobile/home/configuration/HomePreferences;)V

    .line 60
    .local v0, "prefsLoadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method

.method public setRestoreCustomization(Z)V
    .locals 2
    .param p1, "restore"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mRestoreCustomization:Z

    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "restore_customization"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method

.method public setRestoreCustomizationSync(Z)V
    .locals 2
    .param p1, "restore"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mRestoreCustomization:Z

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "restore_customization"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method
