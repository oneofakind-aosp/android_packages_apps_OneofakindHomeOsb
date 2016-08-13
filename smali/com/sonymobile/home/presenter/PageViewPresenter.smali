.class public abstract Lcom/sonymobile/home/presenter/PageViewPresenter;
.super Ljava/lang/Object;
.source "PageViewPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;


# instance fields
.field private mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field protected final mContext:Landroid/content/Context;

.field private final mDialogHandler:Lcom/sonymobile/home/DialogHandler;

.field protected mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

.field protected final mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

.field protected final mIntentHandler:Lcom/sonymobile/home/IntentHandler;

.field protected final mMainThreadHandler:Landroid/os/Handler;

.field private final mModel:Lcom/sonymobile/home/model/Model;

.field protected mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

.field protected final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field protected mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

.field protected final mScene:Lcom/sonymobile/flix/components/Scene;

.field protected final mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

.field protected mTrackUninstallCount:I

.field protected final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/model/Model;
    .param p3, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p4, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p5, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p6, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p7, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p8, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mTrackUninstallCount:I

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mMainThreadHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 112
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mModel:Lcom/sonymobile/home/model/Model;

    .line 114
    iput-object p3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    .line 115
    iput-object p4, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    .line 116
    iput-object p5, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    .line 117
    iput-object p6, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 118
    iput-object p7, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 119
    iput-object p8, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/PageViewPresenter;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/PageViewPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/presenter/PageViewPresenter;->trackUninstallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/presenter/PageViewPresenter;)Lcom/sonymobile/home/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/PageViewPresenter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mModel:Lcom/sonymobile/home/model/Model;

    return-object v0
.end method

