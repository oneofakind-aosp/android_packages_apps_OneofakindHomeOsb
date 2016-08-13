.class public Lcom/sonymobile/home/settings/UserSettings;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/settings/UserSettings$13;,
        Lcom/sonymobile/home/settings/UserSettings$PageTransition;,
        Lcom/sonymobile/home/settings/UserSettings$IconType;,
        Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    }
.end annotation


# instance fields
.field private volatile mAllowRotate:Z

.field private volatile mAppTrayIconSize:I

.field private volatile mAutoPackItems:Z

.field private volatile mAutomaticDesktop:Z

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAppTrayIconSize:I

.field private final mDefaultAutoPackItems:Z

.field private final mDefaultAutomaticDesktopEnabled:Z

.field private final mDefaultIconSize:I

.field private final mDefaultIsKeyboardShownInSearchApps:Z

.field private final mDefaultOnlineSuggestionsOn:Z

.field private final mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field private final mDefaultPersonalizeRecommendations:Z

.field private final mDefaultShowStageLabels:Z

.field private final mDefaultStageIconSize:I

.field private final mDefaultStraightToDesktopMode:Z

.field private mIconMode:Ljava/lang/String;

.field private volatile mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

.field private volatile mIconSize:I

.field private volatile mIsKeyboardShownInSearchApps:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLoaded:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnlineSuggestionsFeatureOn:Z

.field private volatile mOnlineSuggestionsOn:Z

.field private volatile mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field private volatile mPersonalizeRecommendations:Z

.field private final mResourceHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/ResourceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mShowStageLabels:Z

.field private volatile mStageIconSize:I

