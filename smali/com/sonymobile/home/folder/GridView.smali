.class public Lcom/sonymobile/home/folder/GridView;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "GridView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;
.implements Lcom/sonymobile/home/ComponentFocusListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/GridView$GridTouchScrollArea;,
        Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;,
        Lcom/sonymobile/home/folder/GridView$TouchScrollListener;,
        Lcom/sonymobile/home/folder/GridView$ScrollDirection;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

.field private final mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

.field private mCellHeight:F

.field private mCellWidth:F

.field private final mClippingView:Lcom/sonymobile/flix/components/Component;

.field private final mCurrentItemViews:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

.field private final mGridBottomPadding:I

.field private mInPressedState:Z

.field private mIsItemAnimationsEnabled:Z

.field private final mItemContainer:Lcom/sonymobile/flix/components/Component;

.field private final mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

.field private final mMaxColumns:I

.field private final mMaxRows:I

.field private mMaxScrollPosition:F

.field private mMaxScrollbarAlpha:F

.field private final mMinRows:I

.field private mNumberOfColumns:I

.field private mNumberOfItems:I

.field private mNumberOfRows:I

.field private final mOngoingMoveAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageItemView;",
            "Lcom/sonymobile/flix/util/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

.field private mScrollDirection:I

.field private mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

.field private mScrollbarFadeTask:Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;

.field private final mScrollbarHeight:I

.field private mScrollbarStartPosition:F

.field private final mScrollbarWidth:I

.field private mScrollingEnabled:Z

.field private final mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

.field private mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

.field private final mTouchScrollArea:Lcom/sonymobile/flix/components/TouchArea;

