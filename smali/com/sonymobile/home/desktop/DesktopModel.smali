.class public abstract Lcom/sonymobile/home/desktop/DesktopModel;
.super Lcom/sonymobile/home/model/Model;
.source "DesktopModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;,
        Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;,
        Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;,
        Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mColSpan:I

.field protected final mContext:Landroid/content/Context;

.field private mItemsToPutOnStage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoveDesktopItemsToStage:Z

.field private mNeedsResourceUpdate:Z

.field private final mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

.field private mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageChangeListeners:Lcom/sonymobile/home/util/WeakListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/WeakListenerList",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

.field protected final mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

.field private final mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

.field private final mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field protected final mRowSpan:I

.field private final mStageAddedDuringUpgrade:Z

.field private final mTipManager:Lcom/sonymobile/home/tip/TipManager;

.field private final mUpdateWidgetIdsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

.field protected mUpgradeStageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;ZLjava/lang/String;Lcom/sonymobile/home/desktop/DesktopPreferenceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "tipManager"    # Lcom/sonymobile/home/tip/TipManager;
    .param p8, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p9, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p10, "stageAddedDuringUpgrade"    # Z
    .param p11, "pageViewName"    # Ljava/lang/String;
    .param p12, "preferences"    # Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
    .param p13, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 226
    move-object v1, p0

    move-object/from16 v2, p11

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/home/model/Model;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mNeedsResourceUpdate:Z

    .line 156
    new-instance v1, Lcom/sonymobile/home/util/WeakListenerList;

    invoke-direct {v1}, Lcom/sonymobile/home/util/WeakListenerList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageChangeListeners:Lcom/sonymobile/home/util/WeakListenerList;

    .line 162
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopModel$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopModel$1;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .line 188
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopModel$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopModel$2;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    .line 228
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mStageAddedDuringUpgrade:Z

    .line 229
    if-eqz p10, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mMoveDesktopItemsToStage:Z

    .line 231
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    .line 232
    invoke-static {p1}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    .line 233
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mContext:Landroid/content/Context;

    .line 234
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 238
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mTipManager:Lcom/sonymobile/home/tip/TipManager;

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    .line 240
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .line 242
    const v1, 0x7f0d0011

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    .line 243
    const v1, 0x7f0d0010

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    .line 244
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpdateWidgetIdsListeners:Ljava/util/ArrayList;

    .line 246
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/DesktopModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mNeedsResourceUpdate:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/desktop/DesktopModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mNeedsResourceUpdate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/data/ItemCreator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/desktop/DesktopModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->loadAllResources()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/tip/TipManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mTipManager:Lcom/sonymobile/home/tip/TipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->setModelLoaded()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/home/desktop/DesktopModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonymobile/home/desktop/DesktopModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/RemoveSyncable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->packItems(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/data/ItemCreator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/Collection;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemsAndUpdatePersistentStorage(Ljava/util/Collection;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/DesktopModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->syncPreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeStageItemsFromDesktop(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->compressItemsIfNeeded(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeDuplicateWidgets(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->replaceItemsIfNeededAsync(Ljava/util/List;)V

    return-void
.end method

.method private compressItemsIfNeeded(Ljava/util/List;)Z
    .locals 24
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
    .line 1619
    .local p1, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->shouldCompressDesktopItems()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1620
    const/16 v16, 0x0

    .line 1784
    :goto_0
    return v16

    .line 1622
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->setShouldCompressDesktopItems(Z)V

    .line 1625
    const/16 v16, 0x0

    .line 1627
    .local v16, "modelChanged":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1630
    .local v21, "outOfBoundsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    new-instance v11, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V

    .line 1632
    .local v11, "desktopGridSizeChangeHelper":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;
    invoke-virtual {v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->estimatePreviousGridSize()V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v6

    .line 1637
    .local v6, "pageArray":[I
    move-object v9, v6

    .local v9, "arr$":[I
    array-length v15, v9

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v15, :cond_3

    aget v22, v9, v12

    .line 1638
    .local v22, "page":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v14

    .line 1639
    .local v14, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1641
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mMoveDesktopItemsToStage:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v2

    move/from16 v0, v22

    if-ne v0, v2, :cond_1

    .line 1642
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->handleItemsToPutOnStage(Ljava/util/Iterator;Ljava/util/List;)Z

    move-result v2

    or-int v16, v16, v2

    .line 1644
    :cond_1
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v23, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v11, v14, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->calculateNeededSpaceAndScaleFixedSizeWidgets(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    or-int v16, v16, v2

    .line 1648
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v11, v14, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->compressAndResizeItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    or-int v16, v16, v2

    .line 1637
    .end local v23    # "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1659
    .end local v14    # "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v22    # "page":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1660
    .local v13, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1661
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/home/data/Item;

    .line 1662
    .local v10, "currentItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1663
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1668
    .end local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    :cond_5
    if-nez v16, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1672
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mStageAddedDuringUpgrade:Z

    if-nez v2, :cond_7

    .line 1673
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->UPGRADE_CHANGE_GRID_SIZE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;->newInstance()Lcom/sonymobile/home/UpgradeChangeGridSizeDialogFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 1679
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->store()V

    goto/16 :goto_0

    .line 1686
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    .line 1691
    .local v7, "searchGrid":Lcom/sonymobile/grid/Grid;
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 1692
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1693
    .local v20, "outOfBoundsItemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_9
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1694
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/home/data/Item;

    .line 1695
    .restart local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v19

    .line 1696
    .local v19, "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    aput v3, v6, v2

    .line 1697
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v17

    .line 1700
    .local v17, "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v17, :cond_9

    .line 1701
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1703
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1708
    .end local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    .end local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v6

    .line 1710
    :cond_b
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1711
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/home/data/Item;

    .line 1712
    .restart local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v19

    .line 1713
    .restart local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v17

    .line 1716
    .restart local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v17, :cond_b

    .line 1717
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 1724
    .end local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    .end local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v6

    .line 1726
    :cond_d
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1727
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/home/data/Item;

    .line 1728
    .restart local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v19

    .line 1729
    .restart local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v17

    .line 1732
    .restart local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v17, :cond_d

    .line 1733
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 1740
    .end local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    .end local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_e
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 1741
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v2

    add-int/lit8 v18, v2, 0x1

    .line 1743
    .local v18, "newNumberOfPages":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getMaxNumberOfPages()I

    move-result v2

    move/from16 v0, v18

    if-gt v0, v2, :cond_12

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getRightPageId()I

    move-result v8

    .line 1748
    .local v8, "appendedPageId":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1749
    :cond_10
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1750
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/home/data/Item;

    .line 1751
    .restart local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v19

    .line 1752
    .restart local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v2, 0x0

    aput v8, v6, v2

    .line 1754
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v17

    .line 1757
    .restart local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v17, :cond_11

    .line 1758
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1760
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 1761
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sonymobile/home/desktop/DesktopModel;->isPageEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1765
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1766
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 1776
    .end local v8    # "appendedPageId":I
    .end local v10    # "currentItem":Lcom/sonymobile/home/data/Item;
    .end local v17    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v18    # "newNumberOfPages":I
    .end local v19    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_12
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1777
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1778
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1779
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1780
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 1784
    :cond_13
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method private createReplacementManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/desktop/DesktopReplacementManager;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, "replacementManager":Lcom/sonymobile/home/desktop/DesktopReplacementManager;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v4

    .line 1017
    .local v4, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v5

    .line 1020
    .local v5, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1021
    new-instance v3, Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;

    invoke-direct {v3, p1}, Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;-><init>(Landroid/content/Context;)V

    .line 1022
    .local v3, "parser":Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;

    .end local v0    # "replacementManager":Lcom/sonymobile/home/desktop/DesktopReplacementManager;
    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 1026
    .end local v3    # "parser":Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;
    .restart local v0    # "replacementManager":Lcom/sonymobile/home/desktop/DesktopReplacementManager;
    :cond_0
    return-object v0
.end method

.method private findWidgetById(Ljava/util/List;I)Lcom/sonymobile/home/data/WidgetItem;
    .locals 3
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/WidgetItem;",
            ">;I)",
            "Lcom/sonymobile/home/data/WidgetItem;"
        }
    .end annotation

    .prologue
    .line 1385
    .local p1, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/WidgetItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .line 1386
    .local v1, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1390
    .end local v1    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLastVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;
    .locals 2
    .param p1, "itemColSpan"    # I
    .param p2, "itemRowSpan"    # I
    .param p3, "startPageId"    # I

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    .line 1281
    .local v0, "searchGrid":Lcom/sonymobile/grid/Grid;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-static {p1, p2, v1, p3, v0}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getLastVacantLocationOnPage(IILjava/util/List;ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    return-object v1
.end method

.method public static getMinimumNumberOfPages()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method private getPageIndex(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v1

    .line 743
    .local v1, "pages":[I
    const/4 v0, 0x0

    .local v0, "pageIndex":I
    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 744
    aget v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 748
    .end local v0    # "pageIndex":I
    :goto_1
    return v0

    .line 743
    .restart local v0    # "pageIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I
    .locals 6
    .param p0, "preferences"    # Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getLeftPageId()I

    move-result v2

    .line 325
    .local v2, "leftMost":I
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 326
    .local v0, "count":I
    new-array v3, v0, [I

    .line 329
    .local v3, "result":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 330
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 331
    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-object v3
.end method

.method private handleItemsToPutOnStage(Ljava/util/Iterator;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1798
    .local p1, "itemsOnPageIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 1799
    .local v2, "modelChanged":Z
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1800
    .local v3, "rowIndexToMoveToStage":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1801
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1802
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v6, v1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v6, :cond_1

    instance-of v6, v1, Lcom/sonymobile/home/data/ShortcutItem;

    if-nez v6, :cond_1

    instance-of v6, v1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    if-eqz v6, :cond_0

    .line 1803
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->row:I

    if-ne v6, v3, :cond_0

    .line 1804
    instance-of v6, v1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 1805
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 1807
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/data/FolderItem;->addTemporaryItems(Ljava/util/List;)V

    .line 1809
    .end local v0    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    invoke-interface {v6, v1}, Lcom/sonymobile/home/data/ItemCreator;->createItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;

    move-result-object v4

    .line 1810
    .local v4, "stageItem":Lcom/sonymobile/home/data/Item;
    new-instance v5, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget-object v7, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v7, v7, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .line 1811
    .local v5, "stageItemLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v4, v5}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1812
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getStagePageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 1813
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemsToPutOnStage:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 1814
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemsToPutOnStage:Ljava/util/ArrayList;

    .line 1816
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemsToPutOnStage:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1819
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 1820
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 1821
    const/4 v2, 0x1

    goto :goto_0

    .line 1825
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v4    # "stageItem":Lcom/sonymobile/home/data/Item;
    .end local v5    # "stageItemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_4
    return v2
.end method

.method private loadAllResources()V
    .locals 4

    .prologue
    .line 911
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 913
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->sortItemsBasedOnDistanceToHomePage(Ljava/util/ArrayList;)V

    .line 914
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 916
    return-void
.end method

.method private mapOldWidgetsToNewWidgets([I[ILjava/util/ArrayList;)Ljava/util/List;
    .locals 9
    .param p1, "oldIds"    # [I
    .param p2, "newIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/WidgetItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    .local p3, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/WidgetItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v7, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1339
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_1

    .line 1340
    aget v5, p1, v1

    .line 1341
    .local v5, "oldId":I
    aget v2, p2, v1

    .line 1343
    .local v2, "newId":I
    invoke-direct {p0, p3, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->findWidgetById(Ljava/util/List;I)Lcom/sonymobile/home/data/WidgetItem;

    move-result-object v6

    .line 1344
    .local v6, "oldWidget":Lcom/sonymobile/home/data/WidgetItem;
    if-eqz v6, :cond_0

    .line 1345
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 1348
    .local v4, "newWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-direct {p0, v6, v4}, Lcom/sonymobile/home/desktop/DesktopModel;->widgetProvidersAreEqual(Lcom/sonymobile/home/data/WidgetItem;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1349
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->recreateWidgetWithNewId(Lcom/sonymobile/home/data/WidgetItem;I)Lcom/sonymobile/home/data/WidgetItem;

    move-result-object v3

    .line 1350
    .local v3, "newWidget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1351
    invoke-virtual {p0, v6}, Lcom/sonymobile/home/desktop/DesktopModel;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    .line 1352
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->addItem(Lcom/sonymobile/home/data/Item;)Z

    .line 1339
    .end local v3    # "newWidget":Lcom/sonymobile/home/data/WidgetItem;
    .end local v4    # "newWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1358
    .end local v2    # "newId":I
    .end local v5    # "oldId":I
    .end local v6    # "oldWidget":Lcom/sonymobile/home/data/WidgetItem;
    :cond_1
    return-object v7
.end method

.method private notifyPageAdded(I)V
    .locals 4
    .param p1, "pageId"    # I

    .prologue
    .line 2093
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageChangeListeners:Lcom/sonymobile/home/util/WeakListenerList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/WeakListenerList;->getListeners()Ljava/util/List;

    move-result-object v2

    .line 2094
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;

    .line 2095
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;->onPageAdded(I)V

    goto :goto_0

    .line 2097
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;
    :cond_0
    return-void
.end method

.method private notifyPageDeleted(I)V
    .locals 4
    .param p1, "deletedPageId"    # I

    .prologue
    .line 2100
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageChangeListeners:Lcom/sonymobile/home/util/WeakListenerList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/WeakListenerList;->getListeners()Ljava/util/List;

    move-result-object v2

    .line 2101
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;

    .line 2102
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;->onPageDeleted(I)V

    goto :goto_0

    .line 2104
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;
    :cond_0
    return-void
.end method

.method private notifyWidgetUpdateStarted()V
    .locals 3

    .prologue
    .line 1412
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpdateWidgetIdsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;

    .line 1413
    .local v1, "updateWidgetIdsListener":Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;
    invoke-interface {v1}, Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;->onUpdateWidgetIdsStarted()V

    goto :goto_0

    .line 1415
    .end local v1    # "updateWidgetIdsListener":Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;
    :cond_0
    return-void
.end method

.method private packItems(Ljava/util/List;)Z
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
    .line 571
    .local p1, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v7}, Lcom/sonymobile/home/settings/UserSettings;->isAutoPackItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v7}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->allowAutoPackingOfItems()Z

    move-result v7

    if-nez v7, :cond_2

    .line 572
    :cond_0
    const/4 v2, 0x0

    .line 589
    :cond_1
    return v2

    .line 574
    :cond_2
    const/4 v2, 0x0

    .line 575
    .local v2, "itemsHaveBeenPacked":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v4, "packedPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v6, 0x7fffffff

    .line 577
    .local v6, "previousPage":I
    const/4 v3, 0x0

    .line 578
    .local v3, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 579
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget v5, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 580
    .local v5, "page":I
    if-ne v5, v6, :cond_4

    if-nez v3, :cond_5

    .line 581
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    .line 582
    move v6, v5

    .line 584
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 585
    invoke-virtual {p0, v3, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->packItemsOnPage(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 586
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private recreateWidgetWithNewId(Lcom/sonymobile/home/data/WidgetItem;I)Lcom/sonymobile/home/data/WidgetItem;
    .locals 4
    .param p1, "oldWidget"    # Lcom/sonymobile/home/data/WidgetItem;
    .param p2, "newId"    # I

    .prologue
    .line 1369
    new-instance v0, Lcom/sonymobile/home/data/WidgetItem;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1371
    .local v0, "newWidget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1372
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 1373
    return-object v0
.end method

.method private removeDuplicateWidgets(Ljava/util/Collection;)Z
    .locals 9
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
    .line 1531
    .local p1, "itemsRemovedFromModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1534
    .local v2, "copyOfWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/WidgetItem;>;"
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 1535
    .local v4, "modelItem":Lcom/sonymobile/home/data/Item;
    instance-of v8, v4, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v8, :cond_0

    .line 1536
    check-cast v4, Lcom/sonymobile/home/data/WidgetItem;

    .end local v4    # "modelItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1540
    :cond_1
    const/4 v0, 0x0

    .line 1541
    .local v0, "changed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v1, "checkedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/WidgetItem;

    .line 1544
    .local v7, "widgetToCheck":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v7}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v6

    .line 1547
    .local v6, "widgetId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1548
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    invoke-interface {v8, v7}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v5

    .line 1549
    .local v5, "removed":Z
    if-eqz v5, :cond_2

    .line 1550
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1551
    const/4 v0, 0x1

    goto :goto_1

    .line 1554
    .end local v5    # "removed":Z
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1558
    .end local v6    # "widgetId":I
    .end local v7    # "widgetToCheck":Lcom/sonymobile/home/data/WidgetItem;
    :cond_4
    return v0
.end method

.method private removeStageItemsFromDesktop(Ljava/util/List;)Z
    .locals 4
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
    .line 937
    .local p1, "removedItemsOut":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 939
    .local v2, "modelChanged":Z
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradeStageItems:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 940
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradeStageItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 941
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeAllOccurrences(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 942
    goto :goto_0

    .line 944
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradeStageItems:Ljava/util/List;

    .line 947
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private replaceItemsIfNeededAsync(Ljava/util/List;)V
    .locals 6
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
    .line 957
    .local p1, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v2, "replaceableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mIsDestroyed:Z

    if-nez v4, :cond_1

    .line 960
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 961
    .local v1, "itemRemoved":Lcom/sonymobile/home/data/Item;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isItemReplaceable(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 962
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 966
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemRemoved":Lcom/sonymobile/home/data/Item;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1003
    :cond_2
    :goto_1
    return-void

    .line 970
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->createReplacementManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/desktop/DesktopReplacementManager;

    move-result-object v3

    .line 973
    .local v3, "replacementManager":Lcom/sonymobile/home/desktop/DesktopReplacementManager;
    if-eqz v3, :cond_2

    .line 974
    const v4, 0x7f060007

    new-instance v5, Lcom/sonymobile/home/desktop/DesktopModel$6;

    invoke-direct {v5, p0, v3}, Lcom/sonymobile/home/desktop/DesktopModel$6;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/DesktopReplacementManager;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->findReplacingItemsAsync(Ljava/util/List;ILcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;)V

    .line 1001
    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->shutdownWhenFinished()V

    goto :goto_1
.end method

.method private reserveFirstAvailableLocationOnPage(Lcom/sonymobile/home/itemorganizer/GroupItemMover;Ljava/util/List;)Lcom/sonymobile/grid/GridRect;
    .locals 6
    .param p1, "itemMover"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/itemorganizer/GroupItemMover;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Lcom/sonymobile/grid/GridRect;"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 681
    invoke-virtual {p1, p2, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->resetWidgetAndIconLocations(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    .line 682
    new-instance v1, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v1}, Lcom/sonymobile/grid/GridRect;-><init>()V

    .line 683
    .local v1, "itemGrid":Lcom/sonymobile/grid/GridRect;
    iput v5, v1, Lcom/sonymobile/grid/GridRect;->col:I

    .line 684
    iput v5, v1, Lcom/sonymobile/grid/GridRect;->row:I

    .line 685
    iput v4, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 686
    iput v4, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 688
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    if-ge v2, v4, :cond_2

    .line 689
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    if-ge v0, v4, :cond_1

    .line 690
    iput v0, v1, Lcom/sonymobile/grid/GridRect;->col:I

    .line 691
    iput v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    .line 692
    invoke-virtual {p1, v1, v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->reserveLocation(Lcom/sonymobile/grid/GridRect;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    .end local v0    # "col":I
    .end local v1    # "itemGrid":Lcom/sonymobile/grid/GridRect;
    :goto_2
    return-object v1

    .line 689
    .restart local v0    # "col":I
    .restart local v1    # "itemGrid":Lcom/sonymobile/grid/GridRect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 688
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "col":I
    :cond_2
    move-object v1, v3

    .line 697
    goto :goto_2
.end method

.method private setFirstAvailableLocation(Lcom/sonymobile/home/itemorganizer/GroupItemMover;ILcom/sonymobile/home/data/ItemLocation;)Ljava/util/List;
    .locals 7
    .param p1, "itemMover"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    .param p2, "startPageIndex"    # I
    .param p3, "spillOverItem"    # Lcom/sonymobile/home/data/ItemLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/itemorganizer/GroupItemMover;",
            "I",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v3

    .line 713
    .local v3, "pages":[I
    const/4 v4, 0x0

    .line 715
    .local v4, "reservedGrid":Lcom/sonymobile/grid/GridRect;
    move v2, p2

    .local v2, "pageIndex":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 716
    aget v5, v3, v2

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    .line 717
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->reserveFirstAvailableLocationOnPage(Lcom/sonymobile/home/itemorganizer/GroupItemMover;Ljava/util/List;)Lcom/sonymobile/grid/GridRect;

    move-result-object v4

    .line 718
    if-eqz v4, :cond_3

    .line 719
    aget v5, v3, v2

    iput v5, p3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 720
    iget-object v5, p3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v5, v4}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 724
    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->appendPage()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v1

    .line 727
    .local v1, "page":I
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    .line 728
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->reserveFirstAvailableLocationOnPage(Lcom/sonymobile/home/itemorganizer/GroupItemMover;Ljava/util/List;)Lcom/sonymobile/grid/GridRect;

    move-result-object v4

    .line 729
    if-eqz v4, :cond_1

    .line 730
    iput v1, p3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 731
    iget-object v5, p3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v5, v4}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 735
    .end local v1    # "page":I
    :cond_1
    if-nez v4, :cond_2

    .line 736
    const/4 v0, 0x0

    .line 738
    :cond_2
    return-object v0

    .line 715
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setFirstVacantLocationFor(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "newLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getFirstVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 664
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 666
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const/4 v1, 0x1

    .line 669
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sortItemsBasedOnDistanceToHomePage(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v0

    .line 920
    .local v0, "currentHomePage":I
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopModel$5;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/home/desktop/DesktopModel$5;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 928
    return-void
.end method

.method private syncPreferences()Z
    .locals 11

    .prologue
    .line 475
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getLeftPageId()I

    move-result v8

    .line 476
    .local v8, "prefMinPage":I
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getRightPageId()I

    move-result v7

    .line 477
    .local v7, "prefMaxPage":I
    const v5, 0x7fffffff

    .line 478
    .local v5, "modelMinPage":I
    const/high16 v4, -0x80000000

    .line 479
    .local v4, "modelMaxPage":I
    const/4 v0, 0x0

    .line 481
    .local v0, "change":Z
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 482
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v9

    iget v6, v9, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 484
    .local v6, "page":I
    if-ge v6, v5, :cond_1

    .line 485
    move v5, v6

    .line 487
    :cond_1
    if-le v6, v4, :cond_0

    .line 488
    move v4, v6

    goto :goto_0

    .line 495
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    .end local v6    # "page":I
    :cond_2
    if-ge v5, v8, :cond_3

    .line 496
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9, v5}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 497
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v10}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v10

    add-int/2addr v10, v8

    sub-int/2addr v10, v5

    invoke-virtual {v9, v10}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 499
    move v8, v5

    .line 500
    const/4 v0, 0x1

    .line 503
    :cond_3
    if-ge v7, v4, :cond_4

    .line 504
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v10}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v10

    add-int/2addr v10, v4

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 506
    move v7, v4

    .line 507
    const/4 v0, 0x1

    .line 510
    :cond_4
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getHomePageId()I

    move-result v1

    .line 511
    .local v1, "homePage":I
    if-lt v1, v8, :cond_5

    if-le v1, v7, :cond_6

    .line 512
    :cond_5
    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    add-int v10, v8, v7

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setHomePageId(I)V

    .line 513
    const/4 v0, 0x1

    .line 516
    :cond_6
    return v0
.end method

.method private widgetProvidersAreEqual(Lcom/sonymobile/home/data/WidgetItem;Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/WidgetItem;
    .param p2, "newInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1403
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract activateModel()V
.end method

.method protected abstract addAllNewlyInstalledApps(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public addItemAtFirstVacantLocation(Lcom/sonymobile/home/data/Item;III)Z
    .locals 3
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;
    .param p2, "itemColSpan"    # I
    .param p3, "itemRowSpan"    # I
    .param p4, "startPageId"    # I

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v2

    .line 1230
    .local v2, "pageArray":[I
    const/4 v0, 0x0

    .line 1231
    .local v0, "itemAdded":Z
    if-eqz v2, :cond_0

    .line 1232
    invoke-virtual {p0, p2, p3, p4}, Lcom/sonymobile/home/desktop/DesktopModel;->getFirstVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 1234
    .local v1, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v1, :cond_0

    .line 1235
    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1236
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 1240
    .end local v1    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    return v0
.end method

.method public addItemAtLastVacantLocation(Lcom/sonymobile/home/data/Item;III)Z
    .locals 3
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;
    .param p2, "itemColSpan"    # I
    .param p3, "itemRowSpan"    # I
    .param p4, "startPageId"    # I

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v2

    .line 1265
    .local v2, "pageArray":[I
    const/4 v0, 0x0

    .line 1266
    .local v0, "itemAdded":Z
    if-eqz v2, :cond_0

    .line 1267
    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/home/desktop/DesktopModel;->getLastVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 1269
    .local v1, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v1, :cond_0

    .line 1270
    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1271
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 1275
    .end local v1    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    return v0
.end method

.method public addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1424
    const/4 v0, 0x0

    .line 1425
    .local v0, "added":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 1429
    :cond_0
    if-eqz v0, :cond_1

    .line 1430
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    .line 1431
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage()V

    .line 1434
    :cond_1
    return v0
.end method

.method public addOnResourceBatchLoadedListener(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    return-void
.end method

.method public addPageChangeListener(Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageChangeListeners:Lcom/sonymobile/home/util/WeakListenerList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/WeakListenerList;->addListener(Ljava/lang/Object;)V

    .line 2080
    return-void
.end method

.method public addShortcutToDesktop(Lcom/sonymobile/home/data/ShortcutItem;ZLcom/sonymobile/home/storage/OnWriteCompletedCallback;)Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    .locals 7
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/ShortcutItem;
    .param p2, "isDuplicateAllowed"    # Z
    .param p3, "onWriteCompletedCallback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    const/4 v6, 0x1

    .line 2040
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-static {p1, v5}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->findShortcutDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Ljava/util/List;)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 2043
    .local v1, "duplicateItem":Lcom/sonymobile/home/data/Item;
    instance-of v5, v1, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->isShortcutAccepted(Lcom/sonymobile/home/data/ShortcutItem;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2044
    sget-object v4, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->UNDEFINED_ERROR:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .line 2067
    .local v4, "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    :goto_0
    return-object v4

    .line 2045
    .end local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    :cond_0
    if-nez p2, :cond_1

    if-nez v1, :cond_4

    .line 2046
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v5

    invoke-virtual {p0, v6, v6, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getFirstVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 2047
    .local v3, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v3, :cond_3

    .line 2048
    invoke-virtual {p1, v3}, Lcom/sonymobile/home/data/ShortcutItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 2049
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageViewName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/sonymobile/home/data/ShortcutItem;->setPageViewName(Ljava/lang/String;)V

    .line 2051
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2052
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2053
    invoke-virtual {p0, v2, p3}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemsAndUpdatePersistentStorage(Ljava/util/Collection;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z

    move-result v0

    .line 2056
    .local v0, "addSuccessful":Z
    if-eqz v0, :cond_2

    .line 2057
    sget-object v4, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->CREATED:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .restart local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    goto :goto_0

    .line 2059
    .end local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    :cond_2
    sget-object v4, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->UNDEFINED_ERROR:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .restart local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    goto :goto_0

    .line 2062
    .end local v0    # "addSuccessful":Z
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    :cond_3
    sget-object v4, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->NO_SPACE:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .restart local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    goto :goto_0

    .line 2065
    .end local v3    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    :cond_4
    sget-object v4, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->EXISTS:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .restart local v4    # "shortcutCreatedStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    goto :goto_0
.end method

.method public addUpdateWidgetIdsListener(Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;)V
    .locals 1
    .param p1, "updateWidgetListener"    # Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpdateWidgetIdsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    return-void
.end method

.method public appendPage()I
    .locals 3

    .prologue
    .line 397
    const v0, 0x7fffffff

    .line 399
    .local v0, "appendedPageId":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->canAddNewPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 401
    .local v1, "newNumberOfPages":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 402
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getRightPageId()I

    move-result v0

    .line 404
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyPageAdded(I)V

    .line 405
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->storePreferencesAsync()V

    .line 408
    .end local v1    # "newNumberOfPages":I
    :cond_0
    return v0
.end method

.method public canAddNewPage()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getMaxNumberOfPages()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 5
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "onConfigCompletedCallback"    # Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 1850
    instance-of v1, p1, Lcom/sonymobile/home/configuration/DesktopConfig;

    if-nez v1, :cond_0

    .line 1851
    new-instance v1, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v2, "Wrong config type"

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopModel;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    .line 1854
    check-cast v0, Lcom/sonymobile/home/configuration/DesktopConfig;

    .line 1856
    .local v0, "desktopConfig":Lcom/sonymobile/home/configuration/DesktopConfig;
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/DesktopConfig;->getItems()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/home/desktop/DesktopModel$7;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/home/desktop/DesktopModel$7;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/configuration/DesktopConfig;)V

    invoke-virtual {p0, v1, v2, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->configureModel(Ljava/util/List;Lcom/sonymobile/home/model/Model$ModelStateConfigurable;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V

    .line 1882
    return-void
.end method

.method public configureVerizonDesktop(Lcom/sonymobile/home/desktop/VerizonDesktopConfig;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 4
    .param p1, "desktopConfig"    # Lcom/sonymobile/home/desktop/VerizonDesktopConfig;
    .param p2, "onWriteCompletedCallback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->clear()V

    .line 1902
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->getNumberOfPages()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->setPageCount(I)V

    .line 1904
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->getItems()Ljava/util/List;

    move-result-object v1

    .line 1906
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopModel$8;

    invoke-direct {v0, p0, v1, p2}, Lcom/sonymobile/home/desktop/DesktopModel$8;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 1930
    .local v0, "createItemsTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1931
    return-void
.end method

.method public createConfig()Lcom/sonymobile/home/configuration/Config;
    .locals 8

    .prologue
    .line 1886
    new-instance v0, Lcom/sonymobile/home/configuration/DesktopConfig;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/configuration/DesktopConfig;-><init>(IIIIILjava/lang/String;)V

    .line 1888
    .local v0, "config":Lcom/sonymobile/home/configuration/DesktopConfig;
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getConfigItems()Ljava/util/List;

    move-result-object v7

    .line 1889
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v0, v7}, Lcom/sonymobile/home/configuration/DesktopConfig;->addItems(Ljava/util/List;)V

    .line 1890
    return-object v0
.end method

.method protected createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/DesktopModel$1;)V

    return-object v0
.end method

.method protected createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/DesktopModel$1;)V

    return-object v0
.end method

.method protected createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .locals 1

    .prologue
    .line 521
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopModel$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopModel$4;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;)V

    return-object v0
.end method

.method public deleteItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "onWriteCompletedCallback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    .line 1965
    if-eqz p1, :cond_0

    .line 1966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v0, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    .line 1968
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    .line 1969
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1970
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 1972
    .end local v0    # "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public deleteItems(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 3
    .param p2, "onWriteCompletedCallback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/storage/OnWriteCompletedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1986
    .local p1, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1987
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 1989
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    .line 1990
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 1991
    return-void
.end method

.method public deletePage(I)V
    .locals 9
    .param p1, "deletedPage"    # I

    .prologue
    .line 1445
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    .local v5, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1447
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget v3, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 1448
    .local v3, "itemPage":I
    if-ne v3, p1, :cond_0

    .line 1449
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1454
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "itemPage":I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 1455
    .local v4, "itemToRemove":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v4}, Lcom/sonymobile/home/desktop/DesktopModel;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_1

    .line 1460
    .end local v4    # "itemToRemove":Lcom/sonymobile/home/data/Item;
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v7

    if-eq p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v7

    if-eq p1, v7, :cond_4

    .line 1461
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1462
    .restart local v2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget v3, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 1463
    .restart local v3    # "itemPage":I
    if-le v3, p1, :cond_3

    .line 1465
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    iput v8, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    goto :goto_2

    .line 1470
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "itemPage":I
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v6

    .line 1471
    .local v6, "leftmostPage":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v0

    .line 1472
    .local v0, "currentHomePage":I
    if-ne p1, v6, :cond_6

    .line 1474
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 1475
    if-ne p1, v0, :cond_5

    .line 1476
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->setHomePageId(I)V

    .line 1488
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v8}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 1489
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyPageDeleted(I)V

    .line 1490
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;)V

    .line 1491
    return-void

    .line 1482
    :cond_6
    if-lt v0, p1, :cond_5

    .line 1483
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->setHomePageId(I)V

    goto :goto_3
.end method

.method public deletePagesAfter(I)V
    .locals 1
    .param p1, "startPageId"    # I

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v0

    .local v0, "page":I
    :goto_0
    if-le v0, p1, :cond_0

    .line 1500
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->deletePage(I)V

    .line 1499
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1502
    :cond_0
    return-void
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
    .line 1563
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->readPreferences()V

    .line 1565
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v0}, Lcom/sonymobile/home/storage/Storage;->isNewDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->setShouldCompressDesktopItems(Z)V

    .line 1568
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->store()V

    .line 1574
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->getPageViewItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1570
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->prepareToCompressItemsIfNeeded()V

    goto :goto_0
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
    .line 1842
    .local p1, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->storePreferences()V

    .line 1844
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sonymobile/home/storage/Storage;->syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1845
    return-void
.end method

.method public findAdvWidgetItemWithUuid(Ljava/util/UUID;)Lcom/sonymobile/home/data/AdvWidgetItem;
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 1941
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1942
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v3, v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1943
    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 1944
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1949
    .end local v0    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAddSyncable()Lcom/sonymobile/home/model/AddSyncable;
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnSpan()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    return v0
.end method

.method protected getFirstVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;
    .locals 6
    .param p1, "itemColSpan"    # I
    .param p2, "itemRowSpan"    # I
    .param p3, "startPageId"    # I

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v5

    .line 1246
    .local v5, "searchGrid":Lcom/sonymobile/grid/Grid;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v4

    move v0, p1

    move v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    return-object v0
.end method

.method public getHomePageId()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getHomePageId()I

    move-result v0

    return v0
.end method

.method public final getItemsToPutOnStage()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemsToPutOnStage:Ljava/util/ArrayList;

    .line 1836
    .local v0, "itemsToPutOnStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItemsToPutOnStage:Ljava/util/ArrayList;

    .line 1837
    return-object v0
.end method

.method public getLeftPageId()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getLeftPageId()I

    move-result v0

    return v0
.end method

.method public getMaxNumberOfPages()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getMaxNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getPages()[I
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "pages":[I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v0

    .line 278
    :cond_0
    return-object v0
.end method

.method public getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    return-object v0
.end method

.method public getRightPageId()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getRightPageId()I

    move-result v0

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    return v0
.end method

.method public abstract getStagePageViewName()Ljava/lang/String;
.end method

.method public isItemRemovable(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method protected isShortcutAccepted(Lcom/sonymobile/home/data/ShortcutItem;Z)Z
    .locals 1
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/ShortcutItem;
    .param p2, "foundDuplicateActivityItem"    # Z

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-static {v0, p1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->isPackageValid(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/data/ShortcutItem;)Z

    move-result v0

    return v0
.end method

.method public isSpaceAvailable(Lcom/sonymobile/grid/Grid;II)Z
    .locals 8
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "colSpan"    # I
    .param p3, "rowSpan"    # I

    .prologue
    const/4 v7, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v4

    .line 1208
    .local v4, "pageArray":[I
    const/4 v6, 0x0

    .line 1210
    .local v6, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v4, :cond_0

    .line 1211
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    aget v3, v4, v7

    move v0, p2

    move v1, p3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    .line 1214
    :cond_0
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v0, 0x1

    .line 1506
    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-lt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-lt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    if-gt v1, v2, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getLeftPageId()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getRightPageId()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 1515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveItemToNextPage(Lcom/sonymobile/home/data/Item;)Ljava/util/List;
    .locals 10
    .param p1, "spillOverItemToBeMoved"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 603
    new-instance v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    iget v8, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    invoke-direct {v0, v7, v8}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;-><init>(II)V

    .line 604
    .local v0, "itemMover":Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget v3, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 605
    .local v3, "page":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v2, "newLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    move-object v6, p1

    .line 607
    .local v6, "spillOverItem":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageIndex(I)I

    move-result v4

    .line 608
    .local v4, "pageIndex":I
    if-gez v4, :cond_1

    .line 610
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->setFirstVacantLocationFor(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z

    .line 651
    :cond_0
    :goto_0
    return-object v2

    .line 614
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 615
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    invoke-direct {p0, v0, v4, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->setFirstAvailableLocation(Lcom/sonymobile/home/itemorganizer/GroupItemMover;ILcom/sonymobile/home/data/ItemLocation;)Ljava/util/List;

    move-result-object v1

    .line 617
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v1, :cond_2

    .line 619
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->setFirstVacantLocationFor(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z

    goto :goto_0

    .line 622
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget v7, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-direct {p0, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageIndex(I)I

    move-result v4

    .line 626
    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->packItems(Ljava/util/List;Z)Ljava/util/List;

    .line 627
    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeSpillOverItem()Lcom/sonymobile/home/data/Item;

    move-result-object v6

    .line 628
    :goto_1
    if-eqz v6, :cond_0

    .line 630
    add-int/lit8 v4, v4, 0x1

    .line 631
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v5

    .line 632
    .local v5, "pages":[I
    array-length v7, v5

    if-lt v4, v7, :cond_4

    .line 633
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->appendPage()I

    move-result v7

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_3

    .line 635
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->setFirstVacantLocationFor(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z

    goto :goto_0

    .line 638
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v5

    .line 639
    array-length v7, v5

    add-int/lit8 v4, v7, -0x1

    .line 641
    :cond_4
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    invoke-direct {p0, v0, v4, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->setFirstAvailableLocation(Lcom/sonymobile/home/itemorganizer/GroupItemMover;ILcom/sonymobile/home/data/ItemLocation;)Ljava/util/List;

    move-result-object v1

    .line 642
    if-nez v1, :cond_5

    .line 644
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->setFirstVacantLocationFor(Lcom/sonymobile/home/data/Item;Ljava/util/List;)Z

    goto :goto_0

    .line 647
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->packItems(Ljava/util/List;Z)Ljava/util/List;

    .line 649
    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeSpillOverItem()Lcom/sonymobile/home/data/Item;

    move-result-object v6

    .line 650
    goto :goto_1
.end method

.method public packItemsOnPage(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p2, "itemToRemove"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget-object v0, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 760
    .local v0, "itemGrid":Lcom/sonymobile/grid/GridRect;
    new-instance v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;-><init>(II)V

    .line 761
    .local v1, "itemMover":Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    invoke-virtual {v1, p1, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->resetWidgetAndIconLocations(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    .line 762
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->restore(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected prepareForHomeV8Upgrade()V
    .locals 0

    .prologue
    .line 1590
    return-void
.end method

.method public abstract prepareToActivateModel(Z)V
.end method

.method protected prepareToCompressItemsIfNeeded()V
    .locals 0

    .prologue
    .line 1583
    return-void
.end method

.method public prependPage()I
    .locals 4

    .prologue
    .line 418
    const v2, 0x7fffffff

    .line 420
    .local v2, "prependedPageId":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->canAddNewPage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 422
    .local v1, "newNumberOfPages":I
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getLeftPageId()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 423
    .local v0, "newLeftPageId":I
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 424
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 425
    move v2, v0

    .line 427
    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyPageAdded(I)V

    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->storePreferencesAsync()V

    .line 431
    .end local v0    # "newLeftPageId":I
    .end local v1    # "newNumberOfPages":I
    :cond_0
    return v2
.end method

.method protected readPreferences()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->read()V

    .line 445
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->read()V

    .line 446
    return-void
.end method

.method public removeOnResourceBatchLoadedListener(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1196
    :cond_0
    return-void
.end method

.method public removePageChangeListener(Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPageChangeListeners:Lcom/sonymobile/home/util/WeakListenerList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/WeakListenerList;->removeListener(Ljava/lang/Object;)V

    .line 2090
    return-void
.end method

.method public removeUpdateWidgetIdsListener(Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;)V
    .locals 1
    .param p1, "updateWidgetListener"    # Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpdateWidgetIdsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 823
    return-void
.end method

.method public reserveLocationAndPackItems(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/grid/GridRect;
    .locals 8
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 774
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    if-nez v5, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-object v4

    .line 777
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    iget-object v0, v5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 778
    .local v0, "itemGrid":Lcom/sonymobile/grid/GridRect;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    iget v3, v5, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 779
    .local v3, "page":I
    new-instance v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mColSpan:I

    iget v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRowSpan:I

    invoke-direct {v1, v5, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;-><init>(II)V

    .line 780
    .local v1, "itemMover":Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    .line 781
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v1, v2, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->resetWidgetAndIconLocations(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    .line 782
    invoke-virtual {v1, v0, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->reserveLocation(Lcom/sonymobile/grid/GridRect;Z)Z

    .line 783
    invoke-virtual {v1, v2, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->packItems(Ljava/util/List;Z)Ljava/util/List;

    .line 784
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getClosestVacantLocation(Lcom/sonymobile/grid/GridRect;)Lcom/sonymobile/grid/GridRect;

    move-result-object v4

    goto :goto_0
.end method

.method public setHomePageId(I)V
    .locals 1
    .param p1, "pageId"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setHomePageId(I)V

    .line 343
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->storePreferencesAsync()V

    .line 344
    return-void
.end method

.method public setPageCount(I)V
    .locals 2
    .param p1, "nbrOfPages"    # I

    .prologue
    .line 380
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getMaxNumberOfPages()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setHomePageId(I)V

    .line 384
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    .line 385
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->storePreferencesAsync()V

    .line 387
    :cond_0
    return-void
.end method

.method public setResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V
    .locals 3
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->removeOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V

    .line 1139
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 1141
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V

    .line 1143
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->loadAllResources()V

    .line 1145
    :cond_1
    return-void
.end method

.method protected storePreferences()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->store()V

    .line 450
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->store()V

    .line 451
    return-void
.end method

.method public storePreferencesAsync()V
    .locals 3

    .prologue
    .line 457
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopModel$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopModel$3;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 466
    .local v0, "writePreferencesTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 467
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
    .line 1520
    .local p1, "outRemovedItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->getAddSyncable()Lcom/sonymobile/home/model/AddSyncable;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/SyncHelper;->sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public updateAppWidgetIds([I[ILcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 6
    .param p1, "oldIds"    # [I
    .param p2, "newIds"    # [I
    .param p3, "callback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    .line 1296
    const/4 v2, 0x0

    .line 1297
    .local v2, "modelChanged":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v4, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/WidgetItem;>;"
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1299
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v5, v1, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v5, :cond_0

    .line 1300
    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1304
    :cond_1
    invoke-direct {p0, p1, p2, v4}, Lcom/sonymobile/home/desktop/DesktopModel;->mapOldWidgetsToNewWidgets([I[ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    .line 1306
    .local v3, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1307
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyWidgetUpdateStarted()V

    .line 1308
    const/4 v2, 0x1

    .line 1311
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v5}, Lcom/sonymobile/home/model/PackageHandler;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1312
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->syncItems(Ljava/util/Collection;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1315
    :cond_3
    if-eqz v2, :cond_5

    .line 1316
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V

    .line 1317
    invoke-virtual {p0, v3, p3}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 1323
    :cond_4
    :goto_1
    return-void

    .line 1319
    :cond_5
    if-eqz p3, :cond_4

    .line 1320
    invoke-interface {p3}, Lcom/sonymobile/home/storage/OnWriteCompletedCallback;->onWriteCompleted()V

    goto :goto_1
.end method

.method public updateResources()V
    .locals 6

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mIsDestroyed:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v3, :cond_2

    .line 1155
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    if-nez v3, :cond_3

    .line 1156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

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

    .line 1160
    .local v1, "itemInModel":Lcom/sonymobile/home/data/Item;
    instance-of v3, v1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v3, :cond_0

    .line 1161
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1164
    .end local v1    # "itemInModel":Lcom/sonymobile/home/data/Item;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1165
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Lcom/sonymobile/home/model/ResourceHandler;->updateResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 1172
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    :goto_1
    return-void

    .line 1169
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mNeedsResourceUpdate:Z

    goto :goto_1
.end method

.method public warmUpWidgets()V
    .locals 7

    .prologue
    .line 542
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v1, v6, Landroid/content/res/Configuration;->orientation:I

    .line 544
    .local v1, "currentOrientation":I
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v6, :cond_2

    .line 545
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 546
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    instance-of v6, v4, Lcom/sonymobile/home/data/WidgetItem;

    if-nez v6, :cond_1

    instance-of v6, v4, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v6, :cond_0

    .line 547
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v6, v4}, Lcom/sonymobile/home/model/ResourceHandler;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v5

    .line 548
    .local v5, "resource":Lcom/sonymobile/home/model/ResourceItem;
    instance-of v6, v5, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    if-eqz v6, :cond_0

    .line 549
    check-cast v5, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;

    .end local v5    # "resource":Lcom/sonymobile/home/model/ResourceItem;
    invoke-virtual {v5}, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->getWidget()Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v0

    .line 550
    .local v0, "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;

    .line 552
    .local v2, "hostView":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->getUpdateOrientation()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->getUpdateOrientation()I

    move-result v6

    if-eq v6, v1, :cond_0

    .line 555
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v6, v4}, Lcom/sonymobile/home/model/ResourceHandler;->updateResources(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    goto :goto_0

    .line 562
    .end local v0    # "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    .end local v2    # "hostView":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-void
.end method