.field private volatile mStraightToDesktopMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mResourceHandlers:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    .line 222
    const-string v0, "default"

    iput-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mMainHandler:Landroid/os/Handler;

    .line 306
    const v0, 0x7f0b003e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultIconSize:I

    .line 307
    const v0, 0x7f0b002b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAppTrayIconSize:I

    .line 308
    const v0, 0x7f0b0041

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultStageIconSize:I

    .line 309
    const v0, 0x7f0a001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultStraightToDesktopMode:Z

    .line 310
    const v0, 0x7f0a001e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultShowStageLabels:Z

    .line 311
    const v0, 0x7f0a0019

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutoPackItems:Z

    .line 312
    const v0, 0x7f0a0021

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutomaticDesktopEnabled:Z

    .line 313
    const v0, 0x7f08010b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->getValidPageTransitionFromString(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 315
    const v0, 0x7f0a001d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultIsKeyboardShownInSearchApps:Z

    .line 317
    const v0, 0x7f0a0025

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultPersonalizeRecommendations:Z

    .line 319
    const v0, 0x7f0a001a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultOnlineSuggestionsOn:Z

    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->allowOnlineSearchSuggestions(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsFeatureOn:Z

    .line 321
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultIconSize:I

    iput v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I

    .line 322
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAppTrayIconSize:I

    iput v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAppTrayIconSize:I

    .line 323
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultStageIconSize:I

    iput v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mStageIconSize:I

    .line 324
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultStraightToDesktopMode:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z

    .line 325
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultShowStageLabels:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z

    .line 326
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutoPackItems:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z

    .line 327
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutomaticDesktopEnabled:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z

    .line 328
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultIsKeyboardShownInSearchApps:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIsKeyboardShownInSearchApps:Z

    .line 329
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    iput-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 330
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultPersonalizeRecommendations:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z

    .line 331
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultOnlineSuggestionsOn:Z

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/settings/UserSettings;->setDefaultUserSettingsIfNeeded(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIsKeyboardShownInSearchApps:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultIsKeyboardShownInSearchApps:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultPersonalizeRecommendations:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/settings/UserSettings;Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/settings/UserSettings;->getValidPageTransitionFromString(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultOnlineSuggestionsOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mLoaded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sonymobile/home/settings/UserSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/home/settings/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAppTrayIconSize:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/settings/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAppTrayIconSize:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/home/settings/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mStageIconSize:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sonymobile/home/settings/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultStageIconSize:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/settings/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sonymobile/home/settings/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultIconSize:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyIconSizeChanged()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->notifyAllowRotateChanged(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyStraightToDesktopModeChanged()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/home/settings/UserSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyShowStageLabelsChanged()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutoPackItems:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->notifyAutoPackItemsChanged(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutomaticDesktopEnabled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->notifyAutomaticDesktopModeChanged(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->notifyPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->notifyOnlineSuggestionsChanged(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/iconpacks/IconPack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/iconpacks/IconPack;)Lcom/sonymobile/home/iconpacks/IconPack;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Lcom/sonymobile/home/iconpacks/IconPack;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->clearIconCaches()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyIconPackChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->setAllowRotate(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonymobile/home/settings/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->setIconMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->setStraightToDesktopMode(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->setShowStageLabels(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->setShowKeyboardInSearchApps(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sonymobile/home/settings/UserSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->setPersonalizeRecommendations(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultStraightToDesktopMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mDefaultShowStageLabels:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/settings/UserSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sonymobile/home/settings/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z

    return p1
.end method

.method private clearIconCaches()V
    .locals 3

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mResourceHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceHandler;

    .line 1081
    .local v0, "handler":Lcom/sonymobile/home/model/ResourceHandler;
    invoke-virtual {v0}, Lcom/sonymobile/home/model/ResourceHandler;->clearIconCache()V

    goto :goto_0

    .line 1083
    .end local v0    # "handler":Lcom/sonymobile/home/model/ResourceHandler;
    :cond_0
    return-void
.end method

.method private getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getValidPageTransitionFromString(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1
    .param p1, "pageTransitionString"    # Ljava/lang/String;
    .param p2, "fallback"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 1049
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->valueOf(Ljava/lang/String;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 1054
    .end local p2    # "fallback":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    :goto_0
    return-object p2

    .line 1050
    .restart local p2    # "fallback":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 1050
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private loadPersonalizedRecommendationsPreference()V
    .locals 3

    .prologue
    .line 764
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$10;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/UserSettings$10;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/settings/UserSettings$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 775
    return-void
.end method

.method private notifyAllowRotateChanged(Z)V
    .locals 3
    .param p1, "allowRotate"    # Z

    .prologue
    .line 841
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 842
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onAllowRotateChanged(Z)V

    goto :goto_0

    .line 844
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyAutoPackItemsChanged(Z)V
    .locals 4
    .param p1, "autoPack"    # Z

    .prologue
    .line 1003
    const-string v2, "SettingsActivity"

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForAutoPack(Ljava/lang/String;Landroid/content/Context;)V

    .line 1004
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 1005
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onAutoArrangeItemsChanged(Z)V

    goto :goto_0

    .line 1007
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyAutomaticDesktopModeChanged(Z)V
    .locals 3
    .param p1, "useAutomaticDesktop"    # Z

    .prologue
    .line 1014
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 1015
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onHomeModeChanged(Z)V

    goto :goto_0

    .line 1017
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyIconPackChanged()V
    .locals 3

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 1072
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onIconPackChanged()V

    goto :goto_0

    .line 1074
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyIconSizeChanged()V
    .locals 4

    .prologue
    .line 900
    iget-object v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

    .line 901
    .local v1, "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    if-eqz v1, :cond_0

    .line 902
    iget v3, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/iconpacks/IconPack;->resize(I)Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

    .line 905
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 906
    .local v2, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v2}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onIconSizeChanged()V

    goto :goto_0

    .line 908
    .end local v2    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_1
    return-void
.end method

.method private notifyOnlineSuggestionsChanged(Z)V
    .locals 4
    .param p1, "onlineSuggestionsOn"    # Z

    .prologue
    .line 1032
    const-string v2, "SettingsActivity"

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForOnlineSuggestions(Ljava/lang/String;Landroid/content/Context;)V

    .line 1034
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 1035
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onOnlineSuggestionsStatusChanged(Z)V

    goto :goto_0

    .line 1037
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
    .locals 4
    .param p1, "pageTransition"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 1024
    const-string v2, "SettingsActivity"

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForPageTransition(Ljava/lang/String;Landroid/content/Context;)V

    .line 1026
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 1027
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V

    goto :goto_0

    .line 1029
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyShowStageLabelsChanged()V
    .locals 3

    .prologue
    .line 547
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 548
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onShowLabelsInStageChanged()V

    goto :goto_0

    .line 550
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private notifyStraightToDesktopModeChanged()V
    .locals 3

    .prologue
    .line 573
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 574
    .local v1, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onStraightToDesktopModeChanged()V

    goto :goto_0

    .line 576
    .end local v1    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    return-void
.end method

.method private setAllowRotate(Z)V
    .locals 6
    .param p1, "allowRotate"    # Z

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z

    if-ne p1, v0, :cond_0

    .line 834
    :goto_0
    return-void

    .line 829
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z

    .line 830
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/UserSettings;->notifyAllowRotateChanged(Z)V

    .line 832
    const-string v0, "Settings"

    const-string v1, "AllowAutoRotate"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private setDefaultUserSettingsIfNeeded(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 494
    return-void
.end method

.method private setIconMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "iconMode"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 874
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 878
    :pswitch_0
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;

    .line 880
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/UserSettings;->updateIconSizes()V

    .line 882
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->clearIconCaches()V

    .line 884
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyIconSizeChanged()V

    .line 886
    const-string v0, "Settings"

    const-string v1, "IconSizeChanged"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 874
    :sswitch_0
    const-string v1, "small"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x6879507 -> :sswitch_0
        0x5c13d641 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setPersonalizeRecommendations(Z)V
    .locals 2
    .param p1, "personalize"    # Z

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z

    if-ne p1, v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 537
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z

    .line 539
    const-string v0, "SettingsActivity"

    iget-object v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForPersonalizeRecommendations(ZLjava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setShowKeyboardInSearchApps(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIsKeyboardShownInSearchApps:Z

    if-ne p1, v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIsKeyboardShownInSearchApps:Z

    .line 524
    const-string v0, "SettingsActivity"

    iget-object v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForShowKeyboardInSearchApps(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setShowStageLabels(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z

    .line 510
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyShowStageLabelsChanged()V

    .line 511
    return-void
.end method

.method private setStraightToDesktopMode(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z

    .line 559
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->notifyStraightToDesktopModeChanged()V

    .line 560
    return-void
.end method

.method private updateOnlineSuggestionsFeature()V
    .locals 3

    .prologue
    .line 778
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/UserSettings$11;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 793
    .local v0, "onlineSuggestionsTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 794
    return-void
.end method


# virtual methods
.method public addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/settings/UserSettings;->getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 804
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 805
    invoke-interface {p1}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onUserSettingsLoaded()V

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method public getCurrentPageTransition()Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object v0
.end method

.method public getIconMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPack()Lcom/sonymobile/home/iconpacks/IconPack;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

    return-object v0
.end method

.method public getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I
    .locals 2
    .param p1, "iconType"    # Lcom/sonymobile/home/settings/UserSettings$IconType;

    .prologue
    .line 916
    sget-object v0, Lcom/sonymobile/home/settings/UserSettings$13;->$SwitchMap$com$sonymobile$home$settings$UserSettings$IconType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/settings/UserSettings$IconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 924
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I

    :goto_0
    return v0

    .line 918
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAppTrayIconSize:I

    goto :goto_0

    .line 920
    :pswitch_1
    iget v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mStageIconSize:I

    goto :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasThemeChanged(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentThemePackageName"    # Ljava/lang/String;

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/settings/UserSettings;->getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1117
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "user_settings_current_theme"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "currentHomeTheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAutoPackItemsEnabled()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z

    return v0
.end method

.method public isAutomaticDesktopEnabled()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z

    return v0
.end method

.method public isInStraightToDesktopMode()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z

    return v0
.end method

.method public isKeyboardShownWhenEnteringSearchApps()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mIsKeyboardShownInSearchApps:Z

    return v0
.end method

.method public isOnlineSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsFeatureOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlineSuggestionsFeatureOn()Z
    .locals 1

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsFeatureOn:Z

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 340
    iget-boolean v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mLoaded:Z

    if-nez v1, :cond_0

    .line 341
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/UserSettings$1;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 465
    .local v0, "loadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 467
    .end local v0    # "loadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 590
    const/4 v10, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 761
    :goto_1
    :pswitch_0
    return-void

    .line 590
    :sswitch_0
    const-string v12, "user_settings_allow_auto_rotation"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v10, v11

    goto :goto_0

    :sswitch_1
    const-string v12, "user_settings_icon_size_mode"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2
    const-string v12, "user_settings_straight_to_desktop_mode"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :sswitch_3
    const-string v12, "user_settings_show_stage_labels"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x3

    goto :goto_0

    :sswitch_4
    const-string v12, "user_settings_debug_render_borders_enabled"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x4

    goto :goto_0

    :sswitch_5
    const-string v12, "user_settings_show_keyboard_when_entering_search_apps"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x5

    goto :goto_0

    :sswitch_6
    const-string v12, "user_settings_desktop_automatic_mode"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x6

    goto :goto_0

    :sswitch_7
    const-string v12, "user_settings_auto_pack_desktop_items"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x7

    goto :goto_0

    :sswitch_8
    const-string v12, "user_settings_page_transition"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v10, 0x8

    goto :goto_0

    :sswitch_9
    const-string v12, "current_icon_pack"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v10, 0x9

    goto :goto_0

    :sswitch_a
    const-string v12, "user_settings_personalize_recommendations"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v10, 0xa

    goto :goto_0

    :sswitch_b
    const-string v12, "home_settings_app_recommendations"

    invoke-virtual {p2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v10, 0xb

    goto :goto_0

    .line 592
    :pswitch_1
    new-instance v1, Lcom/sonymobile/home/settings/UserSettings$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/settings/UserSettings$2;-><init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 604
    .local v1, "autoRotatePreferenceChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v1, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 608
    .end local v1    # "autoRotatePreferenceChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :pswitch_2
    new-instance v4, Lcom/sonymobile/home/settings/UserSettings$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/sonymobile/home/settings/UserSettings$3;-><init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 621
    .local v4, "iconSizePreferenceChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v4, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 625
    .end local v4    # "iconSizePreferenceChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :pswitch_3
    new-instance v9, Lcom/sonymobile/home/settings/UserSettings$4;

    invoke-direct {v9, p0, p1, p2}, Lcom/sonymobile/home/settings/UserSettings$4;-><init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 638
    .local v9, "straightToDesktopChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v9, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 642
    .end local v9    # "straightToDesktopChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :pswitch_4
    new-instance v8, Lcom/sonymobile/home/settings/UserSettings$5;

    invoke-direct {v8, p0, p1, p2}, Lcom/sonymobile/home/settings/UserSettings$5;-><init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 655
    .local v8, "showStageLabelsChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 665
    .end local v8    # "showStageLabelsChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :pswitch_5
    new-instance v7, Lcom/sonymobile/home/settings/UserSettings$6;

    invoke-direct {v7, p0}, Lcom/sonymobile/home/settings/UserSettings$6;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 677
    .local v7, "showKeyboardInSearchAppsChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v7, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 681
    .end local v7    # "showKeyboardInSearchAppsChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :pswitch_6
    new-instance v3, Lcom/sonymobile/home/settings/UserSettings$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/settings/UserSettings$7;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 694
    .local v3, "desktopAllAppChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v3, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 698
    .end local v3    # "desktopAllAppChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :pswitch_7
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/UserSettings$8;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 711
    .local v0, "autoPackItemsChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 715
    .end local v0    # "autoPackItemsChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :pswitch_8
    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 716
    .local v6, "oldPageTransition":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-virtual {v6}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/sonymobile/home/settings/UserSettings;->getValidPageTransitionFromString(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v5

    .line 718
    .local v5, "newPageTransition":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    iput-object v5, p0, Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 719
    invoke-direct {p0, v5}, Lcom/sonymobile/home/settings/UserSettings;->notifyPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V

    goto/16 :goto_1

    .line 724
    .end local v5    # "newPageTransition":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .end local v6    # "oldPageTransition":Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    :pswitch_9
    new-instance v2, Lcom/sonymobile/home/settings/UserSettings$9;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/home/settings/UserSettings$9;-><init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;)V

    .line 747
    .local v2, "currentIconPackChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/sonymobile/home/iconpacks/IconPack;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v2, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 751
    .end local v2    # "currentIconPackChangedTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/sonymobile/home/iconpacks/IconPack;>;"
    :pswitch_a
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->loadPersonalizedRecommendationsPreference()V

    goto/16 :goto_1

    .line 755
    :pswitch_b
    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings;->updateOnlineSuggestionsFeature()V

    goto/16 :goto_1

    .line 590
    :sswitch_data_0
    .sparse-switch
        -0x5d589b1e -> :sswitch_6
        -0x5b89bb61 -> :sswitch_7
        -0x58f77490 -> :sswitch_0
        -0x509c2900 -> :sswitch_b
        -0x2c5d6ef3 -> :sswitch_2
        -0x27122123 -> :sswitch_8
        -0x19e4d9fd -> :sswitch_1
        0x15dab6d9 -> :sswitch_9
        0x3a97f4b4 -> :sswitch_4
        0x3eed63db -> :sswitch_5
        0x606b8a87 -> :sswitch_a
        0x692c3a3a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public registerResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V
    .locals 1
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mResourceHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_0
    return-void
.end method

.method public removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 816
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/settings/UserSettings;->getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 819
    :cond_0
    return-void
.end method

.method public setIconPack(Lcom/sonymobile/home/iconpacks/IconPack;)V
    .locals 2
    .param p1, "iconPack"    # Lcom/sonymobile/home/iconpacks/IconPack;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;

    .line 1101
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/settings/UserSettings$12;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/settings/UserSettings$12;-><init>(Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1107
    return-void
.end method

.method public setPersonalizeRecommendations(ZLjava/lang/String;)V
    .locals 1
    .param p1, "personalize"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 993
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z

    .line 994
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForPersonalizeRecommendations(ZLjava/lang/String;Landroid/content/Context;)V

    .line 996
    return-void
.end method

.method public shouldPersonalizeRecommendations()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z

    return v0
.end method

.method public shouldShowLabelsInStage()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z

    return v0
.end method

.method public unRegisterResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V
    .locals 1
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mResourceHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method public updateIconSizes()V
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 933
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 948
    :goto_1
    return-void

    .line 933
    :sswitch_0
    const-string v3, "small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 935
    :pswitch_0
    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I

    .line 936
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mAppTrayIconSize:I

    .line 937
    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mStageIconSize:I

    goto :goto_1

    .line 941
    :pswitch_1
    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I

    .line 942
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mAppTrayIconSize:I

    .line 943
    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/settings/UserSettings;->mStageIconSize:I

    goto :goto_1

    .line 933
    :sswitch_data_0
    .sparse-switch
        0x6879507 -> :sswitch_0
        0x5c13d641 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public useSystemAutoRotate()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z

    return v0
.end method
