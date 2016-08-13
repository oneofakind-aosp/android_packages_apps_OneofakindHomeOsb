.class public Lcom/sonymobile/home/HomeFragment;
.super Landroid/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/sonymobile/home/FragmentHandler;
.implements Lcom/sonymobile/home/IntentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;,
        Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;,
        Lcom/sonymobile/home/HomeFragment$TestModeReceiver;,
        Lcom/sonymobile/home/HomeFragment$DialogActionHandler;
    }
.end annotation


# static fields
.field private static sActiveInstance:Lcom/sonymobile/home/HomeFragment;

.field private static final sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTestMode:Z


# instance fields
.field private final mActivityResultHandler:Lcom/sonymobile/home/ActivityResultHandler;

.field private mCanShowDialogs:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

.field private mCurrentMcc:I

.field private mCurrentMnc:I

.field private mCurrentOrientation:I

.field private mCustomizationListener:Lcom/sonymobile/home/HomeApplication$CustomizationListener;

.field private mDefaultOrientation:I

.field private mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

.field private mFocused:Z

.field private mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

.field private mGoogleAnalyticsPeriodicReporter:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;

.field private mHandler:Landroid/os/Handler;

.field private mIsRemoved:Z

.field private mIsShowing:Z

.field private mMainView:Lcom/sonymobile/home/MainView;

.field private final mOrientationRequestReceiver:Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

.field private mPortraitOnlyMode:Z

.field private mRequestCounter:I

.field private mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field private mScreenOffReceiver:Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;

.field private mShouldRecreateFragment:Z

.field private mShowStatusBar:Z

.field private mTestModeReceiver:Lcom/sonymobile/home/HomeFragment$TestModeReceiver;

.field private mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

.field private mWorker:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sonymobile/home/HomeFragment;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 132
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I

    .line 135
    new-instance v0, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;-><init>(Lcom/sonymobile/home/HomeFragment;Lcom/sonymobile/home/HomeFragment$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mOrientationRequestReceiver:Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentOrientation:I

    .line 162
    new-instance v0, Lcom/sonymobile/home/ActivityResultHandler;

    invoke-direct {v0}, Lcom/sonymobile/home/ActivityResultHandler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mActivityResultHandler:Lcom/sonymobile/home/ActivityResultHandler;

    .line 176
    iput v2, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I

    .line 182
    iput-boolean v2, p0, Lcom/sonymobile/home/HomeFragment;->mIsRemoved:Z

    .line 188
    iput-boolean v2, p0, Lcom/sonymobile/home/HomeFragment;->mCanShowDialogs:Z

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mShowStatusBar:Z

    .line 202
    iput-boolean v2, p0, Lcom/sonymobile/home/HomeFragment;->mShouldRecreateFragment:Z

    .line 1148
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sonymobile/home/HomeFragment;->showMainView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/HomeDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonymobile/home/HomeFragment;Lcom/sonymobile/home/HomeDialogFragment;)Lcom/sonymobile/home/HomeDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;
    .param p1, "x1"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/HomeFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sonymobile/home/HomeFragment;->updateDefaultOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mOrientationRequestReceiver:Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mPortraitOnlyMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/HomeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I

    return v0
.end method