.field private mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V
    .locals 10
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 108
    iput v8, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    .line 124
    iput-boolean v8, p0, Lcom/sonymobile/home/folder/GridView;->mInPressedState:Z

    .line 130
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mOngoingMoveAnimations:Ljava/util/Map;

    .line 132
    iput-boolean v9, p0, Lcom/sonymobile/home/folder/GridView;->mIsItemAnimationsEnabled:Z

    .line 138
    iput-object p2, p0, Lcom/sonymobile/home/folder/GridView;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .line 139
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    .line 140
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 142
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v3

    .line 143
    .local v3, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v6, 0x7f0b0037

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    .line 144
    const v6, 0x7f0b0036

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    .line 145
    const v6, 0x7f0b003b

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .line 146
    .local v4, "sideMargin":F
    const v6, 0x7f0b0065

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v0, v6

    .line 147
    .local v0, "bottomMargin":F
    const v6, 0x7f0b00e3

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v5, v6

    .line 148
    .local v5, "topMargin":F
    const v6, 0x7f0d0034

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mMaxColumns:I

    .line 149
    const v6, 0x7f0d0035

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mMaxRows:I

    .line 150
    const v6, 0x7f0d0036

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mMinRows:I

    .line 152
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 153
    .local v1, "displayDensity":F
    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarWidth:I

    .line 155
    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarHeight:I

    .line 159
    invoke-static {v2}, Lcom/sonymobile/home/folder/FolderUtil;->hasAllFolderResourcesVersion1(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    new-instance v6, Lcom/sonymobile/flix/components/NinePatchImage;

    const v7, 0x7f02015d

    invoke-direct {v6, p1, v7}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 162
    new-instance v6, Lcom/sonymobile/flix/components/NinePatchImage;

    const v7, 0x7f02015c

    invoke-direct {v6, p1, v7}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 171
    :goto_0
    new-instance v6, Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-direct {v6, p1}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 174
    new-instance v6, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v6, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    .line 175
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    const-string v7, "ClippingView"

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 176
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v6, v9}, Lcom/sonymobile/flix/components/Component;->setClippingEnabled(Z)V

    .line 177
    new-instance v6, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v6, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    .line 178
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    const-string v7, "ItemContainer"

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    const-string v7, "TopFadeImage"

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/NinePatchImage;->setName(Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    const-string v7, "BottomFadeImage"

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/NinePatchImage;->setName(Ljava/lang/String;)V

    .line 184
    new-instance v6, Lcom/sonymobile/home/folder/GridView$GridTouchScrollArea;

    invoke-direct {v6, p0, p1}, Lcom/sonymobile/home/folder/GridView$GridTouchScrollArea;-><init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollArea:Lcom/sonymobile/flix/components/TouchArea;

    .line 185
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {v6, v8}, Lcom/sonymobile/flix/components/TouchArea;->setTrackTouchFromOutside(Z)V

    .line 187
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    iget-object v7, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 188
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 189
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 190
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 191
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 192
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 194
    new-instance v6, Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/flix/util/GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    .line 195
    invoke-virtual {p0, v9}, Lcom/sonymobile/home/folder/GridView;->setScrollingEnabled(Z)V

    .line 198
    const v6, 0x7f0f0032

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->setId(I)V

    .line 201
    invoke-virtual {v3}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/folder/FolderUtil;->hasAllFolderResourcesVersion1(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    const v6, 0x7f02015b

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->setBackground(I)V

    .line 207
    :goto_1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->setInnerMargin(Landroid/graphics/RectF;)V

    .line 208
    const v6, 0x7f0b00e4

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/folder/GridView;->mGridBottomPadding:I

    .line 209
    return-void

    .line 165
    :cond_0
    new-instance v6, Lcom/sonymobile/flix/components/NinePatchImage;

    const v7, 0x7f020074

    invoke-direct {v6, p1, v7}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 167
    new-instance v6, Lcom/sonymobile/flix/components/NinePatchImage;

    const v7, 0x7f020073

    invoke-direct {v6, p1, v7}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    goto/16 :goto_0

    .line 204
    :cond_1
    const v6, 0x7f020075

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/GridView;->setBackground(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sonymobile/home/folder/GridView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mOngoingMoveAnimations:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/folder/GridView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/GridView;->updateScrollPosition(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Rectangle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/folder/GridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->invalidate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/SpringDynamics;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/home/folder/OpenFolderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/folder/GridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/folder/GridView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollbarAlpha:F

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/folder/GridView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;
    .param p1, "x1"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/GridView;->animateScrollbarAlphaTo(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/ListTouchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/GridView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    return-object v0
.end method

.method private animateScrollbarAlphaTo(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/SpringDynamics;->setTarget(F)V

    .line 752
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarFadeTask:Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 753
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarFadeTask:Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 754
    return-void
.end method

.method private calculateGridSize(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v6, 0x1

    .line 572
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    .line 573
    .local v0, "innerMargin":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 574
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    sub-float/2addr p2, v1

    .line 575
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v1, :cond_1

    .line 577
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float v1, p1, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    .line 579
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfItems:I

    int-to-double v2, v1

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfRows:I

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-ne v1, v6, :cond_0

    .line 582
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    div-float v1, p2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfRows:I

    .line 584
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfItems:I

    int-to-double v2, v1

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfRows:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    goto :goto_0
.end method

.method private calculateXPosition(Lcom/sonymobile/home/ui/pageview/PageLocation;)F
    .locals 4
    .param p1, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 589
    iget v1, p1, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v0, v1, v2

    .line 591
    .local v0, "xPos":F
    return v0
.end method

.method private calculateYPosition(Lcom/sonymobile/home/ui/pageview/PageLocation;)F
    .locals 4
    .param p1, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 595
    iget v1, p1, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v0, v1, v2

    .line 597
    .local v0, "yPos":F
    return v0
.end method

.method private createScrollController(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 715
    new-instance v0, Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getScheduler()Lcom/sonymobile/flix/util/Scheduler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Scheduler;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    .line 716
    iget v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(IZ)V

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v4, v4, v1, v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustScrolling(FFFF)V

    .line 722
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandLength(F)V

    .line 723
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v3, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 724
    new-instance v0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;-><init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/home/folder/GridView$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    .line 725
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->addListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V

    .line 726
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->addGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 727
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v2, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(IZ)V

    goto :goto_0
.end method

.method private createScrollbar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 731
    new-instance v0, Lcom/sonymobile/flix/components/Rectangle;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    .line 732
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    const v1, -0x7f7f7f80

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;->setColor(I)V

    .line 733
    const v0, 0x3f008081

    iput v0, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollbarAlpha:F

    .line 734
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Rectangle;->setAlpha(F)V

    .line 735
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 736
    new-instance v0, Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/flix/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    .line 737
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/util/SpringDynamics;->setSpring(FF)V

    .line 738
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/util/SpringDynamics;->setTarget(F)V

    .line 740
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    const/high16 v1, 0x3b000000    # 0.001953125f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/SpringDynamics;->setAtRestDistance(F)V

    .line 741
    new-instance v0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;-><init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/home/folder/GridView$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarFadeTask:Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;

    .line 742
    return-void
.end method

.method private handleContentChanged()V
    .locals 14

    .prologue
    .line 424
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v8

    .line 425
    .local v8, "nbrOfExistingItems":I
    if-nez v8, :cond_0

    .line 427
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sonymobile/home/folder/GridView;->enableItemAnimations(Z)V

    .line 429
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    if-eqz v10, :cond_c

    .line 430
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v10}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemCount()I

    move-result v9

    .line 431
    .local v9, "numberOfItems":I
    iget v10, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfItems:I

    if-eq v9, v10, :cond_1

    .line 432
    iput v9, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfItems:I

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v10

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/sonymobile/home/folder/GridView;->calculateGridSize(FF)V

    .line 436
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 437
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10, v4}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 438
    .local v2, "existingItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v5

    .line 440
    .local v5, "item":Lcom/sonymobile/home/data/Item;
    :goto_1
    if-eqz v5, :cond_2

    .line 441
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 436
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v5    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 446
    .end local v2    # "existingItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_4
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Component;->clear()V

    .line 449
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageLocation;->obtain()Lcom/sonymobile/home/ui/pageview/PageLocation;

    move-result-object v6

    .line 450
    .local v6, "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    const/4 v4, 0x0

    :goto_2
    iget v10, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfItems:I

    if-ge v4, v10, :cond_8

    .line 451
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    iget-object v11, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v11, v4}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 452
    .local v3, "gridItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v3, :cond_5

    .line 453
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    iget-object v11, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v11, v4}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->remove(J)V

    .line 456
    :cond_5
    if-nez v3, :cond_7

    .line 458
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v10, v4}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v3

    .line 463
    :goto_3
    if-eqz v3, :cond_6

    .line 464
    invoke-direct {p0, v6, v4}, Lcom/sonymobile/home/folder/GridView;->populatePageLocation(Lcom/sonymobile/home/ui/pageview/PageLocation;I)V

    .line 465
    invoke-direct {p0, v3, v6}, Lcom/sonymobile/home/folder/GridView;->placeItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 466
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 467
    if-nez v4, :cond_6

    .line 468
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v10, v3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 450
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 460
    :cond_7
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v10, v3, v4}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V

    goto :goto_3

    .line 472
    .end local v3    # "gridItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_8
    invoke-virtual {v6}, Lcom/sonymobile/home/ui/pageview/PageLocation;->recycle()V

    .line 475
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    .line 476
    .local v7, "nbrOfDeletedItems":I
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_a

    .line 477
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 478
    .local v1, "deletedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->isItemAnimationsEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 480
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 483
    new-instance v0, Lcom/sonymobile/home/folder/GridView$2;

    invoke-direct {v0, p0, v1, v1}, Lcom/sonymobile/home/folder/GridView$2;-><init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 492
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 493
    sget-object v10, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->DELETE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 494
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 495
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-virtual {v0, v10, v11}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 496
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 476
    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 498
    :cond_9
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->release()V

    goto :goto_5

    .line 501
    .end local v1    # "deletedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_a
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mCurrentItemViews:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->clear()V

    .line 503
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->updateScrollBounds()V

    .line 512
    .end local v4    # "i":I
    .end local v6    # "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    .end local v7    # "nbrOfDeletedItems":I
    .end local v9    # "numberOfItems":I
    :cond_b
    :goto_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sonymobile/home/folder/GridView;->enableItemAnimations(Z)V

    .line 513
    return-void

    .line 506
    :cond_c
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->removeAllGridItemViews()V

    .line 507
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v10, :cond_b

    .line 508
    iget-object v10, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    goto :goto_6
.end method

.method private handlePageItemOrderChanged()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->layoutGridItems()V

    .line 517
    return-void
.end method

.method private invalidate()V
    .locals 6

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getDrawnLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getDrawnTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getDrawnLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getDrawnTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/flix/components/Scene;->invalidate(FFFF)V

    .line 707
    return-void
.end method

.method private isItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/GridView;->mIsItemAnimationsEnabled:Z

    return v0
.end method

.method private layoutGridItems()V
    .locals 5

    .prologue
    .line 356
    iget-object v4, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v3

    .line 357
    .local v3, "nbrOfChildren":I
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageLocation;->obtain()Lcom/sonymobile/home/ui/pageview/PageLocation;

    move-result-object v2

    .line 358
    .local v2, "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 359
    iget-object v4, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 360
    .local v1, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/home/folder/GridView;->populatePageLocation(Lcom/sonymobile/home/ui/pageview/PageLocation;I)V

    .line 361
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/folder/GridView;->placeItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageLocation;->recycle()V

    .line 364
    return-void
.end method

.method private placeItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 8
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 381
    invoke-direct {p0, p2}, Lcom/sonymobile/home/folder/GridView;->calculateXPosition(Lcom/sonymobile/home/ui/pageview/PageLocation;)F

    move-result v1

    .line 382
    .local v1, "endX":F
    invoke-direct {p0, p2}, Lcom/sonymobile/home/folder/GridView;->calculateYPosition(Lcom/sonymobile/home/ui/pageview/PageLocation;)F

    move-result v2

    .line 383
    .local v2, "endY":F
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v4

    .line 384
    .local v4, "startX":F
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v5

    .line 385
    .local v5, "startY":F
    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    float-to-int v6, v6

    iget v7, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/sonymobile/home/ui/pageview/PageItemView;->layout(II)V

    .line 388
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mOngoingMoveAnimations:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/flix/util/Animation;

    .line 389
    .local v3, "ongoingAnimation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 393
    :cond_0
    cmpl-float v6, v4, v1

    if-nez v6, :cond_1

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_2

    .line 394
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->isItemAnimationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 396
    new-instance v0, Lcom/sonymobile/home/folder/GridView$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/sonymobile/home/folder/GridView$1;-><init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 403
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 404
    sget-object v6, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 405
    invoke-virtual {v0, v4, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 406
    invoke-virtual {v0, v5, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 407
    iget-object v6, p0, Lcom/sonymobile/home/folder/GridView;->mOngoingMoveAnimations:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 414
    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :cond_2
    :goto_0
    return-void

    .line 411
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setPosition(FF)V

    goto :goto_0
.end method

.method private populatePageLocation(Lcom/sonymobile/home/ui/pageview/PageLocation;I)V
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v1, p2}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getPosition(I)I

    move-result v0

    .line 368
    .local v0, "pos":I
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    rem-int v1, v0, v1

    :goto_0
    iput v1, p1, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 369
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    div-int v2, v0, v1

    :cond_0
    iput v2, p1, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 370
    return-void

    :cond_1
    move v1, v2

    .line 368
    goto :goto_0
.end method

.method private removeAllGridItemViews()V
    .locals 4

    .prologue
    .line 520
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    .line 521
    .local v2, "nbrOfViews":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 522
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 523
    .local v1, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->release()V

    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    .end local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->clear()V

    .line 528
    return-void
.end method

.method private removeScrollbar()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/GridView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    .line 282
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getScheduler()Lcom/sonymobile/flix/util/Scheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarFadeTask:Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Scheduler;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 284
    :cond_0
    return-void
.end method

.method private removeTouchController()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->removeGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 273
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->removeListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    .line 276
    :cond_0
    return-void
.end method

.method private updateScrollBarPosition(F)V
    .locals 6
    .param p1, "scrollPosition"    # F

    .prologue
    .line 686
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    div-float v2, p1, v3

    .line 687
    .local v2, "scrollPercentage":F
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v3, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    .line 690
    .local v0, "innerMargin":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Rectangle;->getHeight()F

    move-result v4

    sub-float v1, v3, v4

    .line 692
    .local v1, "scrollBarDistance":F
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v4, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarStartPosition:F

    mul-float v5, v1, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Rectangle;->setY(F)V

    .line 698
    .end local v0    # "innerMargin":Landroid/graphics/RectF;
    .end local v1    # "scrollBarDistance":F
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Rectangle;->getWidth()F

    move-result v4

    sub-float v1, v3, v4

    .line 696
    .restart local v1    # "scrollBarDistance":F
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v4, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarStartPosition:F

    mul-float v5, v1, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Rectangle;->setX(F)V

    goto :goto_0
.end method

.method private updateScrollBounds()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 531
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v3, :cond_4

    .line 532
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getTotalMargin()Landroid/graphics/RectF;

    move-result-object v2

    .line 533
    .local v2, "totalMargin":Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    add-float v0, v3, v6

    .line 534
    .local v0, "fullMarginHeight":F
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v3

    sub-float v1, v3, v0

    .line 535
    .local v1, "gridHeight":F
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfRows:I

    int-to-float v3, v3

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    div-float v6, v1, v6

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    .line 536
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    invoke-virtual {v3, v8, v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 539
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfRows:I

    int-to-float v3, v3

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    mul-float/2addr v3, v6

    cmpl-float v3, v3, v1

    if-lez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    .line 548
    .end local v0    # "fullMarginHeight":F
    .end local v1    # "gridHeight":F
    .end local v2    # "totalMargin":Landroid/graphics/RectF;
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    if-eqz v3, :cond_6

    .line 549
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 550
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 556
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v3, :cond_1

    .line 557
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget-boolean v4, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Rectangle;->setVisible(Z)V

    .line 560
    :cond_1
    iget-boolean v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    if-nez v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3, v8, v8}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 563
    :cond_2
    return-void

    .restart local v0    # "fullMarginHeight":F
    .restart local v1    # "gridHeight":F
    .restart local v2    # "totalMargin":Landroid/graphics/RectF;
    :cond_3
    move v3, v5

    .line 539
    goto :goto_0

    .line 540
    .end local v0    # "fullMarginHeight":F
    .end local v1    # "gridHeight":F
    .end local v2    # "totalMargin":Landroid/graphics/RectF;
    :cond_4
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-ne v3, v4, :cond_0

    .line 541
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v6

    iget v7, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    .line 542
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    invoke-virtual {v3, v8, v6}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 545
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    int-to-float v3, v3

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_3

    .line 552
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v3, v5}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 553
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v3, v5}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    goto :goto_2
.end method

.method private updateScrollPosition(F)V
    .locals 4
    .param p1, "scrollPosition"    # F

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "x":F
    const/4 v1, 0x0

    .line 671
    .local v1, "y":F
    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v2, :cond_0

    .line 672
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/GridView;->updateScrollBarPosition(F)V

    .line 675
    :cond_0
    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v2, :cond_2

    .line 676
    neg-float v2, p1

    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    mul-float v1, v2, v3

    .line 681
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 682
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->invalidate()V

    .line 683
    return-void

    .line 677
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 678
    neg-float v2, p1

    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    mul-float v0, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public enableItemAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/sonymobile/home/folder/GridView;->mIsItemAnimationsEnabled:Z

    .line 374
    return-void
.end method

.method protected getCol(F)I
    .locals 4
    .param p1, "coord"    # F

    .prologue
    .line 601
    const/4 v0, -0x1

    .line 602
    .local v0, "col":I
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mWidth:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 603
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 605
    .local v2, "scrollPosition":F
    :goto_0
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    mul-float/2addr v3, v2

    add-float v1, p1, v3

    .line 607
    .local v1, "containerCoord":F
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float v3, v1, v3

    float-to-int v0, v3

    .line 609
    .end local v1    # "containerCoord":F
    .end local v2    # "scrollPosition":F
    :cond_0
    return v0

    .line 603
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v2

    goto :goto_0
.end method

.method protected getItemIndex(II)I
    .locals 2
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 626
    const/4 v0, -0x1

    .line 627
    .local v0, "index":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 628
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 631
    :cond_0
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfItems:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemView(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 929
    iget-object v4, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v3

    .line 930
    .local v3, "nbrChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 931
    iget-object v4, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 932
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    instance-of v4, v0, Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 933
    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 934
    .local v2, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 940
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v2    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :goto_1
    return-object v2

    .line 930
    .restart local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/sonymobile/home/folder/GridView;->mNumberOfColumns:I

    return v0
.end method

.method protected getRow(F)I
    .locals 4
    .param p1, "coord"    # F

    .prologue
    .line 613
    const/4 v1, -0x1

    .line 614
    .local v1, "row":I
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mHeight:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 615
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v2

    .line 617
    .local v2, "scrollPosition":F
    :goto_0
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    mul-float/2addr v3, v2

    add-float v0, p1, v3

    .line 619
    .local v0, "containerCoord":F
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    div-float v3, v0, v3

    float-to-int v1, v3

    .line 622
    .end local v0    # "containerCoord":F
    .end local v2    # "scrollPosition":F
    :cond_0
    return v1

    .line 615
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTotalMargin()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 1019
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected getcolumnFraction(F)F
    .locals 5
    .param p1, "coord"    # F

    .prologue
    .line 635
    const/high16 v1, -0x40800000    # -1.0f

    .line 636
    .local v1, "fraction":F
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mWidth:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 637
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 639
    .local v2, "scrollPosition":F
    :goto_0
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    mul-float/2addr v3, v2

    add-float v0, p1, v3

    .line 640
    .local v0, "containerCoord":F
    iget v3, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    rem-float v3, v0, v3

    iget v4, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float v1, v3, v4

    .line 642
    .end local v0    # "containerCoord":F
    .end local v2    # "scrollPosition":F
    :cond_0
    return v1

    .line 637
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v2

    goto :goto_0
.end method

.method public onComponentFocused(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapTo(F)V

    .line 421
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->handleContentChanged()V

    .line 970
    return-void
.end method

.method public onDispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/folder/GridView;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getNbrChildren()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 865
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/folder/GridView;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 866
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isCulled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    const/4 v2, 0x1

    .line 872
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 864
    .restart local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 872
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 829
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/sonymobile/home/folder/GridView;->mInPressedState:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sonymobile/home/folder/GridView;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 831
    :cond_0
    if-nez v0, :cond_3

    .line 832
    iput-boolean v4, p0, Lcom/sonymobile/home/folder/GridView;->mInPressedState:Z

    .line 840
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getNbrChildren()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 841
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/GridView;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    .line 842
    .local v1, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->isCulled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    .line 855
    .end local v1    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return v3

    .line 833
    :cond_3
    if-eq v0, v4, :cond_4

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 834
    :cond_4
    iput-boolean v3, p0, Lcom/sonymobile/home/folder/GridView;->mInPressedState:Z

    goto :goto_0

    .line 840
    .restart local v1    # "child":Lcom/sonymobile/flix/components/Component;
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v1    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_6
    move v3, v4

    .line 850
    goto :goto_2
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public onPageItemChanged(J)V
    .locals 0
    .param p1, "uniqueId"    # J

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->handleContentChanged()V

    .line 975
    return-void
.end method

.method public onPageItemOrderChanged()V
    .locals 0

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->handlePageItemOrderChanged()V

    .line 980
    return-void
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 0
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 880
    return p2
.end method

.method protected resetScrollPosition()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->abort()V

    .line 567
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 568
    return-void
.end method

.method protected scrollContent(Lcom/sonymobile/home/folder/GridView$ScrollDirection;)V
    .locals 4
    .param p1, "direction"    # Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    .prologue
    const/4 v3, 0x0

    const v2, 0x3da3d70a    # 0.08f

    .line 646
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v0

    .line 647
    .local v0, "position":F
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v1, :cond_2

    .line 648
    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    if-ne p1, v1, :cond_1

    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    goto :goto_0

    .line 655
    :cond_2
    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_LEFT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    if-ne p1, v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_3

    .line 656
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    goto :goto_0

    .line 657
    :cond_3
    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_RIGHT:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    goto :goto_0
.end method

.method public scrollTo(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 949
    iget-boolean v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z

    if-eqz v1, :cond_1

    .line 950
    const/4 v0, 0x0

    .line 952
    .local v0, "scrollPosition":F
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v1, :cond_2

    .line 953
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    div-float v0, v1, v2

    .line 955
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 962
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 963
    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveEnd()V

    .line 965
    .end local v0    # "scrollPosition":F
    :cond_1
    return-void

    .line 956
    .restart local v0    # "scrollPosition":F
    :cond_2
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 957
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getPadding()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float v0, v1, v2

    .line 959
    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mMaxScrollPosition:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Lcom/sonymobile/home/folder/OpenFolderAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->unregisterObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .line 243
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->registerObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->clear()V

    .line 250
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->onContentChanged()V

    .line 251
    return-void
.end method

.method public setBackground(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, "ninePatchBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setPosition(FF)V

    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 331
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0
    .param p1, "scrollDirection"    # I

    .prologue
    .line 804
    iput p1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    .line 805
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/GridView;->createScrollController(Landroid/content/Context;)V

    .line 262
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->createScrollbar()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->removeTouchController()V

    .line 266
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->removeScrollbar()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 288
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 290
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTouchScrollArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 294
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/NinePatchImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    iget-object v2, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/NinePatchImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mGridBottomPadding:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 297
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 298
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 301
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    move v2, v7

    move-object v3, p0

    move v4, v1

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 302
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mClippingView:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    move v2, v7

    move v4, v1

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    iget-object v3, p0, Lcom/sonymobile/home/folder/GridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    move v2, v8

    move v4, v1

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 305
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mBottomFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-static {v0}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;)V

    .line 306
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mTopFadeImage:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-static {v0}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;)V

    .line 308
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v0, :cond_0

    .line 310
    iget v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 312
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    const v4, 0x3f828f5c    # 1.02f

    const/4 v6, 0x2

    move v1, v8

    move v2, v7

    move-object v3, p0

    move v5, v7

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 314
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Rectangle;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarStartPosition:F

    .line 322
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/GridView;->calculateGridSize(FF)V

    .line 323
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->updateScrollBounds()V

    .line 324
    invoke-direct {p0}, Lcom/sonymobile/home/folder/GridView;->layoutGridItems()V

    .line 325
    return-void

    .line 315
    :cond_1
    iget v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v1, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 317
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    move v1, v7

    move v2, v8

    move-object v3, p0

    move v4, v7

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 318
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Rectangle;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/folder/GridView;->mScrollbarStartPosition:F

    goto :goto_0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->setX(F)V

    .line 336
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 337
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->setY(F)V

    .line 342
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 343
    return-void
.end method

.method public updateCullingArea()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 347
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v1

    .line 348
    .local v1, "innerMargin":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWorldX()F

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    .line 349
    .local v2, "left":F
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWorldY()F

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    .line 350
    .local v4, "top":F
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v5

    add-float/2addr v5, v2

    iget v6, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    .line 351
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v5

    add-float/2addr v5, v4

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    .line 352
    .local v0, "bottom":F
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/sonymobile/home/folder/GridView;->setCullingArea(FFFF)V

    .line 353
    return-void
.end method

.method public updateGridSize(FFIZ)I
    .locals 10
    .param p1, "availableGridHeight"    # F
    .param p2, "availableGridWidth"    # F
    .param p3, "itemCount"    # I
    .param p4, "portrait"    # Z

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/GridView;->getTotalMargin()Landroid/graphics/RectF;

    move-result-object v4

    .line 994
    .local v4, "totalMargin":Landroid/graphics/RectF;
    iget v6, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, p2, v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/sonymobile/home/folder/GridView;->mMaxColumns:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 997
    .local v0, "columns":F
    int-to-float v6, p3

    div-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 999
    .local v3, "neededRows":F
    iget v6, v4, Landroid/graphics/RectF;->top:F

    sub-float v6, p1, v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    div-float v5, v6, v7

    .line 1000
    .local v5, "visibleRows":F
    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mMaxRows:I

    int-to-float v6, v6

    invoke-static {v5, v3, v6}, Lcom/sonymobile/home/util/MathUtil;->min(FFF)F

    move-result v5

    .line 1003
    if-eqz p4, :cond_0

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mMinRows:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mMinRows:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    .line 1004
    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mMinRows:I

    int-to-float v5, v6

    .line 1008
    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v5, v6

    .line 1010
    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellWidth:F

    mul-float/2addr v6, v0

    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/RectF;->right:F

    add-float v2, v6, v7

    .line 1011
    .local v2, "gridWidth":F
    iget v6, p0, Lcom/sonymobile/home/folder/GridView;->mCellHeight:F

    mul-float/2addr v6, v5

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float v1, v6, v7

    .line 1013
    .local v1, "gridHeight":F
    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/home/folder/GridView;->setSize(FF)V

    .line 1015
    float-to-int v6, v5

    return v6
.end method
