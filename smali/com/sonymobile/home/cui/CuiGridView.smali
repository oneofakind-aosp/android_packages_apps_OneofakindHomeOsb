.class public Lcom/sonymobile/home/cui/CuiGridView;
.super Lcom/sonymobile/flix/components/Component;
.source "CuiGridView.java"

# interfaces
.implements Lcom/sonymobile/home/ComponentFocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridView$FadeTask;,
        Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;,
        Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

.field private final mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mCenterSmallMenus:Z

.field private final mClipContainer:Lcom/sonymobile/flix/components/Component;

.field private final mConsumer:Lcom/sonymobile/flix/components/TouchArea;

.field private final mContainer:Lcom/sonymobile/flix/components/Component;

.field private final mDataObserver:Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;

.field private final mDividerColor:I

.field private final mDividerSize:I

.field private mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

.field private mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

.field private mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

.field private final mGridItemViews:Lcom/sonymobile/flix/components/Group;

.field private final mHeader:Lcom/sonymobile/flix/components/Component;

.field private mHeaderOffset:F

.field private mHeaderSize:I

.field private final mIsMenuHorizontal:Z

.field private final mIsMenuHorizontalInLandscape:Z

.field private mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

.field private final mScrollbarHeight:I

.field private mScrollbarStartPosition:F

.field private final mScrollbarWidth:I

.field private mShowItemDividers:Z

.field private final mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

.field private mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