.method static synthetic access$700(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/sonymobile/home/HomeFragment;->setRequestedOrientationIfChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sonymobile/home/HomeFragment;->isActiveInstance()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mIsRemoved:Z

    return v0
.end method

.method private static clearFactoryData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 752
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->unregisterAllItemViewCreators()V

    .line 753
    invoke-static {}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getFactory()Lcom/sonymobile/home/model/ResourceLoaderFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->unregisterAllLoaders()V

    .line 755
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v1

    .line 756
    .local v1, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v1, :cond_0

    .line 757
    invoke-static {v3, v3}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->setHomeAppWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V

    .line 758
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->onDestroy()V

    .line 761
    :cond_0
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 762
    .local v0, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v0, :cond_1

    .line 763
    invoke-static {v3}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->setHomeAdvWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V

    .line 764
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->onDestroy()V

    .line 766
    :cond_1
    return-void
.end method

.method private dismissAllDialogFragments()V
    .locals 9

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1021
    .local v4, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {}, Lcom/sonymobile/home/DialogFactory$Action;->values()[Lcom/sonymobile/home/DialogFactory$Action;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonymobile/home/DialogFactory$Action;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 1022
    .local v0, "actionCode":Lcom/sonymobile/home/DialogFactory$Action;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 1023
    .local v3, "fragment":Landroid/app/Fragment;
    instance-of v7, v3, Landroid/app/DialogFragment;

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/app/Fragment;->isRemoving()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1027
    :cond_0
    :try_start_0
    check-cast v3, Landroid/app/DialogFragment;

    .end local v3    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v2

    .line 1030
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v7, "HomeFragment"

    const-string v8, "Unexpected failure when dismissing dialog"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1034
    .end local v0    # "actionCode":Lcom/sonymobile/home/DialogFactory$Action;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

    .line 1035
    return-void
.end method

.method public static getActiveActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1341
    sget-object v0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    if-eqz v0, :cond_0

    .line 1342
    sget-object v0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1344
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActiveInstance()Lcom/sonymobile/home/HomeFragment;
    .locals 1

    .prologue
    .line 726
    sget-object v0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    return-object v0
.end method

.method public static holdsActiveScene(Lcom/sonymobile/flix/components/Scene;)Z
    .locals 3
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 744
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->getActiveInstance()Lcom/sonymobile/home/HomeFragment;

    move-result-object v0

    .line 745
    .local v0, "instance":Lcom/sonymobile/home/HomeFragment;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment;->getMainView()Lcom/sonymobile/home/MainView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isActiveInstance()Z
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerPageItemViewCreators(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)V
    .locals 6
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "appWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .prologue
    .line 386
    iget-object v3, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    .line 387
    .local v2, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v0

    .line 388
    .local v0, "itemViewFactory":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
    new-instance v1, Lcom/sonymobile/home/ItemViewOptionChecker;

    iget-object v3, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/sonymobile/home/ItemViewOptionChecker;-><init>(Lcom/sonymobile/home/model/PackageHandler;Z)V

    .line 391
    .local v1, "itemViewOptionChecker":Lcom/sonymobile/home/ItemViewOptionChecker;
    const-class v3, Lcom/sonymobile/home/data/ActivityItem;

    new-instance v4, Lcom/sonymobile/home/presenter/view/ActivityItemViewCreator;

    iget-object v5, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v2, p1, v5, v1}, Lcom/sonymobile/home/presenter/view/ActivityItemViewCreator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/ItemViewOptionChecker;)V

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 395
    const-class v3, Lcom/sonymobile/home/data/FolderItem;

    new-instance v4, Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;

    iget-object v5, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v2, v5}, Lcom/sonymobile/home/presenter/view/FolderItemViewCreator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 398
    const-class v3, Lcom/sonymobile/home/data/ShortcutItem;

    new-instance v4, Lcom/sonymobile/home/presenter/view/ShortcutItemViewCreator;

    iget-object v5, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v2, p1, v5, v1}, Lcom/sonymobile/home/presenter/view/ShortcutItemViewCreator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/ItemViewOptionChecker;)V

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 402
    const-class v3, Lcom/sonymobile/home/data/InternalFunctionItem;

    new-instance v4, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;

    iget-object v5, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v2, v5}, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 405
    const-class v3, Lcom/sonymobile/home/data/WidgetItem;

    new-instance v4, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;

    invoke-direct {v4, p2, p1}, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;-><init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 408
    const-class v3, Lcom/sonymobile/home/data/TipItem;

    new-instance v4, Lcom/sonymobile/home/presenter/view/TipItemViewCreator;

    iget-object v5, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v2, v5}, Lcom/sonymobile/home/presenter/view/TipItemViewCreator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 410
    return-void
