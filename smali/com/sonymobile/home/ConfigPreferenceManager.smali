.class public Lcom/sonymobile/home/ConfigPreferenceManager;
.super Ljava/lang/Object;
.source "ConfigPreferenceManager.java"


# static fields
.field private static final DEFAULT_CURRENT_GRID:Ljava/lang/String;

.field private static final DEFAULT_WANTED_GRID:Ljava/lang/String;


# instance fields
.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/sonymobile/home/ConfigPreferenceManager;->DEFAULT_WANTED_GRID:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/sonymobile/home/ConfigPreferenceManager;->DEFAULT_CURRENT_GRID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "home_config_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ConfigPreferenceManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method

.method private readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/ConfigPreferenceManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/ConfigPreferenceManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method


# virtual methods
.method public getCurrentGrid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, "current_grid_state"

    sget-object v1, Lcom/sonymobile/home/ConfigPreferenceManager;->DEFAULT_CURRENT_GRID:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/ConfigPreferenceManager;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentGrid(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "current_grid_state"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/ConfigPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setWantedGrid(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "wanted_grid_state"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/ConfigPreferenceManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
