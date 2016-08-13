.class public Lcom/sonymobile/home/desktop/cui/CuiPresenter;
.super Ljava/lang/Object;
.source "CuiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;,
        Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mContext:Landroid/content/Context;

.field private final mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

.field private mCuiOpenGridViewTransitionDuration:J

.field private final mDelayedWallpaperChangeRunnable:Ljava/lang/Runnable;

.field private final mDensity:F

.field private final mDesktopPageViewName:Ljava/lang/String;

.field private final mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

.field private final mDragSource:Lcom/sonymobile/home/transfer/DragSource;

.field private final mGridHeaderEventListener:Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;

.field private mGridHeaderIconHeight:I

.field private mGridHeaderIconWidth:I

.field private final mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

.field private mGridViewHeightLarge:F

.field private mGridViewHeightSmall:F

.field private mHasHorizontalMenuInLandscape:Z

.field private mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mIntentHandler:Lcom/sonymobile/home/IntentHandler;

.field private mIsPortrait:Z

.field private final mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

.field private mLastWallpaperChangeTime:J

.field private final mLayer:Lcom/sonymobile/flix/components/Component;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMenuStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sonymobile/home/desktop/cui/CuiMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

.field private final mOnShortcutEventListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

.field private mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

.field private final mShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

.field private mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mShowGridHeader:Z