.end method

.method private static setActiveInstance(Lcom/sonymobile/home/HomeFragment;)V
    .locals 0
    .param p0, "homeFragment"    # Lcom/sonymobile/home/HomeFragment;

    .prologue
    .line 717
    sput-object p0, Lcom/sonymobile/home/HomeFragment;->sActiveInstance:Lcom/sonymobile/home/HomeFragment;

    .line 718
    return-void
.end method

.method private static setRequestedOrientationIfChanged(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orientation"    # I

    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1312
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1314
    :cond_0
    return-void
.end method

.method public static setTestMode()V
    .locals 1

    .prologue
    .line 1076
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/home/HomeFragment;->sTestMode:Z

    .line 1077
    return-void
.end method

.method private setupSettingsListeners()V
    .locals 2

    .prologue
    .line 358
    new-instance v0, Lcom/sonymobile/home/HomeFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/HomeFragment$1;-><init>(Lcom/sonymobile/home/HomeFragment;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 382
    return-void
.end method

.method private showMainView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1038
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 1042
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->startListening()V

    .line 1044
    iget-boolean v2, p0, Lcom/sonymobile/home/HomeFragment;->mIsShowing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v2, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1047
    iput-boolean v4, p0, Lcom/sonymobile/home/HomeFragment;->mIsShowing:Z

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1051
    .local v1, "newOrientation":I
    iget v2, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentOrientation:I

    if-eq v2, v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_3

    .line 1056
    :cond_1
    iput v1, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentOrientation:I

    .line 1057
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v2, :cond_2

    .line 1062
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->forceLayoutInNextLayoutPass()V

    .line 1073
    .end local v0    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .end local v1    # "newOrientation":I
    :cond_2
    :goto_0
    return-void

    .line 1068
    .restart local v0    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .restart local v1    # "newOrientation":I
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v2, :cond_2

    .line 1069
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->refreshViewContent()V

    goto :goto_0
.end method

.method private showStatusBar(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "show"    # Z

    .prologue
    const/16 v1, 0x400

    .line 960
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 962
    .local v0, "window":Landroid/view/Window;
    if-eqz p2, :cond_0

    .line 963
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 967
    :goto_0
    return-void

    .line 965
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private updateDefaultOrientation(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 473
    iget-boolean v1, p0, Lcom/sonymobile/home/HomeFragment;->mPortraitOnlyMode:Z

    if-eqz v1, :cond_0

    .line 474
    iput v2, p0, Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I

    .line 493
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings;->useSystemAutoRotate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    const/4 v1, 0x2

    iput v1, p0, Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I

    goto :goto_0

    .line 485
    :cond_1
    const-string v1, "uimode"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 487
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 488
    const/4 v1, 0x5

    iput v1, p0, Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I

    goto :goto_0

    .line 490
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I

    goto :goto_0
.end method


# virtual methods
.method public addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mActivityResultHandler:Lcom/sonymobile/home/ActivityResultHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ActivityResultHandler;->addListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V

    .line 926
    return-void
.end method

.method public canShowDialogs()Z
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mCanShowDialogs:Z

    return v0
.end method

.method public createResourceHandler(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 9
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 331
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-static {v7, p1, v8}, Lcom/sonymobile/home/storage/StorageManager;->getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v2

    .line 333
    .local v2, "folderManager":Lcom/sonymobile/home/folder/FolderManager;
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v1

    .line 336
    .local v1, "badgeManager":Lcom/sonymobile/home/badge/BadgeManager;
    new-instance v0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, v7, p1, v1, v8}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 338
    .local v0, "activityResourceLoader":Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;
    new-instance v6, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;

    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v6, v7, v8, v1}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/badge/BadgeManager;)V

    .line 340
    .local v6, "shortcutResourceLoader":Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;
    new-instance v3, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;

    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v3, v7, v2, v8}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 342
    .local v3, "folderResourceLoader":Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;
    new-instance v4, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;

    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v7, v8}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 345
    .local v4, "internalFunctionResourceLoader":Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;
    invoke-static {}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getFactory()Lcom/sonymobile/home/model/ResourceLoaderFactory;

    move-result-object v5

    .line 346
    .local v5, "loaderFactory":Lcom/sonymobile/home/model/ResourceLoaderFactory;
    const-class v7, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v5, v7, v0}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 347
    const-class v7, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-virtual {v5, v7, v6}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 348
    const-class v7, Lcom/sonymobile/home/data/InternalFunctionItem;

    invoke-virtual {v5, v7, v4}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 349
    const-class v7, Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v5, v7, v3}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 350
    const-class v7, Lcom/sonymobile/home/data/WidgetItem;

    new-instance v8, Lcom/sonymobile/home/presenter/resource/AppWidgetResourceLoader;

    invoke-direct {v8}, Lcom/sonymobile/home/presenter/resource/AppWidgetResourceLoader;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 351
    const-class v7, Lcom/sonymobile/home/data/AdvWidgetItem;

    new-instance v8, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;

    invoke-direct {v8}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 352
    const-class v7, Lcom/sonymobile/home/data/TipItem;

    new-instance v8, Lcom/sonymobile/home/presenter/resource/TipResourceLoader;

    invoke-direct {v8}, Lcom/sonymobile/home/presenter/resource/TipResourceLoader;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 354
    new-instance v7, Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, p1, v5}, Lcom/sonymobile/home/model/ResourceHandler;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceLoaderFactory;)V

    return-object v7
