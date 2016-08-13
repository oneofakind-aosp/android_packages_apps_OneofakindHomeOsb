.class public Lcom/sonymobile/home/util/SoftwareUpgradeUtils;
.super Ljava/lang/Object;
.source "SoftwareUpgradeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

.field private static sIsStageUpdated:Z


# instance fields
.field private mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "x2"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->updateStageIfNeeded(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonymobile/home/util/SoftwareUpgradeUtils;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sInstance:Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    invoke-direct {v0}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;-><init>()V

    sput-object v0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sInstance:Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    .line 57
    :cond_0
    sget-object v0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sInstance:Lcom/sonymobile/home/util/SoftwareUpgradeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyStageAdded()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    invoke-interface {v0}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;->onStageAdded()V

    .line 89
    :cond_0
    return-void
.end method

.method public static registerForUpgrades(Landroid/content/Context;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "model"    # Lcom/sonymobile/home/model/Model;
    .param p2, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p3, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 128
    new-instance v0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;-><init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/model/Model;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private static updateStageIfNeeded(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    const/4 v5, 0x0

    .line 99
    sget-boolean v3, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sIsStageUpdated:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sonymobile/home/stage/StageModel;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 101
    .local v1, "moveDesktopItemsToStage":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsToPutOnStage()Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "itemsToPutOnStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p2, v0}, Lcom/sonymobile/home/stage/StageModel;->addItems(Ljava/util/List;)Ljava/util/List;

    .line 104
    invoke-virtual {p2}, Lcom/sonymobile/home/stage/StageModel;->syncItems()V

    .line 106
    :cond_0
    const-string v3, "cust_shared_prefs"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 108
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "stage_added_during_upgrade"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    const-class v4, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    monitor-enter v4

    .line 110
    :try_start_0
    sget-object v3, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sInstance:Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    if-eqz v3, :cond_1

    .line 112
    sget-object v3, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sInstance:Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    invoke-direct {v3}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->notifyStageAdded()V

    .line 114
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->sIsStageUpdated:Z

    .line 117
    .end local v0    # "itemsToPutOnStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    .end local v1    # "moveDesktopItemsToStage":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 114
    .restart local v0    # "itemsToPutOnStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    .restart local v1    # "moveDesktopItemsToStage":Z
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public removeSoftwareUpgradeListener(Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    if-ne v0, p1, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    .line 80
    :cond_0
    return-void
.end method

.method public setSoftwareUpgradeListener(Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    .line 69
    return-void
.end method
