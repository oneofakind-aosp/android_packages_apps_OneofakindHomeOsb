.class public Lcom/sonymobile/home/stk/StkManager;
.super Ljava/lang/Object;
.source "StkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/stk/StkManager$State;
    }
.end annotation


# static fields
.field private static final STK_LEGACY_ACTIVITIES:[Ljava/lang/String;


# instance fields
.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mPhoneCount:I

.field private final mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

.field private mState:Lcom/sonymobile/home/stk/StkManager$State;

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.stk.StkLauncherActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.stk.StkLauncherActivity2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/stk/StkManager;->STK_LEGACY_ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Landroid/telephony/TelephonyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mStateLock:Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sonymobile/home/stk/StkManager$State;->UNINITIALIZED:Lcom/sonymobile/home/stk/StkManager$State;

    iput-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mState:Lcom/sonymobile/home/stk/StkManager$State;

    .line 65
    iput-object p2, p0, Lcom/sonymobile/home/stk/StkManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 66
    new-instance v0, Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/ApplicationPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    .line 67
    if-eqz p3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 68
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPhoneCount:I

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPhoneCount:I

    goto :goto_0
.end method

.method private isInitialized()Z
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sonymobile/home/stk/StkManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mState:Lcom/sonymobile/home/stk/StkManager$State;

    sget-object v2, Lcom/sonymobile/home/stk/StkManager$State;->INITIALIZED:Lcom/sonymobile/home/stk/StkManager$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isStkSetUpMenuEnabled()Z
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ApplicationPreferenceManager;->isStkEnabled()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadPreferences()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/sonymobile/home/stk/StkManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/home/stk/StkManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ApplicationPreferenceManager;->read()V

    .line 164
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    sget-object v0, Lcom/sonymobile/home/stk/StkManager$State;->INITIALIZED:Lcom/sonymobile/home/stk/StkManager$State;

    iput-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mState:Lcom/sonymobile/home/stk/StkManager$State;

    .line 167
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    return-void

    .line 164
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 167
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public getSetUpMenuTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "simSlotIndex"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/sonymobile/home/stk/StkManager;->loadPreferences()V

    .line 144
    invoke-direct {p0}, Lcom/sonymobile/home/stk/StkManager;->isStkSetUpMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ApplicationPreferenceManager;->getStkSetupMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 149
    :goto_0
    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSetUpMenuTitle(Lcom/sonymobile/home/data/ActivityItem;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "setUpMenuTitle":Ljava/lang/String;
    const-string v2, "com.android.stk"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    const/4 v1, -0x1

    .line 118
    .local v1, "simSlotIndex":I
    const-string v2, "com.android.stk.StkMain"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/home/stk/StkManager;->mPhoneCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/sonymobile/home/stk/StkManager;->STK_LEGACY_ACTIVITIES:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 125
    :cond_2
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 126
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/stk/StkManager;->getSetUpMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v1    # "simSlotIndex":I
    :cond_3
    return-object v0

    .line 121
    .restart local v1    # "simSlotIndex":I
    :cond_4
    sget-object v2, Lcom/sonymobile/home/stk/StkManager;->STK_LEGACY_ACTIVITIES:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public storeSetUpMenuTitle(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setUpMenuTitle"    # Ljava/lang/String;
    .param p2, "simSlotIndex"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonymobile/home/stk/StkManager;->loadPreferences()V

    .line 85
    iget-object v1, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ApplicationPreferenceManager;->setStkSetupMenuTitle(Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPrefManager:Lcom/sonymobile/home/ApplicationPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ApplicationPreferenceManager;->store()V

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/stk/StkManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    const-string v1, "com.android.stk"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/PackageHandler;->packageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 93
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