.end method

.method public generateUniqueRequestCode()I
    .locals 1

    .prologue
    .line 935
    sget-object v0, Lcom/sonymobile/home/HomeFragment;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDialogHandler()Lcom/sonymobile/home/DialogHandler;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    return-object v0
.end method

.method public getMainView()Lcom/sonymobile/home/MainView;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    return-object v0
.end method

.method public getShouldRecreateFragment()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mShouldRecreateFragment:Z

    return v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 919
    iget v0, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I

    .line 920
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mActivityResultHandler:Lcom/sonymobile/home/ActivityResultHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/ActivityResultHandler;->handleActivityResult(IILandroid/content/Intent;)V

    .line 921
    return-void
.end method

.method public hasOpenDialog()Z
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestPending()Z
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarShown()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mShowStatusBar:Z

    return v0
.end method

.method public launchActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080097

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 881
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/HomeFragment;->launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 859
    return-void
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 866
    iget v1, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 867
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public launchAppWidgetConfigureActivityForResult(IIILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "appWidgetId"    # I
    .param p2, "intentFlags"    # I
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v6

    .line 895
    .local v6, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v6, :cond_0

    .line 896
    invoke-virtual {v6}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getHomeAppWidgetHost()Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    move-result-object v0

    .line 898
    .local v0, "appWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    .line 900
    iget v1, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/home/HomeFragment;->mRequestCounter:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v0    # "appWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    .end local v6    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    :cond_0
    :goto_0
    return-void

    .line 901
    .restart local v0    # "appWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    .restart local v6    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    :catch_0
    move-exception v7

    .line 902
    .local v7, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 901
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 419
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 420
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "applicationContext":Landroid/content/Context;
    move-object v3, v2

    .line 421
    check-cast v3, Lcom/sonymobile/home/HomeApplication;

    .line 423
    .local v3, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v8}, Lcom/sonymobile/home/settings/UserSettings;->updateIconSizes()V

    .line 424
    iget-boolean v8, p0, Lcom/sonymobile/home/HomeFragment;->mShowStatusBar:Z

    invoke-direct {p0, v0, v8}, Lcom/sonymobile/home/HomeFragment;->showStatusBar(Landroid/app/Activity;Z)V

    .line 427
    invoke-virtual {v3}, Lcom/sonymobile/home/HomeApplication;->initAdvWidgetManager()V

    .line 428
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v1

    .line 430
    .local v1, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->setActivity(Landroid/app/Activity;)V

    .line 434
    invoke-static {}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getFactory()Lcom/sonymobile/home/model/ResourceLoaderFactory;

    move-result-object v5

    .line 435
    .local v5, "loaderFactory":Lcom/sonymobile/home/model/ResourceLoaderFactory;
    const-class v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    new-instance v9, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;

    invoke-direct {v9}, Lcom/sonymobile/home/presenter/resource/AdvWidgetResourceLoader;-><init>()V

    invoke-virtual {v5, v8, v9}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->registerLoader(Ljava/lang/Class;Lcom/sonymobile/home/model/ResourceLoader;)V

    .line 437
    invoke-virtual {v3}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v6

    .line 441
    .local v6, "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v4

    .line 442
    .local v4, "itemViewFactory":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
    const-class v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    new-instance v9, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;

    invoke-direct {v9, v1, v6}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemViewCreator;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V

    invoke-virtual {v4, v8, v9}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V

    .line 446
    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v7

    .line 447
    .local v7, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-virtual {v4, v7}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 453
    new-instance v8, Lcom/sonymobile/home/HomeFragment$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/home/HomeFragment$2;-><init>(Lcom/sonymobile/home/HomeFragment;)V

    iput-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mCustomizationListener:Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    .line 463
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mCustomizationListener:Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    invoke-virtual {v3, v8}, Lcom/sonymobile/home/HomeApplication;->customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V

    .line 466
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 467
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0800bc

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 470
    :cond_0
    return-void
