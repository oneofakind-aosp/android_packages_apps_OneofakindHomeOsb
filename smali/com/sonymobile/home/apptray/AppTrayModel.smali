.class public Lcom/sonymobile/home/apptray/AppTrayModel;
.super Lcom/sonymobile/home/model/Model;
.source "AppTrayModel.java"


# instance fields
.field private final mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

.field private mMaxPageItemCount:I

.field private mNeedsResourceUpdate:Z

.field private final mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

.field private mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

.field private final mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

.field private final mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

.field private final mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p6, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p7, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p8, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;

    .prologue
    .line 133
    const-string v1, "apptray"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/model/Model;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V

    .line 64
    const/16 v0, 0x14

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z

    .line 78
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .line 104
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$2;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    .line 136
    iput-object p5, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 137
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    .line 140
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    .line 141
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .line 142
    new-instance v0, Lcom/sonymobile/home/model/AddSyncableApps;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    new-instance v3, Lcom/sonymobile/home/apptray/AppTrayModel$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$3;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/model/AddSyncableApps;-><init>(Ljava/util/List;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/AddSyncableCallback;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->sortAlphabeticallyAndUpdateModel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->syncBadges()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/apptray/AppTrayModel;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->removeGapsAndEmptyPages(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->setModelLoaded()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/AddSyncable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/RemoveSyncable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$602(Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p1, "x1"    # Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/home/apptray/AppTrayModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sonymobile/home/apptray/AppTrayModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/statistics/StatisticsManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayModel;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    return-object v0
.end method

.method private getLastPage()I
    .locals 4

    .prologue
    .line 577
    const/4 v1, 0x0

    .line 579
    .local v1, "index":I
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 580
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-le v3, v1, :cond_0

    .line 581
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v1, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    goto :goto_0

    .line 584
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v1
.end method

.method public static getMinimumNumberOfPages()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method private getNewLocation()Lcom/sonymobile/home/data/ItemLocation;
    .locals 3

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getLastPage()I

    move-result v0

    .line 600
    .local v0, "lastPage":I
    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getPageItemCount(I)I

    move-result v1

    .line 602
    .local v1, "pageCount":I
    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    if-lt v1, v2, :cond_0

    .line 603
    add-int/lit8 v0, v0, 0x1

    .line 604
    const/4 v1, 0x0

    .line 606
    :cond_0
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v2, v0, v1}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    return-object v2
.end method

.method private getPageItemCount(I)I
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 588
    const/4 v2, 0x0

    .line 590
    .local v2, "itemCount":I
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 591
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v3, p1, :cond_0

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v2
.end method

.method private removeGapsAndEmptyPages(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 551
    .local v0, "hasChanged":Z
    const/4 v5, 0x0

    .line 552
    .local v5, "position":I
    const/4 v4, -0x1

    .line 553
    .local v4, "pageIndex":I
    const/4 v6, -0x1

    .line 555
    .local v6, "previousPageIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 556
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 559
    .local v3, "location":Lcom/sonymobile/home/data/ItemLocation;
    iget v7, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v7, v6, :cond_0

    iget v7, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    if-lt v5, v7, :cond_1

    .line 560
    :cond_0
    iget v6, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 561
    add-int/lit8 v4, v4, 0x1

    .line 562
    const/4 v5, 0x0

    .line 565
    :cond_1
    iget v7, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v4, v7, :cond_2

    iget v7, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-eq v5, v7, :cond_3

    :cond_2
    const/4 v7, 0x1

    :goto_1
    or-int/2addr v0, v7

    .line 567
    iput v4, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 568
    iput v5, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 570
    add-int/lit8 v5, v5, 0x1

    .line 571
    goto :goto_0

    .line 565
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 573
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_4
    return v0
.end method

.method private sortAlphabeticallyAndUpdateModel()V
    .locals 5

    .prologue
    .line 700
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v3}, Lcom/sonymobile/home/model/ResourceHandler;->getResources()Ljava/util/Map;

    move-result-object v2

    .line 701
    .local v2, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-static {v2}, Lcom/sonymobile/home/model/AppComparators;->getAlphabeticalComparator(Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 705
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    rem-int v3, v0, v3

    iput v3, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 706
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    div-int v3, v0, v3

    iput v3, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModel()V

    .line 710
    return-void
.end method

.method private syncBadges()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/badge/BadgeManager;->sync(Lcom/sonymobile/home/model/PackageHandler;)V

    .line 485
    :cond_0
    return-void
.end method

.method private updateItemLocations()Z
    .locals 2

    .prologue
    .line 517
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$8;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 536
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 538
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->removeGapsAndEmptyPages(Ljava/util/List;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public acceptItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 489
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addItemLast(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getNewLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 232
    const-string v0, "apptray"

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 0
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "onConfigCompletedCallback"    # Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 686
    return-void
.end method

.method public contains(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 240
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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

.method protected createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$6;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    return-object v0
.end method

.method protected createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$5;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    return-object v0
.end method

.method protected createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$7;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    return-object v0
.end method

.method protected doLoadModel()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->readPreferences()V

    .line 671
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->initPreconditions()V

    .line 673
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->getPageViewItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected doStoreModel(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->storePreferences()V

    .line 680
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sonymobile/home/storage/Storage;->syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 681
    return-void
.end method

.method public getActivityItems(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v8, -0x1

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "activityItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_1

    .line 285
    :cond_0
    return-object v0

    .line 257
    :cond_1
    iget-object v9, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 258
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    instance-of v9, v4, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v9, :cond_3

    .line 259
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    instance-of v9, v4, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v9, :cond_2

    .line 262
    iget-object v9, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    check-cast v4, Lcom/sonymobile/home/data/FolderItem;

    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v9, v4}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v7

    .line 264
    .local v7, "itemsInFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v7, :cond_2

    .line 265
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/data/Item;

    .line 266
    .local v6, "itemInFolder":Lcom/sonymobile/home/data/Item;
    instance-of v9, v6, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v9, :cond_4

    .line 267
    if-eqz p1, :cond_5

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 271
    .local v3, "indexOfItem":I
    :goto_2
    if-eq v3, v8, :cond_6

    .line 272
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/ActivityItem;

    .line 278
    .end local v6    # "itemInFolder":Lcom/sonymobile/home/data/Item;
    .local v5, "itemFromFolder":Lcom/sonymobile/home/data/ActivityItem;
    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "indexOfItem":I
    .end local v5    # "itemFromFolder":Lcom/sonymobile/home/data/ActivityItem;
    .restart local v6    # "itemInFolder":Lcom/sonymobile/home/data/Item;
    :cond_5
    move v3, v8

    .line 267
    goto :goto_2

    .line 275
    .restart local v3    # "indexOfItem":I
    :cond_6
    new-instance v5, Lcom/sonymobile/home/data/ActivityItem;

    check-cast v6, Lcom/sonymobile/home/data/ActivityItem;

    .end local v6    # "itemInFolder":Lcom/sonymobile/home/data/Item;
    invoke-direct {v5, v6}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 276
    .restart local v5    # "itemFromFolder":Lcom/sonymobile/home/data/ActivityItem;
    const-string v9, "apptray"

    invoke-virtual {v5, v9}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    goto :goto_3
.end method

.method getPreferences()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    return-object v0
.end method

.method protected initPreconditions()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->readStatisticsDataFromStorageSync()V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/badge/BadgeManager;->readFromStorage()V

    .line 206
    :cond_0
    return-void
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 690
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readPreferences()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->read()V

    .line 175
    return-void
.end method

.method public setMaxPageItemCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMaxPageItemCount:I

    .line 153
    return-void
.end method

.method protected storePreferences()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->store()V

    .line 179
    return-void
.end method

.method public storePreferencesAsync()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel$4;-><init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 194
    .local v0, "writePreferencesTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    return-void
.end method

.method protected syncItems(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "outRemovedItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/SyncHelper;->sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public updateModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateItemLocations()Z

    .line 500
    invoke-super {p0, p1}, Lcom/sonymobile/home/model/Model;->updateModel(Ljava/util/List;)V

    .line 501
    return-void
.end method

.method public updateModelAndItems(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "deletedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V

    .line 507
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModelToStorage(Ljava/util/List;)V

    .line 508
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    .line 456
    iget-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    if-nez v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->removeOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V

    .line 469
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 470
    .local v0, "items":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 471
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonymobile/home/model/ResourceHandler;->updateResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    goto :goto_0

    .line 474
    .end local v0    # "items":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z

    goto :goto_0
.end method
