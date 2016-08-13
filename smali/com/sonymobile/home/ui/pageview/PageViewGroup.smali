.class public abstract Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.super Lcom/sonymobile/flix/components/Component;
.source "PageViewGroup.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$LifeCycleListener;
.implements Lcom/sonymobile/home/ComponentFocusListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/pageview/PageViewGroup$7;,
        Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;,
        Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;,
        Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    }
.end annotation


# static fields
.field public static final ADD_LARGE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final ADD_SMALL_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final DELETE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SCROLL_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field protected mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

.field private mAddItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field private mContentChangeEnabled:Z

.field private mDeleteItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field protected mGrid:Lcom/sonymobile/grid/Grid;

.field protected mGridHorizontalPosition:F

.field protected mGridVerticalPosition:F

.field protected mHasValidPage:Z

.field private final mInteractionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInteracting:Z

.field private mIsItemAnimationsEnabled:Z

.field protected mLeftmostAdapterPage:I

.field private final mOngoingDeleteAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/util/ComponentAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mOngoingUpdateAnimations:Ljava/util/Map;
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

.field private final mPageViewGroupListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPages:Lcom/sonymobile/flix/components/Typed$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/flix/components/Typed$Group",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingContentChange:Z

.field protected mRightmostAdapterPage:I

.field protected mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

.field protected mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

.field protected mScrollListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

.field protected mScrollPosition:F

.field protected final mScrollableContent:Lcom/sonymobile/flix/components/Component;

.field private mUpdateItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

.field protected final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

.field protected mZoomPosition:F

.field protected final mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 114
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->SCROLL_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 118
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->ADD_SMALL_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 120
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->ADD_LARGE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 122
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->DELETE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mInteractionListeners:Ljava/util/List;

    .line 141
    iput-boolean v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsInteracting:Z

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    .line 168
    iput v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    .line 170
    iput v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mRightmostAdapterPage:I

    .line 172
    iput-boolean v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsItemAnimationsEnabled:Z

    .line 174
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_TRANSLATE_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUpdateItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 176
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAddItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 178
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_FADEOUT_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mDeleteItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingUpdateAnimations:Ljava/util/Map;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingDeleteAnimations:Ljava/util/List;

    .line 184
    iput-boolean v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mHasValidPage:Z

    .line 186
    iput-boolean v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mContentChangeEnabled:Z

    .line 203
    iput-object p2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 204
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomPosition:F

    .line 207
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/home/ui/pageview/PageViewGroup$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$1;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 239
    new-instance v1, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v1, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    .line 240
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    const-string v2, "ScrollableContent"

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 243
    new-instance v1, Lcom/sonymobile/flix/components/Typed$Group;

    const-class v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {v1, p1, v2}, Lcom/sonymobile/flix/components/Typed$Group;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    .line 244
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    const-string v2, "Pages"

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Typed$Group;->setName(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 247
    new-instance v0, Lcom/sonymobile/flix/util/SpringDynamics;

    const/high16 v1, 0x44160000    # 600.0f

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/util/SpringDynamics;-><init>(FF)V

    .line 248
    .local v0, "zoomDynamics":Lcom/sonymobile/flix/util/SpringDynamics;
    new-instance v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/flix/util/SpringDynamics;)V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    .line 271
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateFromTouch()V

    .line 273
    iput-object p3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 274
    new-instance v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$3;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    iput-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 285
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p3, v1}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingUpdateAnimations:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingDeleteAnimations:Ljava/util/List;

    return-object v0
.end method

.method private addPage(Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 1
    .param p1, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Typed$Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 1330
    return-void
.end method

.method private createFadeOutAnimation(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 10
    .param p1, "removedItemsLayer"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "tempItemView"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1203
    iget-object v2, p2, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 1204
    .local v2, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v2, v8, v8, v8}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setPosition(FFF)V

    .line 1209
    new-instance v5, Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v5, v1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 1210
    .local v5, "c":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p1, v5}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 1211
    invoke-virtual {v5, v2}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 1212
    iget v1, p2, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mWorldX:F

    iget v3, p2, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mWorldY:F

    iget v4, p2, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mWorldZ:F

    invoke-virtual {v5, v1, v3, v4}, Lcom/sonymobile/flix/components/Component;->setPosition(FFF)V

    .line 1213
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lcom/sonymobile/flix/components/Component;->setCameraProjection(I)V

    .line 1215
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 1226
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1227
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->DELETE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1228
    invoke-virtual {v0, v9, v8}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1229
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v9, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1230
    return-object v0