.end method

.method public onBackButtonPressed()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->onBackButtonPressed()Z

    .line 784
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iget v1, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentMcc:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iget v1, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentMnc:I

    if-eq v0, v1, :cond_1

    .line 542
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentMcc:I

    .line 543
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentMnc:I

    .line 545
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->reloadResources()V

    .line 549
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 212
    .local v13, "activity":Landroid/app/Activity;
    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sonymobile/home/HomeApplication;

    .line 214
    .local v16, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v6

    .line 216
    .local v6, "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/HomeFragment;->isActiveInstance()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->clearFactoryData()V

    .line 226
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->getActiveInstance()Lcom/sonymobile/home/HomeFragment;

    move-result-object v19

    .line 227
    .local v19, "oldHomeFragment":Lcom/sonymobile/home/HomeFragment;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/sonymobile/home/HomeFragment;->mIsRemoved:Z

    if-nez v2, :cond_0

    .line 228
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 229
    .local v18, "oldActivity":Landroid/app/Activity;
    if-eqz v18, :cond_0

    .line 230
    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const-string v2, "HomeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple Home activities and fragments detected. Finishing old Home activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->finish()V

    .line 238
    .end local v18    # "oldActivity":Landroid/app/Activity;
    .end local v19    # "oldHomeFragment":Lcom/sonymobile/home/HomeFragment;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/home/HomeFragment;->setActiveInstance(Lcom/sonymobile/home/HomeFragment;)V

    .line 242
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/HomeFragment;->setRetainInstance(Z)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 246
    .local v20, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0006

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/home/HomeFragment;->mPortraitOnlyMode:Z

    .line 248
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->getWorker()Lcom/sonymobile/flix/util/Worker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mWorker:Lcom/sonymobile/flix/util/Worker;

    .line 249
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v2, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;-><init>(Lcom/sonymobile/home/HomeFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mTestModeReceiver:Lcom/sonymobile/home/HomeFragment$TestModeReceiver;

    .line 253
    new-instance v17, Landroid/content/IntentFilter;

    const-string v2, "com.sonymobile.home.action.TEST_MODE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v17, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.home.action.PRINT_SCENE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mTestModeReceiver:Lcom/sonymobile/home/HomeFragment$TestModeReceiver;

    const-string v4, "com.sonymobile.home.permission.TEST_MODE"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    new-instance v2, Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;-><init>(Lcom/sonymobile/home/HomeFragment;Lcom/sonymobile/home/HomeFragment$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mScreenOffReceiver:Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mScreenOffReceiver:Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    invoke-virtual {v6}, Lcom/sonymobile/home/model/PackageHandler;->load()V

    .line 265
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->initAppWidgetManager()V

    .line 266
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v14

    .line 268
    .local v14, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->setIntentHandler(Lcom/sonymobile/home/IntentHandler;)V

    .line 269
    invoke-virtual {v13}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->calculateCellDimensions(Landroid/view/Display;)V

    .line 272
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->initAdvWidgetManager()V

    .line 274
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/HomeFragment;->createResourceHandler(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/settings/UserSettings;->registerResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceHandler;->loadIconPack(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/HomeFragment;->setupSettingsListeners()V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v21

    .line 286
    .local v21, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->setIntentHandler(Lcom/sonymobile/home/IntentHandler;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-static {v2, v6, v3}, Lcom/sonymobile/home/storage/StorageManager;->getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v8

    .line 290
    .local v8, "folderManager":Lcom/sonymobile/home/folder/FolderManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v9

    .line 292
    .local v9, "badgeManager":Lcom/sonymobile/home/badge/BadgeManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/sonymobile/home/HomeFragment;->registerPageItemViewCreators(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)V

    .line 294
    new-instance v11, Lcom/sonymobile/home/model/ItemCreatorImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-direct {v11, v2, v3, v0, v8}, Lcom/sonymobile/home/model/ItemCreatorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 298
    .local v11, "creator":Lcom/sonymobile/home/data/ItemCreator;
    new-instance v2, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;-><init>(Lcom/sonymobile/home/HomeFragment$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    .line 301
    new-instance v2, Lcom/sonymobile/home/MainView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->getAdvWidgetExceptionHandler()Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    move-result-object v12

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v12}, Lcom/sonymobile/home/MainView;-><init>(Landroid/content/Context;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->onCreate()V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->setupAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 309
    .local v15, "conf":Landroid/content/res/Configuration;
    iget v2, v15, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/home/HomeFragment;->mCurrentMcc:I

    .line 310
    iget v2, v15, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/home/HomeFragment;->mCurrentMnc:I

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->setupViewWrappers()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v22

    .line 314
    .local v22, "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->setFocusListener(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;)V

    .line 316
    sget-boolean v2, Lcom/sonymobile/home/HomeFragment;->sTestMode:Z

    if-eqz v2, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->isProxyViewTestingSetup()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v2}, Lcom/sonymobile/home/MainView;->setupProxyViewTesting()V

    .line 321
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/home/HomeFragment;->mIsShowing:Z

    .line 323
    new-instance v2, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporterList;->getReporters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mGoogleAnalyticsPeriodicReporter:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/statistics/TrackingUtil;->createGaGtmSubscriber(Landroid/content/Context;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/HomeFragment;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V

    .line 328
    return-void
.end method

.method public onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 650
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mTestModeReceiver:Lcom/sonymobile/home/HomeFragment$TestModeReceiver;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mScreenOffReceiver:Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 653
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    if-eqz v7, :cond_0

    .line 654
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v7, v8}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 655
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v7, v8}, Lcom/sonymobile/home/settings/UserSettings;->unRegisterResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/HomeFragment;->dismissAllDialogFragments()V

    .line 662
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v7, :cond_2

    .line 663
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v7}, Lcom/sonymobile/home/MainView;->onDestroy()V

    .line 665
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v7}, Lcom/sonymobile/home/MainView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 666
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 667
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 669
    :cond_1
    iput-object v9, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    .line 673
    .end local v5    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-static {}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->clearAll()V

    .line 675
    invoke-direct {p0}, Lcom/sonymobile/home/HomeFragment;->isActiveInstance()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 676
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonymobile/home/HomeApplication;

    .line 678
    .local v1, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v1}, Lcom/sonymobile/home/HomeApplication;->peekModels()Ljava/util/List;

    move-result-object v4

    .line 679
    .local v4, "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/model/Model;

    .line 683
    .local v3, "model":Lcom/sonymobile/home/model/Model;
    invoke-virtual {v3, v9}, Lcom/sonymobile/home/model/Model;->setResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V

    goto :goto_0

    .line 686
    .end local v3    # "model":Lcom/sonymobile/home/model/Model;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v6

    .line 687
    .local v6, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    invoke-virtual {v6, v9}, Lcom/sonymobile/home/shortcut/ShortcutManager;->setIntentHandler(Lcom/sonymobile/home/IntentHandler;)V

    .line 689
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 691
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    invoke-virtual {v0, v9}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->setIntentHandler(Lcom/sonymobile/home/IntentHandler;)V

    .line 693
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->clearFactoryData()V

    .line 694
    invoke-static {v9}, Lcom/sonymobile/home/HomeFragment;->setActiveInstance(Lcom/sonymobile/home/HomeFragment;)V

    .line 698
    .end local v0    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .end local v1    # "homeApplication":Lcom/sonymobile/home/HomeApplication;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    .end local v6    # "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v7}, Lcom/sonymobile/home/model/ResourceHandler;->onDestroy()V

    .line 699
    iput-object v9, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 701
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mActivityResultHandler:Lcom/sonymobile/home/ActivityResultHandler;

    invoke-virtual {v7}, Lcom/sonymobile/home/ActivityResultHandler;->removeAllListeners()V

    .line 702
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    invoke-virtual {v7}, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;->removeAllListeners()V

    .line 703
    iput-object v9, p0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    .line 705
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v7}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->unsubscribeGaSettingChanges()V

    .line 707
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 708
    iget-object v7, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, p0}, Lcom/sonymobile/home/HomeApplication;->watch(Landroid/content/Context;Ljava/lang/Object;)V

    .line 709
    return-void
