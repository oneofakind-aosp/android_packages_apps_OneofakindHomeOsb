.class public Lcom/sonymobile/home/model/PackageHandler;
.super Ljava/lang/Object;
.source "PackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;,
        Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;,
        Lcom/sonymobile/home/model/PackageHandler$AppInfo;,
        Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;,
        Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;,
        Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;,
        Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;,
        Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;,
        Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;,
        Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;,
        Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;,
        Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;,
        Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;,
        Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    }
.end annotation


# instance fields
.field private final mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

.field private mAliases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Lcom/sonymobile/home/model/PackageHandler$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetProviderLoader:Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHomeDisabledAppsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSafeMode:Z

.field private mIsWifiOffloadEnabled:Z

.field private final mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMainUser:Landroid/os/UserHandle;

.field private final mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/ObserverList",
            "<",
            "Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/ObserverList",
            "<",
            "Lcom/sonymobile/home/model/OnPackageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrepareForPackageChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsDisabledAppsBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsDisabledAppsWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemHomeAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSignature:Landroid/content/pm/Signature;

.field private final mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/sonymobile/home/model/UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/sonymobile/home/model/HomeLauncherApps;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "launcherApps"    # Lcom/sonymobile/home/model/HomeLauncherApps;
    .param p4, "advWidgetProviderHelper"    # Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;
    .param p5, "appWidgetProviderLoader"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPrepareForPackageChangeListeners:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {v0}, Lcom/sonymobile/home/util/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;

    .line 182
    new-instance v0, Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {v0}, Lcom/sonymobile/home/util/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;

    .line 185
    new-instance v0, Lcom/sonymobile/home/util/NamingThreadFactory;

    const-string v1, "PackageHandler"

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 191
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 201
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 206
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 212
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAliases:Ljava/util/HashMap;

    .line 286
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    .line 287
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 288
    iput-object p4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    .line 289
    iput-object p5, p0, Lcom/sonymobile/home/model/PackageHandler;->mAppWidgetProviderLoader:Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;

    .line 290
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 293
    iput-object p3, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    .line 294
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mUserManager:Landroid/os/UserManager;

    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;-><init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/HomeLauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 297
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->getSupportedAliases()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAliases:Ljava/util/HashMap;

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainHandler:Landroid/os/Handler;

    .line 300
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsSafeMode:Z

    .line 301
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainUser:Landroid/os/UserHandle;

    .line 302
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->getAllActivities(Landroid/os/UserHandle;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/model/PackageHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Ljava/util/Set;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getUnavailablePackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->getAllInstalledWidgets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->getAllAdvancedWidgets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/model/HomeLauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->checkWifiOffloadPackageExist()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonymobile/home/model/PackageHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->getAllInternetPermissions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->removePackageInfo(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->notifyPrepareForPackageChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getInstalledWidgets(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPrepareForPackageChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->getInstalledAdvancedWidgets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->packageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->packagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->packagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/UserHandle;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/model/PackageHandler;->addPackageInfo(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/model/PackageHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPackageInfo(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local p2, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    .local p3, "advWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1265
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/home/model/PackageHandler;->isDisableableApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 1271
    .local v1, "disableable":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 1272
    .local v3, "info":Landroid/content/pm/LauncherActivityInfo;
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;

    invoke-direct {v0, v3, v1}, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 1273
    .local v0, "appInfo":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v5, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/model/PackageHandler$AppInfo;)V

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1267
    .end local v0    # "appInfo":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    .end local v1    # "disableable":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/content/pm/LauncherActivityInfo;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "disableable":Z
    goto :goto_0

    .line 1279
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1282
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1287
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v5, Lcom/sonymobile/home/model/UserPackage;

    invoke-direct {v5, p4, p5}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 1289
    iget-boolean v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p4}, Lcom/sonymobile/home/model/PackageHandler;->getInternetPermissionFromPackageManager(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1290
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, p4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1292
    :cond_2
    return-void
.end method

.method private checkWifiOffloadPackageExist()V
    .locals 4

    .prologue
    .line 2059
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.sonymobile.home.permission.WIFIOFFLOAD"

    const-string v3, "com.sonymobile.vzwwifioffload"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2062
    .local v0, "per":I
    if-nez v0, :cond_0

    .line 2063
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z

    .line 2067
    :goto_0
    return-void

    .line 2065
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z

    goto :goto_0
.end method

.method private existsInHomeDisabledAppsBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mHomeDisabledAppsBlacklist:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2091
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, "disableArray":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mHomeDisabledAppsBlacklist:Ljava/util/List;

    .line 2097
    .end local v0    # "disableArray":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mHomeDisabledAppsBlacklist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private existsInSettingsDisabledAppsBlackList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2122
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mSettingsDisabledAppsBlackList:Ljava/util/List;

    if-nez v7, :cond_2

    .line 2123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "config_manufacturerDisableAppBlacklist"

    invoke-direct {p0, v7}, Lcom/sonymobile/home/model/PackageHandler;->getStringArrayFromSettings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2126
    .local v5, "manufacturerArray":[Ljava/lang/String;
    const-string v7, "config_operatorDisableAppBlacklist"

    invoke-direct {p0, v7}, Lcom/sonymobile/home/model/PackageHandler;->getStringArrayFromSettings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2128
    .local v6, "operatorArray":[Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 2129
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 2130
    .local v2, "item":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2132
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    move-object v0, v6

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 2133
    .restart local v2    # "item":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2137
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_1
    iput-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mSettingsDisabledAppsBlackList:Ljava/util/List;

    .line 2139
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "manufacturerArray":[Ljava/lang/String;
    .end local v6    # "operatorArray":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mSettingsDisabledAppsBlackList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method private existsInSettingsDisabledAppsWhiteList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2101
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mSettingsDisabledAppsWhiteList:Ljava/util/List;

    if-nez v7, :cond_2

    .line 2102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "config_manufacturerDisableAppWhitelist"

    invoke-direct {p0, v7}, Lcom/sonymobile/home/model/PackageHandler;->getStringArrayFromSettings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2105
    .local v5, "manufacturerArray":[Ljava/lang/String;
    const-string v7, "config_operatorDisableAppWhitelist"

    invoke-direct {p0, v7}, Lcom/sonymobile/home/model/PackageHandler;->getStringArrayFromSettings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2107
    .local v6, "operatorArray":[Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 2108
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 2109
    .local v2, "item":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2111
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    move-object v0, v6

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 2112
    .restart local v2    # "item":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2116
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_1
    iput-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mSettingsDisabledAppsWhiteList:Ljava/util/List;

    .line 2118
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "manufacturerArray":[Ljava/lang/String;
    .end local v6    # "operatorArray":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mSettingsDisabledAppsWhiteList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method private getAdvancedWidgetComponentsFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v2, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x81

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1139
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_2

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v9, :cond_2

    .line 1142
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    .line 1143
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v1, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 1145
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1146
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 1147
    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v9, v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v8

    .line 1148
    .local v8, "version":F
    invoke-static {v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->isVersionSupported(F)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1149
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/PackageHandler;->isAdvancedWidgetAvailable(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1143
    .end local v8    # "version":F
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1154
    .restart local v8    # "version":F
    :cond_1
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1161
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "version":F
    :catch_0
    move-exception v3

    .line 1162
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PackageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NameNotFoundException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return-object v2
.end method

.method private getAllActivities(Landroid/os/UserHandle;)Ljava/util/HashMap;
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Lcom/sonymobile/home/model/PackageHandler$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1205
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/home/data/ActivityItem;Lcom/sonymobile/home/model/PackageHandler$AppInfo;>;"
    if-nez p1, :cond_2

    .line 1206
    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    .line 1212
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 1213
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Lcom/sonymobile/home/model/HomeLauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 1215
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 1216
    .local v4, "info":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v4, :cond_1

    .line 1217
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sonymobile/home/model/PackageHandler;->isDisableableApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 1219
    .local v1, "disableable":Z
    new-instance v8, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    new-instance v9, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;

    invoke-direct {v9, v4, v1}, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1208
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v1    # "disableable":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1209
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1225
    :cond_3
    return-object v5
.end method

.method private getAllAdvancedWidgets()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 1027
    .local v6, "sharedPackages":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v1, "advWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_2

    .line 1032
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 1033
    .local v5, "sharedPackage":Ljava/lang/String;
    const-string v7, "com.sonyericsson.advancedwidget."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.sonymobile.advancedwidget."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1035
    :cond_0
    invoke-direct {p0, v5}, Lcom/sonymobile/home/model/PackageHandler;->getAdvancedWidgetComponentsFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1037
    .local v0, "advWidgetComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1038
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1032
    .end local v0    # "advWidgetComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1043
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sharedPackage":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private getAllInstalledWidgets()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    .line 1079
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v0, "allWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 1082
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler;->mAppWidgetProviderLoader:Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;

    invoke-virtual {v7, v5}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;->getAppWidgetProviderInfoList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 1084
    .local v4, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1085
    .local v3, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isHomeScreenCategory(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1086
    new-instance v7, Lcom/sonymobile/home/model/UserComponentName;

    iget-object v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v7, v8, v5}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1091
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4    # "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v5    # "user":Landroid/os/UserHandle;
    :cond_2
    return-object v0
.end method

.method private getAllInternetPermissions()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.INTERNET"

    aput-object v6, v3, v5

    .line 1237
    .local v3, "permissionStringArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1239
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1240
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1241
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1244
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v4
.end method

.method private getFirstSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2174
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2176
    .local v0, "systemPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2177
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    .end local v0    # "systemPackage":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 2179
    :catch_0
    move-exception v1

    .line 2182
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getInstalledAdvancedWidgets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v1, "advWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_1

    const-string v2, "com.sonyericsson.advancedwidget."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sonymobile.advancedwidget."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1117
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->getAdvancedWidgetComponentsFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1119
    .local v0, "advWidgetComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1120
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1124
    .end local v0    # "advWidgetComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1
    return-object v1
.end method

.method private getInstalledWidgets(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler;->mAppWidgetProviderLoader:Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;

    invoke-virtual {v5, p2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;->getAppWidgetProviderInfoList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 1058
    .local v3, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v4, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1061
    .local v2, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isHomeScreenCategory(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1062
    iget-object v1, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1063
    .local v1, "provider":Landroid/content/ComponentName;
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1064
    :cond_1
    new-instance v5, Lcom/sonymobile/home/model/UserComponentName;

    invoke-direct {v5, v1, p2}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    .end local v1    # "provider":Landroid/content/ComponentName;
    .end local v2    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-object v4
.end method

.method private getInternetPermissionFromPackageManager(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1015
    .local v0, "per":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 906
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 909
    :cond_0
    return-object p0
.end method

.method private static getSharedUserId(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 2006
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :goto_0
    return-object v1

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PackageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not Found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStringArrayFromSettings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 2144
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2145
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "array"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2146
    .local v1, "resId":I
    if-eqz v1, :cond_0

    .line 2147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2152
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resId":I
    :goto_0
    return-object v2

    .line 2149
    :catch_0
    move-exception v2

    .line 2152
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2149
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getSupportedAliases()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 920
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ComponentName;>;"
    const-string v1, "com.google.android.youtube.HomeActivity"

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.youtube"

    const-string v4, "com.google.android.youtube.app.honeycomb.Shell$HomeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v1, "com.google.android.youtube.app.froyo.phone.HomeActivity"

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.youtube"

    const-string v4, "com.google.android.youtube.app.honeycomb.Shell$HomeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    return-object v0
.end method

.method private getSystemSignature()Landroid/content/pm/Signature;
    .locals 1

    .prologue
    .line 2168
    const-string v0, "android"

    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/PackageHandler;->getFirstSignature(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method private getUnavailablePackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/home/model/UserPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, "installedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    .local p2, "externalPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 964
    .local v6, "unavailablePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/model/UserPackage;>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 966
    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 967
    .local v7, "user":Landroid/os/UserHandle;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 968
    .local v0, "externalPackage":Ljava/lang/String;
    new-instance v8, Lcom/sonymobile/home/model/UserPackage;

    invoke-direct {v8, v0, v7}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 974
    .end local v0    # "externalPackage":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "user":Landroid/os/UserHandle;
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 975
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v3, "installedExternalPackages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/UserPackage;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/ActivityItem;

    .line 977
    .local v4, "installedItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/model/UserPackage;

    .line 978
    .local v5, "unavailablePackage":Lcom/sonymobile/home/model/UserPackage;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 979
    new-instance v8, Lcom/sonymobile/home/model/UserPackage;

    iget-object v9, v5, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    iget-object v10, v5, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {v8, v9, v10}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 984
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "installedItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v5    # "unavailablePackage":Lcom/sonymobile/home/model/UserPackage;
    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 987
    .end local v3    # "installedExternalPackages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/UserPackage;>;"
    :cond_5
    return-object v6
.end method

.method private isActivatedDeviceManagerApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 847
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 848
    .local v0, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 849
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 850
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    const/4 v3, 0x1

    .line 856
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDisableAppsAllowed(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {v2, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 644
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string v2, "no_control_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 647
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :cond_0
    return v1
.end method

.method private isDisableableApplication(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2070
    const/4 v0, 0x0

    .line 2071
    .local v0, "disableable":Z
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2074
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->isSystemApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->existsInHomeDisabledAppsBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->isSystemHomePackages(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2076
    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->isSystemSignaturePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2078
    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->existsInSettingsDisabledAppsWhiteList(Ljava/lang/String;)Z

    move-result v0

    .line 2085
    :cond_0
    :goto_0
    return v0

    .line 2081
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->existsInSettingsDisabledAppsBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isHomeSharedUserId(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1991
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, "homePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1994
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1995
    invoke-static {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->getSharedUserId(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 1996
    .local v2, "sharedUserId":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->getSharedUserId(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 2000
    .end local v2    # "sharedUserId":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private isSystemApplication(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 867
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemHomePackages(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2186
    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemHomeAppsList:Ljava/util/List;

    if-nez v5, :cond_2

    .line 2187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2189
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2190
    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 2191
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2192
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2194
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2197
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    iput-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemHomeAppsList:Ljava/util/List;

    .line 2199
    .end local v0    # "homeIntent":Landroid/content/Intent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemHomeAppsList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private isSystemSignaturePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemSignature:Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 2158
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->getSystemSignature()Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemSignature:Landroid/content/pm/Signature;

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemSignature:Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    .line 2161
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mSystemSignature:Landroid/content/pm/Signature;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->getFirstSignature(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUninstallAppsAllowed(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 637
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string v2, "no_uninstall_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "no_control_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private loadAllPackages()V
    .locals 3

    .prologue
    .line 932
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$1;)V

    .line 934
    .local v0, "loader":Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 936
    .end local v0    # "loader":Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;
    :cond_0
    return-void
.end method

.method private notifyPrepareForPackageChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mPrepareForPackageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;

    .line 329
    .local v1, "listener":Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;->onPrepareForPackageChange(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v1    # "listener":Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;
    :cond_0
    return-void
.end method

.method private packageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1762
    :cond_0
    return-void
.end method

.method private packagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageList"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1966
    :cond_0
    return-void
.end method

.method private packagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageList"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1981
    :cond_0
    return-void
.end method

.method private removeActivities(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1367
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v3, "toBeRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    .line 1370
    .local v2, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1371
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1375
    .end local v2    # "item":Lcom/sonymobile/home/data/ActivityItem;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 1376
    .local v1, "info":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1378
    .end local v1    # "info":Lcom/sonymobile/home/data/ActivityItem;
    :cond_2
    return-void
.end method

.method private removeAdvancedWidgets(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v2, "toBeRemove":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1352
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1353
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1356
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1357
    return-void
.end method

.method private removePackageInfo(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->removeActivities(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1314
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->removeWidgets(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1315
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->removeAdvancedWidgets(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/sonymobile/home/model/UserPackage;

    invoke-direct {v1, p1, p2}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 1317
    iget-boolean v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 1320
    :cond_0
    return-void
.end method

.method private removeWidgets(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v2, "widgetsToBeRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/UserComponentName;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/UserComponentName;

    .line 1334
    .local v1, "widget":Lcom/sonymobile/home/model/UserComponentName;
    invoke-virtual {v1, p1}, Lcom/sonymobile/home/model/UserComponentName;->hasPackageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2}, Lcom/sonymobile/home/model/UserComponentName;->hasUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1335
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1338
    .end local v1    # "widget":Lcom/sonymobile/home/model/UserComponentName;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1339
    return-void
.end method


# virtual methods
.method public addOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/OnPackageChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/util/ObserverList;->registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 341
    return-void
.end method

.method public addOnPackagesLoadedListener(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/model/PackageHandler$1;-><init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :goto_0
    monitor-exit p0

    .line 375
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/util/ObserverList;->registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOnPrepareForPackageChangeListener(Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPrepareForPackageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public getActivityItemSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 535
    .local v3, "itemSubSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 536
    .local v2, "itemSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 537
    .local v1, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v1    # "item":Lcom/sonymobile/home/data/ActivityItem;
    :cond_1
    return-object v3
.end method

.method public getActivityResolveInfo(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    .line 576
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityResolveInfos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/PackageHandler$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAdvancedWidgets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllAdvWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 693
    const/4 v2, 0x0

    .line 695
    .local v2, "packageLabel":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 697
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 698
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 699
    .local v1, "charLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 700
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 707
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "charLabel":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v2

    .line 702
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getInstallTimes()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 718
    .local v2, "installTimes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    .local v0, "activityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ActivityItem;Lcom/sonymobile/home/model/PackageHandler$AppInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    invoke-interface {v3}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->getInstallTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 722
    .end local v0    # "activityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ActivityItem;Lcom/sonymobile/home/model/PackageHandler$AppInfo;>;"
    :cond_0
    return-object v2
.end method

.method public getLauncherActivityInfo(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/HomeLauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMainUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPackageExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getTargetActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 663
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mAliases:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 666
    .local v0, "info":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sonymobile/home/model/PackageHandler;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .end local v0    # "info":Landroid/content/ComponentName;
    :cond_0
    return-object v1
.end method

.method public getUnavailableApps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/model/UserPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getWidgets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleWidgetProviderChange()V
    .locals 3

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1821
    :cond_0
    return-void
.end method

.method public isActivatedDeviceManagerApp(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 835
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivatedDeviceManagerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isActivityDisableable(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 3
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    .line 629
    .local v0, "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    if-eqz v0, :cond_0

    .line 630
    invoke-interface {v0}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->isDisableable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/home/model/PackageHandler;->isDisableAppsAllowed(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 632
    :cond_0
    return v1
.end method

.method public isActivityInstalled(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 1
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->getActivityResolveInfo(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivityInstalled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 589
    new-instance v0, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 591
    .local v0, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/PackageHandler;->getActivityResolveInfo(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivityUninstallable(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 6
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    .line 612
    .local v0, "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    if-eqz v0, :cond_1

    .line 613
    invoke-interface {v0}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->isSystemApplication()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/home/model/PackageHandler;->isUninstallAppsAllowed(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 619
    :cond_0
    :goto_0
    return v1

    .line 615
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Lcom/sonymobile/home/model/UserPackage;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/PackageHandler;->isUninstallAppsAllowed(Landroid/os/UserHandle;)Z

    move-result v1

    goto :goto_0
.end method

.method public isActivityUnloadable(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 465
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isAdvancedWidgetAvailable(Landroid/content/pm/ActivityInfo;)Z
    .locals 13
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1169
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1170
    .local v6, "metaData":Landroid/os/Bundle;
    const/4 v5, 0x1

    .line 1171
    .local v5, "isAvailable":Z
    if-eqz v6, :cond_0

    .line 1172
    const-string v8, "com.sonyericsson.advwidget.configclass"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1173
    .local v2, "configClassName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1175
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1177
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1178
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 1179
    .local v4, "instance":Ljava/lang/Object;
    const-string v8, "isAvailable"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/content/ComponentName;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1181
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1191
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "configClassName":Ljava/lang/String;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v5

    .line 1183
    .restart local v2    # "configClassName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1184
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "PackageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot load or call Config class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isInternetPermissionGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInternetPermission:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPackageInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/HomeLauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isPackageUnavailable(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/sonymobile/home/model/UserPackage;

    invoke-direct {v1, p1, p2}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsSafeMode:Z

    return v0
.end method

.method public isSystemApplication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 480
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 481
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/model/PackageHandler;->isSystemApplication(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isValidAppWidget(Lcom/sonymobile/home/data/WidgetItem;)Z
    .locals 1
    .param p1, "widget"    # Lcom/sonymobile/home/data/WidgetItem;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isValidAppWidget(Landroid/content/Context;Lcom/sonymobile/home/data/WidgetItem;)Z

    move-result v0

    return v0
.end method

.method public isWidgetInstalled(Lcom/sonymobile/home/model/UserComponentName;)Z
    .locals 1
    .param p1, "widgetUserComponentName"    # Lcom/sonymobile/home/model/UserComponentName;

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWifiOffloadEnabled()Z
    .locals 1

    .prologue
    .line 2020
    iget-boolean v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mIsWifiOffloadEnabled:Z

    return v0
.end method

.method public isWorkActivityItem(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    const/4 v1, 0x0

    .line 770
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    .line 772
    .local v0, "appInfo":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    if-eqz v0, :cond_0

    .line 773
    invoke-interface {v0}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 776
    .end local v0    # "appInfo":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    :cond_0
    return v1
.end method

.method public load()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler;->loadAllPackages()V

    .line 397
    :cond_0
    return-void
.end method

.method public packageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1778
    :cond_0
    return-void
.end method

.method public packageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1951
    :cond_0
    return-void
.end method

.method protected profileAdded(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1872
    :cond_0
    return-void
.end method

.method public profileRemoved(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mHasLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1936
    :cond_0
    return-void
.end method

.method public removeOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/OnPackageChangeListener;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/ObserverList;->unregisterObserver(Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public removeOnPackagesLoadedListener(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPackageLoadObservers:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/ObserverList;->unregisterObserver(Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public removeOnPrepareForPackageChangeListener(Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/PackageHandler$OnPrepareForPackageChangeListener;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler;->mPrepareForPackageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method public startMainActivity(Lcom/sonymobile/home/data/ActivityItem;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2037
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2038
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2039
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2041
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2042
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2043
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2044
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2048
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 2049
    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2, p3}, Lcom/sonymobile/home/model/HomeLauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0
.end method