.field private mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;ZZZZLcom/sonymobile/flix/components/Component;)V
    .locals 7
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "isPortrait"    # Z
    .param p3, "isHorizontalInLandscape"    # Z
    .param p4, "isScrollable"    # Z
    .param p5, "showItemDividers"    # Z
    .param p6, "header"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 44
    new-instance v5, Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;-><init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView$1;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDataObserver:Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;

    .line 66
    const/4 v5, 0x0

    iput v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mShowItemDividers:Z

    .line 121
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->setCameraProjection(I)V

    .line 122
    iput-boolean p5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mShowItemDividers:Z

    .line 123
    iput-object p6, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    .line 124
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v4

    .line 125
    .local v4, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v5, 0x7f0a0018

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mCenterSmallMenus:Z

    .line 126
    iput-boolean p3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontalInLandscape:Z

    .line 127
    if-nez p2, :cond_0

    if-eqz p3, :cond_4

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    .line 128
    const v5, 0x7f0b006a

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    .line 129
    const v5, 0x7f0e001d

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerColor:I

    .line 130
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    if-eqz v5, :cond_1

    .line 131
    const v5, 0x7f0b006d

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderSize:I

    .line 133
    :cond_1
    const v5, 0x7f0b0067

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarWidth:I

    .line 134
    const v5, 0x7f0b00ae

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarHeight:I

    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/home/cui/CuiGridView$1;

    invoke-direct {v6, p0}, Lcom/sonymobile/home/cui/CuiGridView$1;-><init>(Lcom/sonymobile/home/cui/CuiGridView;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 159
    new-instance v5, Lcom/sonymobile/home/cui/CuiGridView$2;

    invoke-direct {v5, p0, p1}, Lcom/sonymobile/home/cui/CuiGridView$2;-><init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mConsumer:Lcom/sonymobile/flix/components/TouchArea;

    .line 172
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mConsumer:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 178
    new-instance v5, Lcom/sonymobile/home/cui/CuiGridView$3;

    invoke-direct {v5, p0, p1}, Lcom/sonymobile/home/cui/CuiGridView$3;-><init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    .line 198
    if-nez p2, :cond_8

    iget-boolean v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontalInLandscape:Z

    if-eqz v5, :cond_8

    .line 200
    invoke-virtual {v4}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02014d

    invoke-static {v5, v6}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x1

    .line 202
    .local v2, "hasBackground":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 203
    new-instance v5, Lcom/sonymobile/flix/components/NinePatchImage;

    const v6, 0x7f02014d

    invoke-direct {v5, p1, v6}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 225
    :goto_2
    if-nez v2, :cond_2

    .line 226
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 228
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 229
    new-instance v5, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v5, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    .line 230
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 231
    new-instance v5, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v5, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    .line 232
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v5, v6}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 233
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    if-eqz v5, :cond_3

    .line 234
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 236
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 237
    new-instance v5, Lcom/sonymobile/flix/components/Group;

    invoke-direct {v5, p1}, Lcom/sonymobile/flix/components/Group;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    .line 238
    new-instance v5, Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/flix/util/GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    .line 239
    invoke-virtual {p0, p4}, Lcom/sonymobile/home/cui/CuiGridView;->setScroll(Z)V

    .line 240
    const v5, 0x7f0f0010

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/cui/CuiGridView;->setId(I)V

    .line 241
    return-void

    .line 127
    .end local v2    # "hasBackground":Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 200
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 206
    .restart local v2    # "hasBackground":Z
    :cond_6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 207
    .local v1, "bgPadding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitResources(Landroid/content/Context;Lcom/sonymobile/home/resources/ResourceManager;)Landroid/content/res/Resources;

    move-result-object v3

    .line 208
    .local v3, "portraitResources":Landroid/content/res/Resources;
    const v5, 0x7f02014c

    invoke-static {v3, v5, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getNinePatchBitmapFromPotentialNullResource(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, "bgBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 212
    new-instance v5, Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-direct {v5, p1, v0}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 213
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v5, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchPadding(Landroid/graphics/Rect;)V

    .line 214
    const/4 v2, 0x1

    goto :goto_2

    .line 216
    :cond_7
    new-instance v5, Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-direct {v5, p1}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    goto/16 :goto_2

    .line 221
    .end local v0    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bgPadding":Landroid/graphics/Rect;
    .end local v2    # "hasBackground":Z
    .end local v3    # "portraitResources":Landroid/content/res/Resources;
    :cond_8
    invoke-virtual {v4}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02014c

    invoke-static {v5, v6}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v2, 0x1

    .line 222
    .restart local v2    # "hasBackground":Z
    :goto_3
    if-eqz v2, :cond_a

    new-instance v5, Lcom/sonymobile/flix/components/NinePatchImage;

    const v6, 0x7f02014c

    invoke-direct {v5, p1, v6}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    :goto_4
    iput-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    goto/16 :goto_2

    .line 221
    .end local v2    # "hasBackground":Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 222
    .restart local v2    # "hasBackground":Z
    :cond_a
    new-instance v5, Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-direct {v5, p1}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    goto :goto_4
.end method

.method static synthetic access$100(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/util/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->onContentChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/cui/CuiGridView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/home/cui/CuiGridView;->onItemChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/util/SpringDynamics;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/components/Rectangle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/home/cui/CuiGridView$FadeTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/cui/CuiGridView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p1, "x1"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/home/cui/CuiGridView;->animateScrollbarAlphaTo(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->updateFromTouch()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->invalidate()V

    return-void
.end method

.method private addDivider(FFFF)V
    .locals 2
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 536
    new-instance v0, Lcom/sonymobile/flix/components/Rectangle;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 537
    .local v0, "divider":Lcom/sonymobile/flix/components/Rectangle;
    invoke-virtual {v0, p3, p4}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 538
    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerColor:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;->setColor(I)V

    .line 539
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Rectangle;->setPosition(FF)V

    .line 540
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 541
    return-void
.end method

.method private addItemDivider(IIILcom/sonymobile/home/cui/CuiGridItemView;FF)V
    .locals 5
    .param p1, "numberOfRows"    # I
    .param p2, "numberOfColumns"    # I
    .param p3, "position"    # I
    .param p4, "gridItemView"    # Lcom/sonymobile/home/cui/CuiGridItemView;
    .param p5, "xPos"    # F
    .param p6, "yPos"    # F

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 483
    iget-boolean v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v0, :cond_2

    .line 484
    if-ne p1, v1, :cond_1

    .line 487
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, p5

    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerYpos()F

    move-result v1

    iget v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerHeight()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-ne p1, v2, :cond_0

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, p5

    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerYpos()F

    move-result v1

    iget v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerHeight()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    .line 500
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, p6

    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    int-to-float v2, v2

    invoke-direct {p0, p5, v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    goto :goto_0

    .line 504
    :cond_2
    if-ne p2, v1, :cond_3

    .line 507
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerXpos()F

    move-result v0

    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v1, p6

    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerWidth()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    goto :goto_0

    .line 511
    :cond_3
    if-ne p2, v2, :cond_0

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerXpos()F

    move-result v0

    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v1, p6

    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerWidth()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    .line 520
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, p5

    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v2

    invoke-direct {p0, v0, p6, v1, v2}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    goto :goto_0
.end method

.method private animateScrollbarAlphaTo(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 739
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/SpringDynamics;->setTarget(F)V

    .line 740
    return-void
.end method

.method private calculateXPosition(I)F
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 625
    const/4 v1, 0x0

    .line 627
    .local v1, "xPos":F
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v2, :cond_0

    .line 628
    iget-boolean v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v2, :cond_1

    .line 629
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfRows()I

    move-result v2

    div-int v0, p1, v2

    .line 630
    .local v0, "col":I
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 639
    .end local v0    # "col":I
    :cond_0
    :goto_0
    return v1

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfColumns()I

    move-result v2

    rem-int v0, p1, v2

    .line 634
    .restart local v0    # "col":I
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    goto :goto_0
.end method

.method private calculateYPosition(I)F
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, "yPos":F
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v2, :cond_0

    .line 646
    iget-boolean v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfRows()I

    move-result v2

    rem-int v0, p1, v2

    .line 648
    .local v0, "row":I
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 657
    .end local v0    # "row":I
    :cond_0
    :goto_0
    return v1

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfColumns()I

    move-result v2

    div-int v0, p1, v2

    .line 652
    .restart local v0    # "row":I
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    goto :goto_0
.end method

.method private createScrollController(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 706
    new-instance v0, Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getScheduler()Lcom/sonymobile/flix/util/Scheduler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Scheduler;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    .line 707
    iget-boolean v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v3, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(IZ)V

    .line 713
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setPixelPreciseParams()V

    .line 716
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->adjustScrolling(FFFF)V

    .line 718
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setFlingFriction(F)V

    .line 719
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v4, v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 720
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;-><init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    .line 721
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->addListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V

    .line 722
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->addGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 723
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setDirection(IZ)V

    goto :goto_0
.end method

.method private createScrollbar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 727
    new-instance v0, Lcom/sonymobile/flix/components/Rectangle;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    .line 728
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    const v1, -0x7f7f7f80

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;->setColor(I)V

    .line 729
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Rectangle;->setAlpha(F)V

    .line 730
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 731
    new-instance v0, Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonymobile/flix/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    .line 732
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/util/SpringDynamics;->setSpring(FF)V

    .line 733
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/util/SpringDynamics;->setTarget(F)V

    .line 734
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;

    const/high16 v1, 0x3b000000    # 0.001953125f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/SpringDynamics;->setAtRestDistance(F)V

    .line 735
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/cui/CuiGridView$FadeTask;-><init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    .line 736
    return-void
.end method

.method private getLandscapeHorizontalDividerWidth()F
    .locals 3

    .prologue
    .line 576
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfColumns()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v0, v1

    .line 581
    .local v0, "width":F
    :goto_0
    return v0

    .line 579
    .end local v0    # "width":F
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .restart local v0    # "width":F
    goto :goto_0
.end method

.method private getLandscapeHorizontalDividerXpos()F
    .locals 3

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerWidth()F

    move-result v0

    .line 592
    .local v0, "dividerWidth":F
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    sub-float/2addr v1, v0

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    return v1
.end method

.method private getPortraitResources(Landroid/content/Context;Lcom/sonymobile/home/resources/ResourceManager;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "currentContext"    # Landroid/content/Context;
    .param p2, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 252
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 253
    .local v0, "newConfig":Landroid/content/res/Configuration;
    const/4 v1, 0x1

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method private getPortraitVerticalDividerHeight()F
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfRows()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v0, v1

    .line 555
    .local v0, "height":F
    :goto_0
    return v0

    .line 553
    .end local v0    # "height":F
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v1

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .restart local v0    # "height":F
    goto :goto_0
.end method

.method private getPortraitVerticalDividerYpos()F
    .locals 3

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerHeight()F

    move-result v0

    .line 566
    .local v0, "dividerHeight":F
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v1

    sub-float/2addr v1, v0

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    return v1
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 698
    return-void
.end method

.method private onContentChanged()V
    .locals 21

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Group;->getNbrChildren()I

    move-result v14

    .line 402
    .local v14, "nbrOfViews":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_1

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v4, v7}, Lcom/sonymobile/flix/components/Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/home/cui/CuiGridItemView;

    .line 404
    .local v12, "itemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    if-eqz v12, :cond_0

    .line 405
    invoke-virtual {v12}, Lcom/sonymobile/home/cui/CuiGridItemView;->release()V

    .line 402
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 408
    .end local v12    # "itemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Group;->clear()V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->clear()V

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v4, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCount()I

    move-result v15

    .line 417
    .local v15, "numberOfItems":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfRows()I

    move-result v5

    .line 418
    .local v5, "numberOfRows":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfColumns()I

    move-result v6

    .line 420
    .local v6, "numberOfColumns":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v4, :cond_2

    .line 421
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v4, :cond_7

    .line 422
    if-lez v15, :cond_6

    int-to-float v4, v15

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v4, v4, v18

    float-to-double v0, v4

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v18

    mul-int v4, v4, v18

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getWidth()F

    move-result v18

    sub-float v13, v4, v18

    .line 425
    .local v13, "max":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0, v13}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 434
    .end local v13    # "max":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mShowItemDividers:Z

    if-eqz v4, :cond_3

    if-lez v15, :cond_3

    .line 435
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v4, :cond_9

    .line 437
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/home/cui/CuiGridView;->calculateXPosition(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v4, v4, v18

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerYpos()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getPortraitVerticalDividerHeight()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    .line 451
    :cond_3
    :goto_3
    const/16 v17, 0x0

    .line 452
    .local v17, "xOffset":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mCenterSmallMenus:Z

    if-eqz v4, :cond_4

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfVisibleColumns()I

    move-result v11

    .line 454
    .local v11, "columnCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v18

    mul-int v18, v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v16, v4, v18

    .line 455
    .local v16, "widthDiff":F
    const/4 v4, 0x0

    cmpl-float v4, v16, v4

    if-lez v4, :cond_4

    .line 456
    const/high16 v4, 0x40000000    # 2.0f

    div-float v17, v16, v4

    .line 460
    .end local v11    # "columnCount":I
    .end local v16    # "widthDiff":F
    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v15, :cond_b

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v4, v7}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getItemView(I)Lcom/sonymobile/home/cui/CuiGridItemView;

    move-result-object v8

    .line 462
    .local v8, "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    if-eqz v8, :cond_5

    .line 464
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/home/cui/CuiGridView;->calculateXPosition(I)F

    move-result v4

    add-float v9, v4, v17

    .line 465
    .local v9, "xPos":F
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/home/cui/CuiGridView;->calculateYPosition(I)F

    move-result v10

    .line 466
    .local v10, "yPos":F
    invoke-virtual {v8, v9, v10}, Lcom/sonymobile/home/cui/CuiGridItemView;->setPosition(FF)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v4, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->layout(II)V

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v4, v8}, Lcom/sonymobile/flix/components/Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 469
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mShowItemDividers:Z

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    .line 470
    invoke-direct/range {v4 .. v10}, Lcom/sonymobile/home/cui/CuiGridView;->addItemDivider(IIILcom/sonymobile/home/cui/CuiGridItemView;FF)V

    .line 460
    .end local v9    # "xPos":F
    .end local v10    # "yPos":F
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 422
    .end local v8    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    .end local v17    # "xOffset":F
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 427
    :cond_7
    if-lez v15, :cond_8

    int-to-float v4, v15

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v4, v4, v18

    float-to-double v0, v4

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v18

    mul-int v4, v4, v18

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getHeight()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    sub-float v13, v4, v18

    .line 430
    .restart local v13    # "max":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0, v13}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    goto/16 :goto_2

    .line 427
    .end local v13    # "max":F
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 443
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerXpos()F

    move-result v4

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/home/cui/CuiGridView;->calculateYPosition(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCellHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v18, v18, v19

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/cui/CuiGridView;->getLandscapeHorizontalDividerWidth()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/cui/CuiGridView;->mDividerSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->addDivider(FFFF)V

    goto/16 :goto_3

    .line 475
    .end local v5    # "numberOfRows":I
    .end local v6    # "numberOfColumns":I
    .end local v15    # "numberOfItems":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v4, :cond_b

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 479
    :cond_b
    return-void
.end method

.method private onItemChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/sonymobile/home/cui/CuiGridView;->updateItem(I)V

    .line 597
    return-void
.end method

.method private removeScrollbar()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 315
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 317
    :cond_0
    return-void
.end method

.method private removeTouchController()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->removeGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 307
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->removeListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    .line 310
    :cond_0
    return-void
.end method

.method private updateFromTouch()V
    .locals 8

    .prologue
    .line 664
    const/4 v2, 0x0

    .line 665
    .local v2, "x":F
    const/4 v3, 0x0

    .line 666
    .local v3, "y":F
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v4, :cond_0

    .line 667
    iget-boolean v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v4

    neg-float v2, v4

    .line 670
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->getBoundsMax()F

    move-result v5

    div-float v1, v4, v5

    .line 673
    .local v1, "scrollPercentage":F
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Rectangle;->getWidth()F

    move-result v5

    sub-float v0, v4, v5

    .line 674
    .local v0, "scrollDistance":F
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarStartPosition:F

    mul-float v6, v0, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Rectangle;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/Rectangle;->setPosition(FF)V

    .line 687
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, v2, v3}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 688
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->invalidate()V

    .line 690
    .end local v0    # "scrollDistance":F
    .end local v1    # "scrollPercentage":F
    :cond_0
    return-void

    .line 677
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v4

    neg-float v3, v4

    .line 679
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v5}, Lcom/sonymobile/flix/util/ListTouchHelper;->getBoundsMax()F

    move-result v5

    div-float v1, v4, v5

    .line 682
    .restart local v1    # "scrollPercentage":F
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Rectangle;->getHeight()F

    move-result v5

    sub-float v0, v4, v5

    .line 683
    .restart local v0    # "scrollDistance":F
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Rectangle;->getX()F

    move-result v5

    iget v6, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarStartPosition:F

    mul-float v7, v0, v1

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/Rectangle;->setPosition(FF)V

    goto :goto_0
.end method

.method private updateItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridView;->getItem(I)Lcom/sonymobile/home/cui/CuiGridItemView;

    move-result-object v0

    .line 609
    .local v0, "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->updateItemView(Lcom/sonymobile/home/cui/CuiGridItemView;I)V

    .line 611
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 613
    :cond_0
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/sonymobile/home/cui/CuiGridItemView;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItemView;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Group;->getNbrChildren()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComponentFocused(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v0, :cond_0

    .line 390
    iget-boolean v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapTo(F)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->snapTo(F)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 259
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/cui/CuiGridView;->setAdapter(Lcom/sonymobile/home/cui/CuiGridAdapter;)V

    .line 261
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Group;->getNbrChildren()I

    move-result v2

    .line 262
    .local v2, "nbrOfViews":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 263
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridItemView;

    .line 264
    .local v1, "itemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->release()V

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "itemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mGridItemViews:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Group;->clear()V

    .line 269
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->clear()V

    .line 270
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->removeTouchController()V

    .line 271
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->removeScrollbar()V

    .line 272
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/home/cui/CuiGridAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonymobile/home/cui/CuiGridAdapter;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDataObserver:Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->unregisterObserver(Lcom/sonymobile/home/cui/CuiGridViewObserver;)V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->onDestroy()V

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mDataObserver:Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->registerObserver(Lcom/sonymobile/home/cui/CuiGridViewObserver;)V

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->onContentChanged()V

    .line 285
    return-void
.end method

.method public setScroll(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 293
    if-eqz p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/cui/CuiGridView;->createScrollController(Landroid/content/Context;)V

    .line 296
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->createScrollbar()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->removeTouchController()V

    .line 300
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridView;->removeScrollbar()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v10, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 321
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 322
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 323
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mConsumer:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 324
    iget-boolean v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mIsMenuHorizontal:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 328
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 329
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 330
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 332
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 334
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    move v1, v9

    move-object v3, p0

    move v4, v9

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 335
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v9, v1}, Lcom/sonymobile/flix/components/Rectangle;->move(FF)V

    .line 336
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Rectangle;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarStartPosition:F

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    move v4, v2

    move v5, v1

    move-object v6, p0

    move v7, v2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 340
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderSize:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v3}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 344
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    move v4, v1

    move v5, v9

    move-object v6, p0

    move v7, v1

    move v8, v9

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 345
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v9, v3}, Lcom/sonymobile/flix/components/Component;->move(FF)V

    .line 346
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    .line 349
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    sub-float v3, p2, v3

    invoke-virtual {v0, p1, v3}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 350
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    move v4, v1

    move v5, v9

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 353
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    sub-float v3, p2, v3

    invoke-virtual {v0, p1, v3}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 354
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 355
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    move v4, v1

    move v5, v9

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 356
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v10}, Lcom/sonymobile/flix/components/Component;->setClippingEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarHeight:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 362
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeader:Lcom/sonymobile/flix/components/Component;

    move v3, v9

    move v5, v2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 363
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Rectangle;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarStartPosition:F

    goto/16 :goto_0

    .line 366
    :cond_2
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    .line 368
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    sub-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 369
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mTouchArea:Lcom/sonymobile/flix/components/TouchArea;

    move v3, v2

    move-object v4, p0

    move v5, v2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 371
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    sub-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 372
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 373
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    move v3, v2

    move-object v4, p0

    move v5, v2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 374
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mClipContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v10}, Lcom/sonymobile/flix/components/Component;->setClippingEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarHeight:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 379
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    move v3, v9

    move-object v4, p0

    move v5, v2

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 380
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/home/cui/CuiGridView;->mHeaderOffset:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Rectangle;->move(FF)V

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Rectangle;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridView;->mScrollbarStartPosition:F

    goto/16 :goto_0
.end method