.end method

.method public onDetach()V
    .locals 10

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/sonymobile/home/HomeFragment;->isActiveInstance()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 585
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v3

    .line 586
    .local v3, "itemViewFactory":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
    const-class v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v3, v8}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->unregisterItemViewCreator(Ljava/lang/Class;)V

    .line 591
    invoke-static {}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getFactory()Lcom/sonymobile/home/model/ResourceLoaderFactory;

    move-result-object v4

    .line 593
    .local v4, "loaderFactory":Lcom/sonymobile/home/model/ResourceLoaderFactory;
    const-class v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v4, v8}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 595
    .local v0, "advWidgetLoader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v8, :cond_0

    .line 596
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceLoader;->getLoaderId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/home/model/ResourceHandler;->releaseAllResourcesForLoader(I)V

    .line 597
    const-class v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v4, v8}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->unregisterLoader(Ljava/lang/Class;)V

    .line 601
    :cond_0
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v1

    .line 603
    .local v1, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v1, :cond_1

    .line 604
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->setHomeAdvWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V

    .line 605
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->onDestroy()V

    .line 609
    :cond_1
    const-class v8, Lcom/sonymobile/home/data/WidgetItem;

    invoke-virtual {v4, v8}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v6

    .line 610
    .local v6, "widgetLoader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v8, :cond_2

    .line 611
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-interface {v6}, Lcom/sonymobile/home/model/ResourceLoader;->getLoaderId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/home/model/ResourceHandler;->releaseAllResourcesForLoader(I)V

    .line 616
    :cond_2
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v7

    .line 618
    .local v7, "widgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v7, :cond_3

    .line 619
    invoke-virtual {v7}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->onDetach()V

    .line 623
    .end local v0    # "advWidgetLoader":Lcom/sonymobile/home/model/ResourceLoader;
    .end local v1    # "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .end local v3    # "itemViewFactory":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
    .end local v4    # "loaderFactory":Lcom/sonymobile/home/model/ResourceLoaderFactory;
    .end local v6    # "widgetLoader":Lcom/sonymobile/home/model/ResourceLoader;
    .end local v7    # "widgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mCustomizationListener:Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    if-eqz v8, :cond_4

    .line 624
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonymobile/home/HomeApplication;

    .line 625
    .local v2, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mCustomizationListener:Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    invoke-virtual {v2, v8}, Lcom/sonymobile/home/HomeApplication;->removeCustomizationListener(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V

    .line 628
    .end local v2    # "homeApplication":Lcom/sonymobile/home/HomeApplication;
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v8, :cond_5

    .line 630
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v8}, Lcom/sonymobile/home/MainView;->onDetach()V

    .line 634
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v8}, Lcom/sonymobile/home/MainView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 635
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_5

    .line 636
    iget-object v8, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 640
    .end local v5    # "parent":Landroid/view/ViewGroup;
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonymobile/home/HomeFragment;->mIsShowing:Z

    .line 642
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 643
    return-void