.field private final mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/desktop/DesktopPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "cuiCallbackHandler"    # Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p6, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p7, "layer"    # Lcom/sonymobile/flix/components/Component;
    .param p8, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p9, "shortcutManager"    # Lcom/sonymobile/home/shortcut/ShortcutManager;
    .param p10, "mainThreadHandler"    # Landroid/os/Handler;
    .param p11, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p12, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p13, "desktopPreferences"    # Lcom/sonymobile/home/desktop/DesktopPreferences;
    .param p14, "desktopPageViewName"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    .line 103
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightSmall:F

    .line 105
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightLarge:F

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconWidth:I

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconHeight:I

    .line 111
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowGridHeader:Z

    .line 114
    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiOpenGridViewTransitionDuration:J

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mListeners:Ljava/util/List;

    .line 684
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 1214
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$8;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$8;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    .line 1226
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$9;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$9;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderEventListener:Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;

    .line 1233
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$10;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$10;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOnShortcutEventListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    .line 1245
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$11;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$11;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDelayedWallpaperChangeRunnable:Ljava/lang/Runnable;

    .line 172
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 174
    iput-object p3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    .line 175
    iput-object p4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 176
    iput-object p5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 177
    iput-object p8, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .line 178
    iput-object p9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    .line 179
    iput-object p10, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMainThreadHandler:Landroid/os/Handler;

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIsPortrait:Z

    .line 181
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 182
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    .line 183
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

    .line 184
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPageViewName:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->readConfiguration()V

    .line 188
    iput-object p7, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mLayer:Lcom/sonymobile/flix/components/Component;

    .line 189
    iput-object p6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    .line 190
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDensity:F

    .line 191
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    .line 217
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;Landroid/os/Handler;)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridItemView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/cui/CuiGridItemView;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->handleGridItemLongPressed(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->handleGridHeaderClicked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p2, "x2"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p3, "x3"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->openCloseGridViewMenu(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->setWallpaper(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPageViewName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->getHostView()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->handleGridItemClicked(Lcom/sonymobile/home/cui/CuiGridItem;)V

    return-void
.end method

.method private addAdvWidgetItem(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)V
    .locals 4
    .param p1, "cuiWidgetLeafItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .prologue
    .line 922
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanX()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addAdvWidgetItem(Ljava/lang/String;Ljava/lang/String;II)V

    .line 924
    return-void
.end method

.method private addAppWidgetItem(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)V
    .locals 12
    .param p1, "cuiWidgetLeafItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .prologue
    .line 828
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 831
    .local v4, "user":Landroid/os/UserHandle;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v6

    .line 834
    .local v6, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v6, :cond_0

    .line 836
    new-instance v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)V

    iget-object v11, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMainThreadHandler:Landroid/os/Handler;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    invoke-virtual/range {v6 .. v11}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V

    .line 863
    :cond_0
    return-void
.end method

.method private addShortcut(Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 4
    .param p1, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOnShortcutEventListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonymobile/home/shortcut/ShortcutManager;->launchShortcutIntent(Landroid/content/Intent;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;)V

    .line 930
    return-void
.end method

.method private cancelAnimations()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 302
    :cond_1
    return-void
.end method

.method private cancelOngoingOpenCloseAnimations()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->stop()V

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->stop()V

    .line 1133
    :cond_1
    return-void
.end method

.method private createGridHeader(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;)Lcom/sonymobile/flix/components/Component;
    .locals 7
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .param p2, "model"    # Lcom/sonymobile/home/cui/CuiGridModel;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 452
    .local v6, "resources":Landroid/content/res/Resources;
    const v0, 0x7f020056

    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 453
    .local v4, "backIcon":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->getHeaderIcon(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 454
    .local v3, "previousLevelIcon":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->getHeaderLabel(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;)Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, "previousLevelLabel":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/home/cui/HeaderView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderEventListener:Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/cui/HeaderView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method private getHeaderIcon(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .prologue
    .line 466
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 469
    .local v0, "previousLevelIcon":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 490
    :goto_0
    return-object v0

    .line 471
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconWidth:I

    iget v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconHeight:I

    const v5, 0x7f02005b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconWidth:I

    iget v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconHeight:I

    const v5, 0x7f020055

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    goto :goto_0

    .line 482
    :pswitch_2
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconWidth:I

    iget v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconHeight:I

    const v5, 0x7f02005a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHeaderLabel(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;)Ljava/lang/String;
    .locals 5
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .param p2, "model"    # Lcom/sonymobile/home/cui/CuiGridModel;

    .prologue
    .line 501
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 502
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 504
    .local v0, "previousLevelLabel":Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 530
    :goto_0
    return-object v0

    .line 506
    :pswitch_0
    instance-of v3, p2, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 507
    check-cast v2, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    .line 508
    .local v2, "secondLevelWidgetModel":Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;
    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->getWidgetGroupLabel()Ljava/lang/String;

    move-result-object v0

    .line 509
    goto :goto_0

    .line 510
    .end local v2    # "secondLevelWidgetModel":Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;
    :cond_0
    const v3, 0x7f080090

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    goto :goto_0

    .line 515
    :pswitch_1
    const v3, 0x7f08008a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    goto :goto_0

    .line 519
    :pswitch_2
    const v3, 0x7f08008d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    goto :goto_0

    .line 523
    :pswitch_3
    const v3, 0x7f08008f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getHostView()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mLayer:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method private handleGridHeaderClicked()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->onGridHeaderClicked()V

    .line 935
    return-void
.end method

.method private handleGridItemClicked(Lcom/sonymobile/home/cui/CuiGridItem;)V
    .locals 14
    .param p1, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 535
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v2

    .line 536
    .local v2, "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v5

    .line 539
    .local v5, "item":Lcom/sonymobile/home/data/Item;
    sget-object v9, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridItem$CuiGridItemType:[I

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 649
    .end local v5    # "item":Lcom/sonymobile/home/data/Item;
    .end local p1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :cond_0
    :goto_0
    return-void

    .line 541
    .restart local v5    # "item":Lcom/sonymobile/home/data/Item;
    .restart local p1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :pswitch_0
    new-instance v6, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

    invoke-direct {v6, v9, v10}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopPreferences;)V

    .line 542
    .local v6, "model":Lcom/sonymobile/home/cui/CuiGridModel;
    sget-object v9, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    .line 543
    const-string v9, "CUI"

    const-string v10, "ItemClicked"

    const-string v11, "Widgets"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 548
    .end local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    :pswitch_1
    new-instance v6, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;-><init>(Landroid/content/Context;)V

    .line 549
    .restart local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    sget-object v9, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    .line 550
    const-string v9, "CUI"

    const-string v10, "ItemClicked"

    const-string v11, "Wallpapers"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 555
    .end local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->showThemePicker()V

    .line 556
    const-string v9, "CUI"

    const-string v10, "ItemClicked"

    const-string v11, "Themes"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 561
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->showHomeSettings()V

    .line 562
    const-string v9, "CUI"

    const-string v10, "ItemClicked"

    const-string v11, "Settings"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 567
    :pswitch_4
    instance-of v9, v5, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    if-eqz v9, :cond_0

    move-object v3, v5

    .line 568
    check-cast v3, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .line 569
    .local v3, "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    new-instance v6, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;)V

    .line 570
    .restart local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    sget-object v9, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    goto :goto_0

    .line 575
    .end local v3    # "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    .end local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    :pswitch_5
    instance-of v9, v5, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    if-eqz v9, :cond_0

    move-object v1, v5

    .line 576
    check-cast v1, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .line 577
    .local v1, "cuiWidgetLeafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getWidgetType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 578
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addAdvWidgetItem(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)V

    .line 579
    const-string v9, "CUI"

    const-string v10, "WidgetAddedByClick"

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 582
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getWidgetType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 583
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addAppWidgetItem(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)V

    .line 584
    const-string v9, "CUI"

    const-string v10, "WidgetAddedByClick"

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 592
    .end local v1    # "cuiWidgetLeafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    :pswitch_6
    new-instance v6, Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v11, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v12, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/sonymobile/home/cui/CuiGridAppModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 593
    .restart local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    sget-object v9, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_APPS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    .line 594
    const-string v9, "CUI"

    const-string v10, "ItemClicked"

    const-string v11, "Apps"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 599
    .end local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    :pswitch_7
    new-instance v6, Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v6, v9, v10}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 600
    .restart local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    sget-object v9, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_SHORTCUTS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v6, v10}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    .line 601
    const-string v9, "CUI"

    const-string v10, "ItemClicked"

    const-string v11, "Shortcuts"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 606
    .end local v6    # "model":Lcom/sonymobile/home/cui/CuiGridModel;
    :pswitch_8
    instance-of v9, v5, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v9, :cond_0

    .line 608
    new-instance v0, Lcom/sonymobile/home/data/ActivityItem;

    check-cast v5, Lcom/sonymobile/home/data/ActivityItem;

    .end local v5    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {v0, v5}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 609
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPageViewName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    .line 610
    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-interface {v9, v0, v10, v11}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->onItemClicked(Lcom/sonymobile/home/data/Item;II)V

    .line 611
    const-string v9, "CUI"

    const-string v10, "AppAddedByClick"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 618
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .restart local v5    # "item":Lcom/sonymobile/home/data/Item;
    :pswitch_9
    if-eqz v5, :cond_0

    instance-of v9, v5, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v9, :cond_0

    move-object v7, v5

    .line 619
    check-cast v7, Lcom/sonymobile/home/data/ShortcutItem;

    .line 620
    .local v7, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-direct {p0, v7}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addShortcut(Lcom/sonymobile/home/data/ShortcutItem;)V

    .line 621
    const-string v9, "CUI"

    const-string v10, "ShortcutAddedByClick"

    invoke-static {v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 628
    .end local v7    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :pswitch_a
    instance-of v9, p1, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    if-eqz v9, :cond_0

    move-object v8, p1

    .line 629
    check-cast v8, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .line 630
    .local v8, "wallpaperItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    invoke-virtual {v8}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 631
    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/sonymobile/home/cui/WallpaperProvider;->startWallpaperPicker(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 637
    .end local v8    # "wallpaperItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    :pswitch_b
    instance-of v9, p1, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    if-eqz v9, :cond_0

    move-object v9, p1

    .line 638
    check-cast v9, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    iput-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .line 639
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .end local p1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->setWallpaper(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V

    .line 640
    iget-object v9, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    invoke-virtual {v9}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "imagePath":Ljava/lang/String;
    const-string v9, "CUI"

    const-string v10, "WallpaperChangedByClick"

    if-eqz v4, :cond_2

    .end local v4    # "imagePath":Ljava/lang/String;
    :goto_1
    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v4, v12, v13}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .restart local v4    # "imagePath":Ljava/lang/String;
    :cond_2
    const-string v4, "unknown image path"

    goto :goto_1

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private handleGridItemLongPressed(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V
    .locals 29
    .param p1, "itemView"    # Lcom/sonymobile/home/cui/CuiGridItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 759
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/cui/CuiGridItemView;->getCuiGridItem()Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v13

    .line 760
    .local v13, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    invoke-virtual {v13}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v25

    .line 761
    .local v25, "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    invoke-virtual {v13}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v24

    .line 762
    .local v24, "cuiItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v7, p1

    .line 763
    .local v7, "comp":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v13}, Lcom/sonymobile/home/cui/CuiGridItem;->getRowSpan()I

    move-result v11

    .line 764
    .local v11, "rowSpan":I
    invoke-virtual {v13}, Lcom/sonymobile/home/cui/CuiGridItem;->getColSpan()I

    move-result v12

    .line 766
    .local v12, "colSpan":I
    const/4 v6, 0x0

    .line 767
    .local v6, "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    invoke-interface {v1}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->getZTransferCoordinate()F

    move-result v14

    .line 769
    .local v14, "z":F
    sget-object v1, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridItem$CuiGridItemType:[I

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 821
    .end local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v6, :cond_1

    .line 822
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    move-object/from16 v18, v6

    move/from16 v19, p2

    move/from16 v20, p3

    invoke-interface/range {v15 .. v20}, Lcom/sonymobile/home/transfer/TransferHandler;->startTransfer(Lcom/sonymobile/home/transfer/DragSource;ILcom/sonymobile/home/transfer/Transferable;FF)V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->notifyListeners()V

    .line 825
    :cond_1
    return-void

    .restart local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    :pswitch_1
    move-object/from16 v5, v24

    .line 771
    check-cast v5, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .line 772
    .local v5, "cuiWidgetLeafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    const/high16 v1, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 774
    .local v27, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCellWidth:I

    mul-int/2addr v3, v12

    sub-int v3, v3, v27

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCellHeight:I

    mul-int/2addr v4, v11

    sub-int v4, v4, v27

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v10}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v6

    .end local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    invoke-static/range {v1 .. v6}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->getWidgetPreviewBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 780
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getWidgetType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 781
    new-instance v8, Lcom/sonymobile/home/data/WidgetItem;

    const/4 v1, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    check-cast v24, Lcom/sonymobile/home/data/WidgetItem;

    .end local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 788
    .local v8, "item":Lcom/sonymobile/home/data/Item;
    :goto_1
    new-instance v6, Lcom/sonymobile/home/desktop/cui/CuiTransferable;

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v14}, Lcom/sonymobile/home/desktop/cui/CuiTransferable;-><init>(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;ZIILcom/sonymobile/home/cui/CuiGridItem;F)V

    .line 791
    .restart local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    goto :goto_0

    .line 785
    .end local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    .end local v8    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    :cond_2
    new-instance v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast v24, Lcom/sonymobile/home/data/WidgetItem;

    .end local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v8, v1, v2, v3}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .restart local v8    # "item":Lcom/sonymobile/home/data/Item;
    goto :goto_1

    .line 793
    .end local v5    # "cuiWidgetLeafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .end local v8    # "item":Lcom/sonymobile/home/data/Item;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v27    # "padding":I
    .restart local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    .restart local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    :pswitch_2
    new-instance v8, Lcom/sonymobile/home/data/ActivityItem;

    check-cast v24, Lcom/sonymobile/home/data/ActivityItem;

    .end local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 794
    .restart local v8    # "item":Lcom/sonymobile/home/data/Item;
    new-instance v6, Lcom/sonymobile/home/desktop/cui/CuiTransferable;

    .end local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/cui/CuiGridItemView;->getIcon()Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v13

    move/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Lcom/sonymobile/home/desktop/cui/CuiTransferable;-><init>(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;ZIILcom/sonymobile/home/cui/CuiGridItem;F)V

    .line 797
    .restart local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    goto/16 :goto_0

    .line 799
    .end local v8    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    :pswitch_3
    new-instance v8, Lcom/sonymobile/home/data/ShortcutItem;

    check-cast v24, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    .line 800
    .restart local v8    # "item":Lcom/sonymobile/home/data/Item;
    new-instance v6, Lcom/sonymobile/home/desktop/cui/CuiTransferable;

    .end local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/cui/CuiGridItemView;->getIcon()Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x1

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v13

    move/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Lcom/sonymobile/home/desktop/cui/CuiTransferable;-><init>(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;ZIILcom/sonymobile/home/cui/CuiGridItem;F)V

    .line 803
    .restart local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    goto/16 :goto_0

    .line 805
    .end local v8    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v24    # "cuiItem":Lcom/sonymobile/home/data/Item;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/cui/CuiGridItemView;->getIcon()Lcom/sonymobile/flix/components/Image;

    move-result-object v26

    .line 806
    .local v26, "icon":Lcom/sonymobile/flix/components/Image;
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 807
    const/high16 v28, 0x40000000    # 2.0f

    .line 808
    .local v28, "scalingFactor":F
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 812
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Lcom/sonymobile/home/desktop/cui/CuiTransferable;

    .end local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v13

    move/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Lcom/sonymobile/home/desktop/cui/CuiTransferable;-><init>(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;ZIILcom/sonymobile/home/cui/CuiGridItem;F)V

    .restart local v6    # "transferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    goto/16 :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private isMenuHorizontal()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIsPortrait:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHasHorizontalMenuInLandscape:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;

    .line 306
    .local v1, "listener":Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;->onLongPressItem()V

    goto :goto_0

    .line 308
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;
    :cond_0
    return-void
.end method

.method private notifyMenuChanged(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V
    .locals 1
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->onMenuChanged(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 1054
    return-void
.end method

.method private openCloseGridViewMenu(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 9
    .param p1, "openGridView"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p2, "closeGridView"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p3, "closeAnimationListener"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->cancelOngoingOpenCloseAnimations()V

    .line 1141
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->isMenuHorizontal()Z

    move-result v6

    .line 1145
    .local v6, "menuAtBottom":Z
    if-eqz p1, :cond_0

    .line 1146
    if-eqz v6, :cond_3

    .line 1147
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1154
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridView;->getY()F

    move-result v8

    .line 1155
    .local v8, "openGridY":F
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridView;->getX()F

    move-result v7

    .line 1157
    .local v7, "openGridX":F
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-wide v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiOpenGridViewTransitionDuration:J

    invoke-direct {v0, p1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1159
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1160
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1161
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1162
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelayedFinish(Z)V

    .line 1163
    if-eqz v6, :cond_4

    .line 1165
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridView;->getHeight()F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {v0, v8, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1170
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1182
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1185
    .end local v7    # "openGridX":F
    .end local v8    # "openGridY":F
    :cond_0
    if-eqz p2, :cond_2

    .line 1189
    if-eqz v6, :cond_5

    .line 1190
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1197
    :goto_2
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-wide v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiOpenGridViewTransitionDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-direct {v0, p2, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1199
    if-eqz p3, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, p3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1203
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1204
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1205
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelayedFinish(Z)V

    .line 1206
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1208
    :cond_2
    return-void

    .line 1150
    :cond_3
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    goto/16 :goto_0

    .line 1168
    .restart local v7    # "openGridX":F
    .restart local v8    # "openGridY":F
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOpenAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridView;->getWidth()F

    move-result v1

    sub-float v1, v7, v1

    invoke-virtual {v0, v7, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_1

    .line 1193
    .end local v7    # "openGridX":F
    .end local v8    # "openGridY":F
    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    goto :goto_2
.end method

.method private readConfiguration()V
    .locals 4

    .prologue
    .line 401
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHasHorizontalMenuInLandscape:Z

    .line 404
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->isMenuHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v0

    .line 407
    .local v0, "offset":I
    :goto_0
    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    int-to-float v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightSmall:F

    .line 408
    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    int-to-float v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightLarge:F

    .line 410
    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowGridHeader:Z

    .line 411
    const v2, 0x7f0d0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiOpenGridViewTransitionDuration:J

    .line 413
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowGridHeader:Z

    if-eqz v2, :cond_0

    .line 414
    const v2, 0x7f0b006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconWidth:I

    .line 416
    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridHeaderIconHeight:I

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCellWidth:I

    .line 420
    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCellHeight:I

    .line 421
    return-void

    .line 404
    .end local v0    # "offset":I
    :cond_1
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v0

    goto :goto_0
.end method

.method private removeAllMenus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1057
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-direct {p0, v1, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeMenuAtTop(ZZ)Z

    goto :goto_0

    .line 1060
    :cond_0
    return-void
.end method

.method private removeMenuAtTop(ZZ)Z
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1070
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1071
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    .line 1074
    .local v1, "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridModel;->onDestroy()V

    .line 1076
    if-eqz p1, :cond_3

    .line 1077
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 1078
    iget-object v0, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    .line 1079
    .local v0, "closeGridView":Lcom/sonymobile/home/cui/CuiGridView;
    const/4 v2, 0x0

    .line 1080
    .local v2, "openGridView":Lcom/sonymobile/home/cui/CuiGridView;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1081
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    iget-object v2, v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    .line 1084
    iget-object v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;->mFocusedItem:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, v3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 1090
    :goto_0
    new-instance v3, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;)V

    invoke-direct {p0, v2, v0, v3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->openCloseGridViewMenu(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1111
    .end local v0    # "closeGridView":Lcom/sonymobile/home/cui/CuiGridView;
    .end local v2    # "openGridView":Lcom/sonymobile/home/cui/CuiGridView;
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 1114
    .end local v1    # "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridModel;->getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->notifyMenuChanged(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 1119
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    return v3

    .line 1087
    .restart local v0    # "closeGridView":Lcom/sonymobile/home/cui/CuiGridView;
    .restart local v1    # "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    .restart local v2    # "openGridView":Lcom/sonymobile/home/cui/CuiGridView;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v5, 0x7f0f0006

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    goto :goto_0

    .line 1107
    .end local v0    # "closeGridView":Lcom/sonymobile/home/cui/CuiGridView;
    .end local v2    # "openGridView":Lcom/sonymobile/home/cui/CuiGridView;
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->getHostView()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    iget-object v4, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 1108
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridView;->onDestroy()V

    .line 1109
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    goto :goto_1
.end method

.method private restoreAllMenus()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 340
    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 342
    .local v2, "tmpMenuStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sonymobile/home/desktop/cui/CuiMenu;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeAllMenus()V

    .line 343
    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    .line 344
    .local v1, "menuItem":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    instance-of v3, v3, Lcom/sonymobile/home/cui/CuiGridAppModel;

    if-eqz v3, :cond_1

    .line 345
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_APPS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v4, Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v7, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v8, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sonymobile/home/cui/CuiGridAppModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    instance-of v3, v3, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    if-eqz v3, :cond_2

    .line 348
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v4, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    instance-of v3, v3, Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    if-eqz v3, :cond_3

    .line 351
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_SHORTCUTS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v4, Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    goto :goto_0

    .line 353
    :cond_3
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    instance-of v3, v3, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    if-eqz v3, :cond_4

    .line 354
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v4, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    instance-of v3, v3, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    if-eqz v3, :cond_5

    .line 357
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v4, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopPreferences;)V

    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    goto :goto_0

    .line 359
    :cond_5
    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    instance-of v3, v3, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    if-eqz v3, :cond_0

    .line 360
    sget-object v4, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v5, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    check-cast v3, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->getWidgetGroupItem()Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;)V

    invoke-virtual {p0, v4, v5, v9, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    goto/16 :goto_0

    .line 366
    .end local v1    # "menuItem":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_6
    return-void
.end method

.method private setWallpaper(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V
    .locals 10
    .param p1, "wallpaperItem"    # Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 652
    if-eqz p1, :cond_0

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 655
    .local v4, "now":J
    iget-wide v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mLastWallpaperChangeTime:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 656
    iput-wide v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mLastWallpaperChangeTime:J

    .line 657
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 659
    new-instance v3, Lcom/sonymobile/home/cui/WallpaperProvider$SetWallpaperTask;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/sonymobile/home/cui/WallpaperProvider$SetWallpaperTask;-><init>(Landroid/content/Context;)V

    .line 661
    .local v3, "setWallpaperTask":Lcom/sonymobile/home/cui/WallpaperProvider$SetWallpaperTask;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/cui/WallpaperProvider$SetWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 669
    .end local v2    # "imagePath":Ljava/lang/String;
    .end local v3    # "setWallpaperTask":Lcom/sonymobile/home/cui/WallpaperProvider$SetWallpaperTask;
    .end local v4    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 664
    .restart local v4    # "now":J
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDelayedWallpaperChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    iget-wide v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mLastWallpaperChangeTime:J

    add-long/2addr v6, v8

    sub-long v0, v6, v4

    .line 666
    .local v0, "delay":J
    iget-object v6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDelayedWallpaperChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showHomeSettings()V
    .locals 3

    .prologue
    .line 679
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonymobile/home/settings/HomeSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    .local v0, "homeSettingsIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/IntentHandler;->launchActivity(Landroid/content/Intent;)V

    .line 682
    return-void
.end method

.method private showThemePicker()V
    .locals 2

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "themePickerIntent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 675
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/IntentHandler;->launchActivity(Landroid/content/Intent;)V

    .line 676
    return-void
.end method


# virtual methods
.method public addAdvWidgetItem(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    .line 867
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 870
    .local v0, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v0, :cond_0

    .line 873
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;

    invoke-direct {v4, p0, p3, p4, v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;IILcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMainThreadHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadWidgetAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v6

    .line 910
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f080098

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 914
    const-string v1, "AdvWidget"

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    const-string v5, "Failed to add advanced widget item due to "

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addListener(Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V
    .locals 1
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .param p2, "model"    # Lcom/sonymobile/home/cui/CuiGridModel;
    .param p3, "notify"    # Z

    .prologue
    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V

    .line 939
    return-void
.end method

.method public addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V
    .locals 16
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .param p2, "model"    # Lcom/sonymobile/home/cui/CuiGridModel;
    .param p3, "animate"    # Z
    .param p4, "notify"    # Z

    .prologue
    .line 947
    const/4 v7, 0x0

    .line 948
    .local v7, "headerBackComponent":Lcom/sonymobile/flix/components/Component;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/cui/CuiGridModel;->load()V

    .line 950
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowGridHeader:Z

    if-eqz v2, :cond_0

    .line 951
    invoke-direct/range {p0 .. p2}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->createGridHeader(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;)Lcom/sonymobile/flix/components/Component;

    move-result-object v7

    .line 954
    :cond_0
    sget-object v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 975
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->isMenuHorizontal()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v11

    .line 977
    .local v11, "gridViewWidth":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightLarge:F

    .line 983
    .local v10, "gridViewHeight":F
    :goto_0
    new-instance v1, Lcom/sonymobile/home/cui/CuiGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIsPortrait:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHasHorizontalMenuInLandscape:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/home/cui/CuiGridView;-><init>(Lcom/sonymobile/flix/components/Scene;ZZZZLcom/sonymobile/flix/components/Component;)V

    .line 988
    .end local v7    # "headerBackComponent":Lcom/sonymobile/flix/components/Component;
    .local v1, "gridView":Lcom/sonymobile/home/cui/CuiGridView;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/cui/CuiGridView;->setVisible(Z)V

    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->getHostView()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 992
    invoke-virtual {v1, v11, v10}, Lcom/sonymobile/home/cui/CuiGridView;->setSize(FF)V

    .line 994
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->isMenuHorizontal()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 995
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1002
    :goto_2
    new-instance v8, Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    move-object/from16 v0, p2

    invoke-direct {v8, v2, v0, v3}, Lcom/sonymobile/home/cui/CuiGridAdapter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridModel;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;)V

    .line 1004
    .local v8, "adapter":Lcom/sonymobile/home/cui/CuiGridAdapter;
    if-eqz p3, :cond_9

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    move-object v14, v2

    .line 1006
    .local v14, "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :goto_3
    if-eqz v14, :cond_8

    iget-object v9, v14, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    .line 1010
    .local v9, "closeGridView":Lcom/sonymobile/home/cui/CuiGridView;
    :goto_4
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v8, v9}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridAdapter;Lcom/sonymobile/home/cui/CuiGridView;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/cui/CuiGridModel;->addModelListener(Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 1040
    .end local v9    # "closeGridView":Lcom/sonymobile/home/cui/CuiGridView;
    .end local v14    # "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    move-object v15, v2

    .line 1041
    .local v15, "prevMenu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :goto_6
    if-eqz v15, :cond_1

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    iput-object v2, v15, Lcom/sonymobile/home/desktop/cui/CuiMenu;->mFocusedItem:Lcom/sonymobile/flix/components/Component;

    .line 1044
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    new-instance v3, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    move-object/from16 v0, p2

    invoke-direct {v3, v1, v0}, Lcom/sonymobile/home/desktop/cui/CuiMenu;-><init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridModel;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    if-eqz p4, :cond_2

    .line 1048
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->notifyMenuChanged(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 1050
    :cond_2
    return-void

    .line 957
    .end local v1    # "gridView":Lcom/sonymobile/home/cui/CuiGridView;
    .end local v8    # "adapter":Lcom/sonymobile/home/cui/CuiGridAdapter;
    .end local v10    # "gridViewHeight":F
    .end local v11    # "gridViewWidth":F
    .end local v15    # "prevMenu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    .restart local v7    # "headerBackComponent":Lcom/sonymobile/flix/components/Component;
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIsPortrait:Z

    if-eqz v2, :cond_3

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v11

    .line 959
    .restart local v11    # "gridViewWidth":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightSmall:F

    .line 971
    .restart local v10    # "gridViewHeight":F
    :goto_7
    new-instance v1, Lcom/sonymobile/home/cui/CuiGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIsPortrait:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHasHorizontalMenuInLandscape:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/home/cui/CuiGridView;-><init>(Lcom/sonymobile/flix/components/Scene;ZZZZLcom/sonymobile/flix/components/Component;)V

    .line 972
    .end local v7    # "headerBackComponent":Lcom/sonymobile/flix/components/Component;
    .restart local v1    # "gridView":Lcom/sonymobile/home/cui/CuiGridView;
    goto/16 :goto_1

    .line 962
    .end local v1    # "gridView":Lcom/sonymobile/home/cui/CuiGridView;
    .end local v10    # "gridViewHeight":F
    .end local v11    # "gridViewWidth":F
    .restart local v7    # "headerBackComponent":Lcom/sonymobile/flix/components/Component;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHasHorizontalMenuInLandscape:Z

    if-eqz v2, :cond_4

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v11

    .line 964
    .restart local v11    # "gridViewWidth":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightLarge:F

    .restart local v10    # "gridViewHeight":F
    goto :goto_7

    .line 966
    .end local v10    # "gridViewHeight":F
    .end local v11    # "gridViewWidth":F
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightSmall:F

    .line 967
    .restart local v11    # "gridViewWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v10

    .restart local v10    # "gridViewHeight":F
    goto :goto_7

    .line 980
    .end local v10    # "gridViewHeight":F
    .end local v11    # "gridViewWidth":F
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mGridViewHeightLarge:F

    .line 981
    .restart local v11    # "gridViewWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v10

    .restart local v10    # "gridViewHeight":F
    goto/16 :goto_0

    .line 998
    .end local v7    # "headerBackComponent":Lcom/sonymobile/flix/components/Component;
    .restart local v1    # "gridView":Lcom/sonymobile/home/cui/CuiGridView;
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    goto/16 :goto_2

    .line 1005
    .restart local v8    # "adapter":Lcom/sonymobile/home/cui/CuiGridAdapter;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1006
    .restart local v14    # "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1014
    .end local v14    # "menuAtTop":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    .line 1015
    .local v13, "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    iget-object v2, v13, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->setVisible(Z)V

    goto :goto_8

    .line 1019
    .end local v13    # "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_a
    invoke-virtual {v1, v8}, Lcom/sonymobile/home/cui/CuiGridView;->setAdapter(Lcom/sonymobile/home/cui/CuiGridAdapter;)V

    .line 1020
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/cui/CuiGridView;->setVisible(Z)V

    .line 1021
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;-><init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/cui/CuiGridModel;->addModelListener(Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;)V

    goto/16 :goto_5

    .line 1040
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public enterCustomizationMode(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V
    .locals 7
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .prologue
    const/4 v6, 0x1

    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeAllMenus()V

    .line 372
    :cond_0
    sget-object v0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 394
    :goto_0
    return-void

    .line 374
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/cui/CuiGridMainMenuModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v6}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    goto :goto_0

    .line 378
    :pswitch_1
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPreferences:Lcom/sonymobile/home/desktop/DesktopPreferences;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopPreferences;)V

    invoke-virtual {p0, v0, v1, v6}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    goto :goto_0

    .line 382
    :pswitch_2
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_APPS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/cui/CuiGridAppModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {p0, v0, v1, v6}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    goto :goto_0

    .line 386
    :pswitch_3
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_SHORTCUTS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-virtual {p0, v0, v1, v6}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    goto :goto_0

    .line 390
    :pswitch_4
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/cui/CuiGridWallpaperModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v6}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;Z)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public exitCustomizationMode()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->cancelAnimations()V

    .line 438
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->cancelOngoingOpenCloseAnimations()V

    .line 439
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeAllMenus()V

    .line 440
    return-void
.end method

.method public hide()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 238
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 240
    .local v6, "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :goto_0
    if-eqz v6, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->cancelAnimations()V

    .line 245
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, v6, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    iget-wide v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiOpenGridViewTransitionDuration:J

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 248
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 249
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 254
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->isMenuHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    div-float/2addr v1, v7

    iget-object v2, v6, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridView;->getHeight()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 264
    :cond_0
    return-void

    .line 238
    .end local v6    # "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    move-object v6, v0

    goto :goto_0

    .line 259
    .restart local v6    # "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    div-float/2addr v1, v7

    iget-object v2, v6, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridView;->getWidth()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_1
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 429
    invoke-direct {p0, v0, v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeMenuAtTop(ZZ)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mOnPackageChangeListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->removeOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;)V

    .line 312
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeAllMenus()V

    .line 313
    return-void
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 267
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 269
    .local v6, "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :goto_0
    if-eqz v6, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->cancelAnimations()V

    .line 274
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, v6, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    iget-wide v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiOpenGridViewTransitionDuration:J

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 276
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 282
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->isMenuHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v2

    div-float/2addr v2, v7

    iget-object v3, v6, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridView;->getHeight()F

    move-result v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 292
    :cond_0
    return-void

    .line 267
    .end local v6    # "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    move-object v6, v0

    goto :goto_0

    .line 287
    .restart local v6    # "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    div-float/2addr v2, v7

    iget-object v3, v6, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridView;->getWidth()F

    move-result v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_1
.end method

.method public updateConfiguration(Z)V
    .locals 3
    .param p1, "isInCustomizationUi"    # Z

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->readConfiguration()V

    .line 321
    if-eqz p1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V

    .line 324
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v1}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 327
    .local v0, "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :goto_0
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, v0, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/cui/CuiGridView;->setVisible(Z)V

    .line 332
    .end local v0    # "menu":Lcom/sonymobile/home/desktop/cui/CuiMenu;
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mMenuStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/cui/CuiMenu;

    move-object v0, v1

    goto :goto_0
.end method

.method public updateOrientation(Z)V
    .locals 0
    .param p1, "isPortrait"    # Z

    .prologue
    .line 1288
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mIsPortrait:Z

    .line 1289
    return-void
.end method