.end method

.method private createPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 6
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1145
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;

    invoke-direct {v0, p0, p1, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1159
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    iget v1, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    if-ne v1, v4, :cond_0

    iget v1, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    if-ne v1, v4, :cond_0

    .line 1162
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->ADD_SMALL_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1163
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1168
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1169
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1170
    invoke-virtual {v0, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1171
    return-object v0

    .line 1165
    :cond_0
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->ADD_LARGE_ITEM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1166
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_0
.end method

.method private createRandomPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 10
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 1127
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    .line 1128
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v4, 0x64

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4072c00000000000L    # 300.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    add-long v2, v4, v6

    .line 1130
    .local v2, "delay":J
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelay(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1131
    return-object v0
.end method

.method private createTranslateAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;FFFF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 4
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "startX"    # F
    .param p3, "endX"    # F
    .param p4, "startY"    # F
    .param p5, "endY"    # F

    .prologue
    .line 1187
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    .line 1188
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1189
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1190
    invoke-virtual {v0, p2, p3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1191
    invoke-virtual {v0, p4, p5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1192
    return-object v0
.end method

.method private finishPendingDeleteAnimations()V
    .locals 4

    .prologue
    .line 520
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingDeleteAnimations:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 522
    .local v2, "pendingDeleteAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/flix/components/util/ComponentAnimation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 523
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->onFinish()V

    .line 524
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_0

    .line 526
    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :cond_0
    return-void
.end method

.method private isPageWithinBounds(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLeftmostPage()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getRightmostPage()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(FFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "currentPage"    # F
    .param p3, "pageWidth"    # F

    .prologue
    .line 1413
    div-float v0, p1, p3

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(Lcom/sonymobile/home/ui/pageview/PageLocation;F)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;
    .param p2, "currentPage"    # F

    .prologue
    .line 1409
    iget v0, p1, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutPageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 5
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    const/4 v4, 0x1

    .line 1339
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v1

    .line 1340
    .local v1, "cellWidth":I
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v0

    .line 1341
    .local v0, "cellHeight":I
    iget v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v1

    iget v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->layout(II)V

    .line 1343
    return-void
.end method

.method private performAddItemAnimation(Lcom/sonymobile/home/ui/pageview/PageLocation;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;
    .param p2, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    const/4 v3, 0x0

    .line 1024
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$7;->$SwitchMap$com$sonymobile$home$ui$pageview$PageViewGroup$ItemAnimationType:[I

    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAddItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1037
    invoke-virtual {p2, v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1038
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    .line 1042
    .local v0, "addAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :goto_0
    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1045
    :cond_0
    return-void

    .line 1027
    .end local v0    # "addAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :pswitch_0
    const/4 v0, 0x0

    .line 1028
    .restart local v0    # "addAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    goto :goto_0

    .line 1031
    .end local v0    # "addAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :pswitch_1
    invoke-virtual {p2, v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1032
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createRandomPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    .line 1033
    .restart local v0    # "addAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    goto :goto_0

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performDeleteItemAnimation(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;)V
    .locals 3
    .param p1, "removedItemsLayer"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "tempItemView"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;

    .prologue
    .line 1104
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup$7;->$SwitchMap$com$sonymobile$home$ui$pageview$PageViewGroup$ItemAnimationType:[I

    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mDeleteItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createFadeOutAnimation(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    .line 1111
    .local v0, "deleteAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingDeleteAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1115
    .end local v0    # "deleteAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :pswitch_0
    return-void

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private performUpdateItemAnimation(Lcom/sonymobile/home/ui/pageview/PageLocation;Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 7
    .param p1, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;
    .param p2, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .prologue
    .line 1058
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v3

    .line 1059
    .local v3, "endX":F
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v5

    .line 1062
    .local v5, "endY":F
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$7;->$SwitchMap$com$sonymobile$home$ui$pageview$PageViewGroup$ItemAnimationType:[I

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUpdateItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v4, p4

    .line 1075
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createTranslateAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;FFFF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v6

    .line 1079
    .local v6, "updateAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :goto_0
    if-eqz v6, :cond_0

    .line 1080
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    invoke-virtual {v6, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1091
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingUpdateAnimations:Ljava/util/Map;

    invoke-interface {v0, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1094
    :cond_0
    return-void

    .line 1065
    .end local v6    # "updateAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :pswitch_0
    const/4 v6, 0x0

    .line 1066
    .restart local v6    # "updateAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    goto :goto_0

    .line 1069
    .end local v6    # "updateAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1070
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createRandomPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v6

    .line 1071
    .restart local v6    # "updateAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    goto :goto_0

    .line 1062
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;ILcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 8
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "adapterIndex"    # I
    .param p3, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 1354
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v3

    .line 1355
    .local v3, "startX":F
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v4

    .line 1358
    .local v4, "startY":F
    iget-object v6, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingUpdateAnimations:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/util/Animation;

    .line 1359
    .local v1, "ongoingAnimation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v1, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1364
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v6, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V

    .line 1365
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updatePageItemLocation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUpdateItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    sget-object v7, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_RANDOM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    if-ne v6, v7, :cond_4

    :cond_1
    const/4 v5, 0x1

    .line 1369
    .local v5, "updated":Z
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isItemAnimationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1371
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScrollPosition()F

    move-result v0

    .line 1372
    .local v0, "currentPosition":F
    iget-object v6, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v2

    .line 1374
    .local v2, "pageSpacing":F
    invoke-direct {p0, p3, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isVisible(Lcom/sonymobile/home/ui/pageview/PageLocation;F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v6

    invoke-direct {p0, v6, v0, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isVisible(FFF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1376
    :cond_2
    invoke-direct {p0, p3, p1, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->performUpdateItemAnimation(Lcom/sonymobile/home/ui/pageview/PageLocation;Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V

    .line 1379
    .end local v0    # "currentPosition":F
    .end local v2    # "pageSpacing":F
    :cond_3
    return-void

    .line 1365
    .end local v5    # "updated":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updatePageItemLocation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Z
    .locals 7
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 1389
    iget-object v5, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {p0, v5, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->calculatePageItemPositionX(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/ui/pageview/PageLocation;)I

    move-result v3

    .line 1390
    .local v3, "newX":I
    iget-object v5, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {p0, v5, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->calculatePageItemPositionY(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/ui/pageview/PageLocation;)I

    move-result v4

    .line 1391
    .local v4, "newY":I
    iget v5, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    iget-object v6, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v6}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v6

    mul-int v2, v5, v6

    .line 1392
    .local v2, "newWidth":I
    iget v5, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    iget-object v6, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v6}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v6

    mul-int v1, v5, v6

    .line 1393
    .local v1, "newHeight":I
    const/4 v0, 0x0

    .line 1395
    .local v0, "changed":Z
    int-to-float v5, v2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWidth()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    int-to-float v5, v1

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getHeight()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 1396
    :cond_0
    int-to-float v5, v2

    int-to-float v6, v1

    invoke-virtual {p1, v5, v6}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setSize(FF)V

    .line 1397
    const/4 v0, 0x1

    .line 1399
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-ne v3, v5, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1400
    :cond_2
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setPosition(FF)V

    .line 1401
    invoke-static {p1}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;)V

    .line 1402
    const/4 v0, 0x1

    .line 1405
    :cond_3
    return v0
.end method


# virtual methods
.method public addInteractionListener(Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;)V
    .locals 1
    .param p1, "interactionListener"    # Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mInteractionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public addPageViewGroupListener(Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method protected adjustHorizontalScrollSpeed(Lcom/sonymobile/flix/util/ListTouchHelper;)V
    .locals 3
    .param p1, "listTouchHelper"    # Lcom/sonymobile/flix/util/ListTouchHelper;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1533
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getWidth()F

    move-result v0

    .line 1534
    .local v0, "size":F
    div-float v1, v2, v0

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDraggingSpeed(F)V

    .line 1535
    div-float v1, v2, v0

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingSpeed(F)V

    .line 1536
    div-float v1, v2, v0

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setSnappedDistanceTolerance(F)V

    .line 1537
    return-void
.end method

.method protected adjustScrollBounds()V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method protected calculatePageItemPositionX(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/ui/pageview/PageLocation;)I
    .locals 7
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 1424
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    .line 1425
    .local v0, "cellWidth":I
    iget v1, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 1426
    .local v1, "col":I
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1428
    .local v2, "newX":I
    iget v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1430
    return v2
.end method

.method protected calculatePageItemPositionY(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/ui/pageview/PageLocation;)I
    .locals 7
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 1441
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v0

    .line 1442
    .local v0, "cellHeight":I
    iget v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 1443
    .local v2, "row":I
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1445
    .local v1, "newY":I
    iget v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 1447
    return v1
.end method

.method protected abstract createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
.end method

.method public createSetCurrentPageAnimation(I)Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "scrollAnimation":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isPageWithinBounds(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;

    .end local v0    # "scrollAnimation":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScrollPosition()F

    move-result v1

    int-to-float v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;FF)V

    .line 367
    .restart local v0    # "scrollAnimation":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 368
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->SCROLL_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 370
    :cond_0
    return-object v0
.end method

.method public enableItemAnimations(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsItemAnimationsEnabled:Z

    .line 602
    return-void
.end method

.method public findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 691
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 692
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 693
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 694
    .local v2, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->getPageIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 698
    .end local v2    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :goto_1
    return-object v2

    .line 692
    .restart local v2    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v2    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAddItemAnimationType()Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAddItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollPosition:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getCurrentPageView()Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultPage()I
    .locals 3

    .prologue
    .line 1263
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v1, :cond_3

    .line 1264
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getDefaultPage()I

    move-result v0

    .line 1266
    .local v0, "defaultPage":I
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mHasValidPage:Z

    if-eqz v1, :cond_1

    .line 1267
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v0

    .line 1276
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLeftmostPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getRightmostPage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v0

    .line 1280
    .end local v0    # "defaultPage":I
    :goto_1
    return v0

    .line 1269
    .restart local v0    # "defaultPage":I
    :cond_1
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mHasValidPage:Z

    .line 1271
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mHasValidPage:Z

    if-nez v1, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLeftmostPage()I

    move-result v0

    goto :goto_0

    .line 1269
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1280
    .end local v0    # "defaultPage":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v0

    goto :goto_1
.end method

.method public getDeleteItemAnimationType()Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mDeleteItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    return-object v0
.end method

.method public getDepth()F
    .locals 4

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 534
    .local v0, "size":F
    const v1, 0x3eae147b    # 0.34f

    mul-float/2addr v1, v0

    return v1
.end method

.method public getLeftmostPage()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    return v0
.end method

.method public getLocationZ()F
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getZ()F

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v0}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getPageCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 5
    .param p1, "uniqueId"    # J

    .prologue
    .line 1489
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v2

    .line 1490
    .local v2, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1491
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageView;->getItemView(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 1492
    .local v1, "item":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v1, :cond_0

    .line 1496
    .end local v1    # "item":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :goto_1
    return-object v1

    .line 1490
    .restart local v1    # "item":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1496
    .end local v1    # "item":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRightmostPage()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mRightmostAdapterPage:I

    return v0
.end method

.method public getScrollPosition()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollPosition:F

    return v0
.end method

.method public getScrollTarget()F
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->getSnapTarget()F

    move-result v0

    return v0
.end method

.method public getScrollableContent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getUpdateItemAnimationType()Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUpdateItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    return-object v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsInteracting:Z

    return v0
.end method

.method public isItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsItemAnimationsEnabled:Z

    return v0
.end method

.method protected notifyInteractionEnd()V
    .locals 3

    .prologue
    .line 724
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsInteracting:Z

    .line 725
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mInteractionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;

    .line 726
    .local v1, "listener":Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;
    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;->onInteractionEnd()V

    goto :goto_0

    .line 728
    .end local v1    # "listener":Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;
    :cond_0
    return-void
.end method

.method protected notifyInteractionStart()V
    .locals 3

    .prologue
    .line 714
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsInteracting:Z

    .line 715
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mInteractionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;

    .line 716
    .local v1, "listener":Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;
    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;->onInteractionStart()V

    goto :goto_0

    .line 718
    .end local v1    # "listener":Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;
    :cond_0
    return-void
.end method

.method protected notifyNbrOfPagesChanged(IF)V
    .locals 3
    .param p1, "nbrOfPages"    # I
    .param p2, "position"    # F

    .prologue
    .line 752
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 753
    .local v1, "nbrPageViewGroupListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 754
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;->onNbrPagesChanged(IF)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    return-void
.end method

.method protected notifyScroll(FFF)V
    .locals 3
    .param p1, "position"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 739
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 740
    .local v1, "nbrPageViewGroupListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 741
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;->onScroll(FFF)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_0
    return-void
.end method

.method public onComponentFocused(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 770
    const-string v1, "ContainingPageView"

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 772
    .local v0, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->getPageIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 775
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1553
    return-void
.end method

.method public onContentChanged()V
    .locals 53

    .prologue
    .line 800
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mContentChangeEnabled:Z

    if-nez v4, :cond_0

    .line 801
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPendingContentChange:Z

    .line 996
    :goto_0
    return-void

    .line 805
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPendingContentChange:Z

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v4, :cond_1a

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v4}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getPages()[I

    move-result-object v45

    .line 812
    .local v45, "pages":[I
    if-eqz v45, :cond_1

    move-object/from16 v0, v45

    array-length v4, v0

    if-nez v4, :cond_3

    .line 814
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v37

    .line 815
    .local v37, "nbrOfChildren":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v37

    if-ge v14, v0, :cond_2

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4, v14}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/ui/pageview/PageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/ui/pageview/PageView;->release(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 815
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 818
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->clearAllDescendants()V

    goto :goto_0

    .line 823
    .end local v14    # "i":I
    .end local v37    # "nbrOfChildren":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v4}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getItemCount()I

    move-result v32

    .line 824
    .local v32, "itemCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    move/from16 v40, v0

    .line 825
    .local v40, "oldLeftmostAdapterPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mRightmostAdapterPage:I

    move/from16 v41, v0

    .line 826
    .local v41, "oldRightmostAdapterPage":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v5}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v5

    mul-int v44, v4, v5

    .line 827
    .local v44, "pageWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v5}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v5

    mul-int v42, v4, v5

    .line 828
    .local v42, "pageHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v7

    .line 829
    .local v7, "pageParentWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v8

    .line 830
    .local v8, "pageParentHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v43

    .line 831
    .local v43, "pageSpacing":F
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v49, "tempPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/ui/pageview/PageView;>;"
    const/4 v4, 0x0

    aget v4, v45, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    .line 834
    move-object/from16 v0, v45

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v4, v45, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mRightmostAdapterPage:I

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLeftmostPage()I

    move-result v11

    .line 837
    .local v11, "leftMostPageId":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getRightmostPage()I

    move-result v47

    .line 840
    .local v47, "rightMostPageId":I
    new-instance v25, Landroid/util/LongSparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/LongSparseArray;-><init>()V

    .line 841
    .local v25, "currentItemViews":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->getTypedIterator()Lcom/sonymobile/flix/components/Component$ComponentIterator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component$ComponentIterator;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 842
    .local v17, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/ui/pageview/PageView;->getAllItemViews()Ljava/util/List;

    move-result-object v35

    .line 843
    .local v35, "itemViews":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/ui/pageview/PageItemView;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 844
    .local v33, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    new-instance v9, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;

    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWorldX()F

    move-result v10

    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWorldY()F

    move-result v12

    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWorldZ()F

    move-result v13

    move-object/from16 v0, v33

    invoke-direct {v9, v0, v10, v12, v13}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;FFF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 848
    .end local v33    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/ui/pageview/PageView;->removeAllItems()V

    goto :goto_2

    .line 850
    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v35    # "itemViews":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/ui/pageview/PageItemView;>;"
    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->size()I

    move-result v39

    .line 851
    .local v39, "nbrOfPreviousItemViews":I
    if-nez v39, :cond_6

    .line 854
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->enableItemAnimations(Z)V

    .line 858
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v4

    if-lez v4, :cond_9

    const/16 v29, 0x1

    .line 859
    .local v29, "hadPages":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    if-nez v39, :cond_a

    const/16 v28, 0x1

    .line 866
    .local v28, "hadOneEmptyPage":Z
    :goto_5
    if-eqz v29, :cond_7

    if-eqz v28, :cond_b

    .line 867
    :cond_7
    if-eqz v28, :cond_8

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->clearAllDescendants()V

    .line 871
    :cond_8
    move v6, v11

    .local v6, "pageId":I
    :goto_6
    move/from16 v0, v47

    if-gt v6, v0, :cond_13

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v5

    move/from16 v0, v44

    int-to-float v9, v0

    move/from16 v0, v42

    int-to-float v10, v0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v26

    .line 873
    .local v26, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    int-to-float v4, v6

    mul-float v4, v4, v43

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageView;->setPosition(FF)V

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->addPage(Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 871
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 858
    .end local v6    # "pageId":I
    .end local v26    # "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v28    # "hadOneEmptyPage":Z
    .end local v29    # "hadPages":Z
    :cond_9
    const/16 v29, 0x0

    goto :goto_4

    .line 859
    .restart local v29    # "hadPages":Z
    :cond_a
    const/16 v28, 0x0

    goto :goto_5

    .line 880
    .restart local v28    # "hadOneEmptyPage":Z
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    if-ge v11, v4, :cond_c

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v10

    move/from16 v0, v44

    int-to-float v14, v0

    move/from16 v0, v42

    int-to-float v15, v0

    move-object/from16 v9, p0

    move v12, v7

    move v13, v8

    invoke-virtual/range {v9 .. v15}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v17

    .line 882
    .restart local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    .restart local v14    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mRightmostAdapterPage:I

    if-gt v14, v4, :cond_11

    .line 887
    move/from16 v0, v40

    if-ge v14, v0, :cond_e

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v18}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v17

    .line 900
    .restart local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :goto_8
    if-eqz v17, :cond_d

    .line 901
    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 889
    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_e
    move/from16 v0, v41

    if-le v14, v0, :cond_f

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v18}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v17

    .restart local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    goto :goto_8

    .line 892
    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v17

    .line 893
    .restart local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-nez v17, :cond_10

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v18}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    move-result-object v17

    .restart local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    goto :goto_8

    .line 896
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v16, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v15, p0

    move/from16 v18, v14

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v15 .. v22}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updatePage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageView;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v17

    goto :goto_8

    .line 906
    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mRightmostAdapterPage:I

    move/from16 v0, v47

    if-le v0, v4, :cond_12

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v19, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v18, p0

    move/from16 v20, v47

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v18 .. v24}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v17

    .line 908
    .restart local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .end local v17    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->clear()V

    .line 913
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 914
    .local v52, "view":Lcom/sonymobile/home/ui/pageview/PageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->addPage(Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 915
    invoke-virtual/range {v52 .. v52}, Lcom/sonymobile/home/ui/pageview/PageView;->getPageIndex()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v43

    const/4 v5, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageView;->setPosition(FF)V

    goto :goto_9

    .line 919
    .end local v14    # "i":I
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v52    # "view":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getPageCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScrollPosition()F

    move-result v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mLeftmostAdapterPage:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->notifyNbrOfPagesChanged(IF)V

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScrollPosition()F

    move-result v27

    .line 924
    .local v27, "currentPosition":F
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    move/from16 v0, v32

    if-ge v14, v0, :cond_17

    .line 925
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageLocation;->obtain()Lcom/sonymobile/home/ui/pageview/PageLocation;

    move-result-object v36

    .line 928
    .local v36, "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    move-object/from16 v0, v36

    invoke-interface {v4, v14, v0}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 931
    move-object/from16 v0, v36

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v26

    .line 932
    .restart local v26    # "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v26, :cond_15

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v4, v14}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getItemId(I)J

    move-result-wide v50

    .line 934
    .local v50, "uniqueItemId":J
    move-object/from16 v0, v25

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;

    .line 936
    .local v48, "tempItemView":Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
    const/16 v33, 0x0

    .line 937
    .restart local v33    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v48, :cond_14

    .line 938
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-object/from16 v33, v0

    .line 939
    move-object/from16 v0, v25

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 942
    :cond_14
    if-eqz v33, :cond_16

    .line 944
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->add(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v14, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updatePageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;ILcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 946
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->layoutPageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 962
    .end local v33    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v48    # "tempItemView":Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
    .end local v50    # "uniqueItemId":J
    :cond_15
    :goto_b
    invoke-virtual/range {v36 .. v36}, Lcom/sonymobile/home/ui/pageview/PageLocation;->recycle()V

    .line 924
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 950
    .restart local v33    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .restart local v48    # "tempItemView":Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
    .restart local v50    # "uniqueItemId":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v4, v14}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v33

    .line 951
    if-eqz v33, :cond_15

    .line 952
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->add(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->layoutPageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updatePageItemLocation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Z

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isVisible(Lcom/sonymobile/home/ui/pageview/PageLocation;F)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->performAddItemAnimation(Lcom/sonymobile/home/ui/pageview/PageLocation;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    goto :goto_b

    .line 966
    .end local v26    # "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v33    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v36    # "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    .end local v48    # "tempItemView":Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
    .end local v50    # "uniqueItemId":J
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    const-string v5, "RemovedItems"

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->findByName(Ljava/lang/String;)Lcom/sonymobile/flix/components/Component;

    move-result-object v46

    .line 967
    .local v46, "removedItemsLayer":Lcom/sonymobile/flix/components/Component;
    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->size()I

    move-result v38

    .line 968
    .local v38, "nbrOfItemViews":I
    const/4 v14, 0x0

    :goto_c
    move/from16 v0, v38

    if-ge v14, v0, :cond_19

    .line 969
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;

    .line 970
    .local v34, "itemViewData":Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->isItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v5}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->isItemPickedUp(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 972
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->performDeleteItemAnimation(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;)V

    .line 968
    :goto_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 974
    :cond_18
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v4, v5}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    goto :goto_d

    .line 980
    .end local v34    # "itemViewData":Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 984
    .end local v7    # "pageParentWidth":F
    .end local v8    # "pageParentHeight":F
    .end local v11    # "leftMostPageId":I
    .end local v14    # "i":I
    .end local v25    # "currentItemViews":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;>;"
    .end local v27    # "currentPosition":F
    .end local v28    # "hadOneEmptyPage":Z
    .end local v29    # "hadPages":Z
    .end local v32    # "itemCount":I
    .end local v38    # "nbrOfItemViews":I
    .end local v39    # "nbrOfPreviousItemViews":I
    .end local v40    # "oldLeftmostAdapterPage":I
    .end local v41    # "oldRightmostAdapterPage":I
    .end local v42    # "pageHeight":I
    .end local v43    # "pageSpacing":F
    .end local v44    # "pageWidth":I
    .end local v45    # "pages":[I
    .end local v46    # "removedItemsLayer":Lcom/sonymobile/flix/components/Component;
    .end local v47    # "rightMostPageId":I
    .end local v49    # "tempPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/ui/pageview/PageView;>;"
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->adjustScrollBounds()V

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateFromTouch()V

    .line 989
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->enableItemAnimations(Z)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onFocus()V

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onContentChangedUpdateFinished()V

    goto/16 :goto_0
.end method

.method protected onContentChangedUpdateFinished()V
    .locals 0

    .prologue
    .line 1004
    return-void
.end method

.method public onDefocus()V
    .locals 3

    .prologue
    .line 437
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 438
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 439
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->onDefocus()V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->finishPendingDeleteAnimations()V

    .line 508
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 509
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 510
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->onDestroy()V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 513
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 497
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 498
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 499
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->onDetach()V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 447
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mIsInteracting:Z

    if-nez v1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 449
    .local v0, "currentPage":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->onFocus()V

    .line 453
    .end local v0    # "currentPage":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_0
    return-void
.end method

.method public onPageItemChanged(J)V
    .locals 5
    .param p1, "uniqueId"    # J

    .prologue
    .line 1292
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v3, :cond_0

    .line 1293
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    .line 1294
    .local v0, "item":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v3, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getIndex(J)I

    move-result v1

    .line 1296
    .local v1, "itemId":I
    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1297
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageLocation;->obtain()Lcom/sonymobile/home/ui/pageview/PageLocation;

    move-result-object v2

    .line 1299
    .local v2, "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v3, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 1300
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updatePageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;ILcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 1301
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->layoutPageItem(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 1302
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1305
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 1307
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageLocation;->recycle()V

    .line 1310
    .end local v0    # "item":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v1    # "itemId":I
    .end local v2    # "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    :cond_0
    return-void
.end method

.method public onPageItemOrderChanged()V
    .locals 0

    .prologue
    .line 1320
    return-void
.end method

.method protected onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1239
    return-void
.end method

.method protected onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1247
    return-void
.end method

.method protected onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1255
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 459
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 460
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 461
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->onPause()V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 469
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 470
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 471
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->onResume()V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method public onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateFromTouch(Z)V

    .line 1558
    return-void
.end method

.method public onSceneDraw(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1606
    return-void
.end method

.method public onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1562
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateFromTouch(Z)V

    .line 1563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->enableItemAnimations(Z)V

    .line 1564
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onContentChanged()V

    .line 1565
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 491
    .local v0, "currentPage":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->onStart()V

    .line 494
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->snapToClosestPage()V

    .line 480
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 481
    .local v1, "nbrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 482
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->onStop()V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method protected onZoomFinished(F)V
    .locals 0
    .param p1, "zoomPosition"    # F

    .prologue
    .line 591
    return-void
.end method

.method protected onZoomStarted(F)V
    .locals 0
    .param p1, "zoomPosition"    # F

    .prologue
    .line 584
    return-void
.end method

.method protected onZoomUpdated(F)V
    .locals 0
    .param p1, "zoomPosition"    # F

    .prologue
    .line 587
    iput p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomPosition:F

    .line 588
    return-void
.end method

.method public removeInteractionListener(Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;)V
    .locals 1
    .param p1, "interactionListener"    # Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mInteractionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public removePageViewGroupListener(Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPageViewGroupListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public scrollTo(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveBegin()V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapTo(F)V

    .line 383
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v0, p0}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->unregisterObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    .line 325
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v0, p0}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->registerObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onContentChanged()V

    .line 331
    :cond_1
    return-void
.end method

.method public setAddItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAddItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 629
    return-void
.end method

.method public setContentChangeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mContentChangeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 676
    iput-boolean p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mContentChangeEnabled:Z

    .line 678
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mPendingContentChange:Z

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onContentChanged()V

    .line 682
    :cond_0
    return-void
.end method

.method public setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createSetCurrentPageAnimation(I)Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;

    move-result-object v0

    .line 351
    .local v0, "scrollAnimation":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;
    if-eqz v0, :cond_2

    .line 352
    if-eqz p2, :cond_0

    .line 353
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    if-eqz p2, :cond_1

    .line 358
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/sonymobile/flix/util/Animation$Listener;->onFinish(Lcom/sonymobile/flix/util/Animation;)V

    goto :goto_0
.end method

.method public setDeleteItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mDeleteItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 647
    return-void
.end method

.method public setGridHorizontalPosition(F)V
    .locals 1
    .param p1, "pos"    # F

    .prologue
    .line 542
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGridHorizontalPosition:F

    .line 543
    return-void
.end method

.method public setGridVerticalPosition(F)V
    .locals 1
    .param p1, "pos"    # F

    .prologue
    .line 538
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGridVerticalPosition:F

    .line 539
    return-void
.end method

.method protected setLocationZ(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setZ(F)V

    .line 1615
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 3
    .param p1, "scrollPosition"    # F

    .prologue
    .line 555
    iput p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollPosition:F

    .line 556
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollPosition:F

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLeftmostPage()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getRightmostPage()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->notifyScroll(FFF)V

    .line 557
    return-void
.end method

.method public setScrollableContentSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 1541
    return-void
.end method

.method public setUpdateItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mUpdateItemAnimationType:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    .line 611
    return-void
.end method

.method protected setupHorizontalScrollController(Lcom/sonymobile/flix/util/ListTouchHelper;)V
    .locals 5
    .param p1, "listTouchHelper"    # Lcom/sonymobile/flix/util/ListTouchHelper;

    .prologue
    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1506
    invoke-virtual {p1, v1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(IZ)V

    .line 1507
    invoke-virtual {p1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDefaultParams()V

    .line 1508
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setRubberbandLength(F)V

    .line 1509
    invoke-virtual {p1, v4, v4, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustRubberband(FFF)V

    .line 1510
    invoke-virtual {p1, v2, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 1512
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setAutoSnapping(Z)V

    .line 1514
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingVelocityThreshold(F)V

    .line 1516
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustSnapping(FF)V

    .line 1518
    invoke-virtual {p1, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDpiScaling(F)V

    .line 1520
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->adjustHorizontalScrollSpeed(Lcom/sonymobile/flix/util/ListTouchHelper;)V

    .line 1524
    const v0, 0x3f99999a    # 1.2f

    const v1, 0x3fa66666    # 1.3f

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustScrolling(FFFF)V

    .line 1525
    return-void
.end method

.method public snapToClosestPage()V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapToClosest()Z

    .line 1545
    return-void
.end method

.method public startJumpAnimation(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPageView()Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 1633
    .local v0, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 1634
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/ui/pageview/PageView;->getItemView(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 1636
    .local v1, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v1, :cond_0

    .line 1637
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;

    invoke-direct {v3, v1}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1640
    .end local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 340
    return-void
.end method

.method protected updateFromTouch()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateFromTouch(Z)V

    .line 547
    return-void
.end method

.method protected abstract updateFromTouch(Z)V
.end method

.method protected abstract updatePage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageView;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
.end method

.method public zoomTo(F)V
    .locals 1
    .param p1, "zoomPosition"    # F

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->zoomTo(FZ)V

    .line 565
    return-void
.end method

.method public zoomTo(FZ)V
    .locals 2
    .param p1, "zoomPosition"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 568
    if-nez p2, :cond_0

    .line 569
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/DynamicsTask;->getDynamics()Lcom/sonymobile/flix/util/Dynamics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Dynamics;->setValue(F)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/DynamicsTask;->getDynamics()Lcom/sonymobile/flix/util/Dynamics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Dynamics;->setTarget(F)V

    .line 578
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/DynamicsTask;->getDynamics()Lcom/sonymobile/flix/util/Dynamics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Dynamics;->reset()V

    .line 579
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 580
    return-void
.end method