.end method

.method public onDialogButtonClicked(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mDialogActionHandler:Lcom/sonymobile/home/HomeFragment$DialogActionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;->handleDialogAction(ILandroid/os/Bundle;)V

    .line 836
    :cond_0
    return-void
.end method

.method public onDialogFragmentCreated(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

    .line 845
    return-void
.end method

.method public onDialogFragmentDestroyed(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 1
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;

    .line 854
    return-void
.end method

.method public onHomeButtonPressed(Z)V
    .locals 2
    .param p1, "isHomeScreenInFront"    # Z

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/HomeFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/HomeFragment$3;-><init>(Lcom/sonymobile/home/HomeFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    :cond_0
    return-void
.end method

.method public onMenuButtonPressed()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->onMenuButtonPressed()Z

    move-result v0

    .line 795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 553
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 554
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->onPause()V

    .line 557
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 515
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 516
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v1}, Lcom/sonymobile/home/MainView;->onResume()V

    .line 519
    :cond_0
    iput-boolean v2, p0, Lcom/sonymobile/home/HomeFragment;->mCanShowDialogs:Z

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.action.stk.idle_screen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "idleScreenIntent":Landroid/content/Intent;
    const-string v1, "SCREEN_IDLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment;->mGoogleAnalyticsPeriodicReporter:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->checkTimeAndReportDelayed(I)V

    .line 528
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mCanShowDialogs:Z

    .line 535
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 501
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->onStart()V

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mPortraitOnlyMode:Z

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mOrientationRequestReceiver:Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->register()V

    .line 510
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mCanShowDialogs:Z

    .line 511
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 565
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->onStop()V

    .line 569
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mPortraitOnlyMode:Z

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mOrientationRequestReceiver:Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->unregister()V

    .line 574
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mCanShowDialogs:Z

    .line 575
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 995
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 997
    .local v0, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->onTrimMemory(I)V

    .line 1001
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 1002
    return-void
.end method

.method public setFocused(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 979
    iput-boolean p1, p0, Lcom/sonymobile/home/HomeFragment;->mFocused:Z

    .line 980
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/HomeFragment;->mIsRemoved:Z

    .line 775
    return-void
.end method

.method public setShouldRecreateFragment(Z)V
    .locals 0
    .param p1, "shouldRecreate"    # Z

    .prologue
    .line 1322
    iput-boolean p1, p0, Lcom/sonymobile/home/HomeFragment;->mShouldRecreateFragment:Z

    .line 1323
    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 945
    iget-boolean v1, p0, Lcom/sonymobile/home/HomeFragment;->mShowStatusBar:Z

    if-eq p1, v1, :cond_0

    .line 946
    iput-boolean p1, p0, Lcom/sonymobile/home/HomeFragment;->mShowStatusBar:Z

    .line 947
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 948
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 949
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/HomeFragment;->showStatusBar(Landroid/app/Activity;Z)V

    .line 952
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/MainView;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 1017
    :cond_0
    return-void
.end method