.method private createAppLabel(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 406
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mModel:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/Model;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 407
    .local v1, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-eqz v1, :cond_0

    .line 408
    invoke-interface {v1}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "appLabel":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 410
    .end local v0    # "appLabel":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "appLabel":Ljava/lang/String;
    goto :goto_0
.end method

.method private deleteUnloadableApp(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 344
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->packageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 347
    :cond_0
    return-void
.end method

.method private disableDisableApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 331
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->trackUninstallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 332
    return-void
.end method

.method public static handleActivityNotFound(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 518
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->isOnExternalStorage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    const v2, 0x7f080071

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    .end local p2    # "label":Ljava/lang/String;
    :goto_0
    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->APP_ON_EXTERNAL_STORAGE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sonymobile/home/presenter/OnExternalStorageDialog;->newInstance(Ljava/lang/String;)Lcom/sonymobile/home/presenter/OnExternalStorageDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 529
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    return-void

    .restart local p2    # "label":Ljava/lang/String;
    :cond_0
    move-object p2, v1

    .line 522
    goto :goto_0

    .line 527
    :cond_1
    const v2, 0x7f080097

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private showCustomDeleteDialog(Lcom/sonymobile/home/data/ActivityItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->createAppLabel(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "appLabel":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_APP:Lcom/sonymobile/home/DialogFactory$Action;

    .line 269
    .local v0, "action":Lcom/sonymobile/home/DialogFactory$Action;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/sonymobile/home/UninstallApplicationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/UninstallApplicationDialogFragment;

    move-result-object v2

    .line 272
    .local v2, "dialogFragment":Lcom/sonymobile/home/UninstallApplicationDialogFragment;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v4

    invoke-interface {v3, v4, p0}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 273
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 274
    return-void
.end method

.method private showDisableDialog(Lcom/sonymobile/home/data/ActivityItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->createAppLabel(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "appLabel":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/home/DialogFactory$Action;->DISABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    .line 319
    .local v0, "action":Lcom/sonymobile/home/DialogFactory$Action;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/sonymobile/home/DisableApplicationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/DisableApplicationDialogFragment;

    move-result-object v2

    .line 322
    .local v2, "dialogFragment":Lcom/sonymobile/home/DisableApplicationDialogFragment;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v4

    invoke-interface {v3, v4, p0}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 323
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 324
    return-void
.end method

.method private showSystemDeleteDialog(Lcom/sonymobile/home/data/ActivityItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 288
    .local v1, "packageUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    iget-object v4, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v4}, Lcom/sonymobile/home/IntentHandler;->generateUniqueRequestCode()I

    move-result v3

    .line 293
    .local v3, "uninstallRequestCode":I
    new-instance v0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/sonymobile/home/presenter/PageViewPresenter$1;-><init>(Lcom/sonymobile/home/presenter/PageViewPresenter;ILcom/sonymobile/home/data/ActivityItem;)V

    .line 312
    .local v0, "listener":Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;
    iget-object v4, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v4, v3, v0}, Lcom/sonymobile/home/IntentHandler;->addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V

    .line 313
    iget-object v4, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    const-string v5, ""

    invoke-interface {v4, v2, v3, v5}, Lcom/sonymobile/home/IntentHandler;->launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method private showUnloadableDialog(Lcom/sonymobile/home/data/ActivityItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->createAppLabel(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "appLabel":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_UNLOADABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    .line 337
    .local v0, "action":Lcom/sonymobile/home/DialogFactory$Action;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;

    move-result-object v2

    .line 339
    .local v2, "dialogFragment":Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v4

    invoke-interface {v3, v4, p0}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 340
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 341
    return-void
.end method

.method private trackAppLaunchedEvent(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v2, 0x1

    .line 463
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->incrementTrackSessionAppStartCount()I

    move-result v0

    .line 464
    .local v0, "trackSessionAppStartCount":I
    rem-int/lit8 v1, v0, 0x14

    if-ne v1, v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AppLaunched"

    invoke-static {p1}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v5

    if-le v0, v2, :cond_1

    const-wide/16 v2, 0x14

    :goto_0
    invoke-static {v1, v4, v5, v2, v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 471
    :cond_0
    return-void

    .line 467
    :cond_1
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method private trackUninstallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 424
    iget v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mTrackUninstallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mTrackUninstallCount:I

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUninstalled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 428
    return-void
.end method

.method private uninstallApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonymobile.uninstall.action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    .line 281
    .local v0, "sender":Landroid/content/IntentSender;
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 283
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->trackUninstallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 284
    return-void
.end method


# virtual methods
.method public getPageViewGroup()Lcom/sonymobile/home/ui/pageview/PageViewGroup;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    return-object v0
.end method

.method protected getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mModel:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/Model;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleItemViewClickInEditMode(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z
    .locals 5
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 200
    .local v0, "clickedItem":Lcom/sonymobile/home/data/Item;
    const/4 v1, 0x0

    .line 202
    .local v1, "handled":Z
    instance-of v3, v0, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v3, :cond_3

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->hasUninstallOption()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V

    .line 209
    :goto_0
    const/4 v1, 0x1

    .line 220
    .end local p1    # "clickedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    :goto_1
    return v1

    .line 207
    .restart local p1    # "clickedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 211
    :cond_3
    instance-of v3, v0, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v3, :cond_1

    instance-of v3, p1, Lcom/sonymobile/home/presenter/view/FolderItemView;

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderUninstallMode(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "openFolderMode":I
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    check-cast p1, Lcom/sonymobile/home/presenter/view/FolderItemView;

    .end local p1    # "clickedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iget-object v4, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLocationZ()F

    move-result v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/sonymobile/home/folder/FolderOpener;->open(Lcom/sonymobile/home/presenter/view/FolderItemView;IF)V

    .line 216
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    iget-object v4, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/folder/FolderOpener;->addOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 217
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected handleItemViewClickInNormalMode(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "clickedItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "launched":Z
    instance-of v2, p1, Lcom/sonymobile/home/presenter/view/FolderItemView;

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->getPageViewName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderNormalMode(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "openFolderMode":I
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    check-cast p1, Lcom/sonymobile/home/presenter/view/FolderItemView;

    .end local p1    # "clickedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLocationZ()F

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/sonymobile/home/folder/FolderOpener;->open(Lcom/sonymobile/home/presenter/view/FolderItemView;IF)V

    .line 177
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/FolderOpener;->addOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 189
    .end local v1    # "openFolderMode":I
    :cond_0
    :goto_0
    return v0

    .line 179
    .restart local p1    # "clickedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->handleClick(Landroid/content/Context;)Z

    move-result v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 182
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/statistics/StatisticsManager;->incrementStartCount(Lcom/sonymobile/home/data/Item;)V

    .line 183
    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/PageViewPresenter;->trackAppLaunchedEvent(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method protected handleUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 231
    instance-of v1, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 238
    .local v0, "itemToUninstall":Lcom/sonymobile/home/data/ActivityItem;
    :goto_0
    if-nez v0, :cond_3

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 233
    .end local v0    # "itemToUninstall":Lcom/sonymobile/home/data/ActivityItem;
    :cond_1
    instance-of v1, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 234
    check-cast v1, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-static {v1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .restart local v0    # "itemToUninstall":Lcom/sonymobile/home/data/ActivityItem;
    goto :goto_0

    .line 236
    .end local v0    # "itemToUninstall":Lcom/sonymobile/home/data/ActivityItem;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "itemToUninstall":Lcom/sonymobile/home/data/ActivityItem;
    goto :goto_0

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivityUnloadable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->showUnloadableDialog(Lcom/sonymobile/home/data/ActivityItem;)V

    goto :goto_1

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivityUninstallable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/PackageHandler;->isWorkActivityItem(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivatedDeviceManagerApp(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->isOnExternalStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 256
    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->showCustomDeleteDialog(Lcom/sonymobile/home/data/ActivityItem;)V

    goto :goto_1

    .line 258
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->showSystemDeleteDialog(Lcom/sonymobile/home/data/ActivityItem;)V

    goto :goto_1

    .line 260
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivityDisableable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->showDisableDialog(Lcom/sonymobile/home/data/ActivityItem;)V

    goto :goto_1
.end method

.method protected abstract incrementTrackSessionAppStartCount()I
.end method

.method protected launchApplication(Lcom/sonymobile/home/data/ActivityItem;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v2, p2}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->makeLaunchAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v1

    .line 496
    .local v1, "options":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v2, p1, p2, v1}, Lcom/sonymobile/home/model/PackageHandler;->startMainActivity(Lcom/sonymobile/home/data/ActivityItem;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v1    # "options":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/home/presenter/PageViewPresenter$2;

    invoke-direct {v3, p0, p1}, Lcom/sonymobile/home/presenter/PageViewPresenter$2;-><init>(Lcom/sonymobile/home/presenter/PageViewPresenter;Lcom/sonymobile/home/data/ActivityItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 383
    sget-object v3, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_APP:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v3}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 384
    const-string v3, "applicationPackageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "appName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->uninstallApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    sget-object v3, Lcom/sonymobile/home/DialogFactory$Action;->DISABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v3}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 388
    const-string v3, "applicationPackageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string v3, "appName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .restart local v0    # "name":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->disableDisableApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_UNLOADABLE_APP:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v3}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 392
    const-string v3, "applicationPackageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string v3, "user"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 394
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/presenter/PageViewPresenter;->deleteUnloadableApp(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setStayPressed(Z)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 154
    :cond_0
    return-void
.end method

.method public setFolderOpener(Lcom/sonymobile/home/folder/FolderOpener;)V
    .locals 0
    .param p1, "opener"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    .line 138
    return-void
.end method

.method protected setOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 147
    return-void
.end method

.method public setPageViewGroup(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .line 129
    return-void
.end method

.method protected showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->createAppLabel(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "appLabel":Ljava/lang/String;
    instance-of v4, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 359
    check-cast v4, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v4}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 370
    sget-object v4, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE_APPINFO:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v4}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v4

    invoke-static {v4, v0, v3, v1}, Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;

    move-result-object v2

    .line 373
    .local v2, "dialogFragment":Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;
    sget-object v4, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE_APPINFO:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v4}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 379
    .end local v2    # "dialogFragment":Lcom/sonymobile/home/NonUninstallableAppInfoDialogFragment;
    :goto_1
    return-void

    .line 361
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    instance-of v4, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 362
    check-cast v4, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-virtual {v4}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 363
    .restart local v1    # "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 366
    .restart local v1    # "className":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 375
    :cond_2
    sget-object v4, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v4}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v4

    invoke-static {v4, v0}, Lcom/sonymobile/home/NonUninstallableDialogFragment;->newInstance(ILjava/lang/String;)Lcom/sonymobile/home/NonUninstallableDialogFragment;

    move-result-object v2

    .line 377
    .local v2, "dialogFragment":Lcom/sonymobile/home/NonUninstallableDialogFragment;
    sget-object v4, Lcom/sonymobile/home/DialogFactory$Action;->NON_UNINSTALLABLE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v4}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    goto :goto_1
.end method
