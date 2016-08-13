.class public Lcom/sonymobile/home/MainView;
.super Lcom/sonymobile/flix/SceneView;
.source "MainView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;
.implements Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;
.implements Lcom/sonymobile/home/apptray/AppTrayListener;
.implements Lcom/sonymobile/home/desktop/DesktopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/MainView$RemovedItemsLayer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field protected final mApplicationContext:Landroid/content/Context;

.field protected final mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

.field private mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

.field private mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

.field private mDebugFirstDraw:Z

.field protected final mDialogHandler:Lcom/sonymobile/home/DialogHandler;

.field private final mEnableTranslucentSystemBars:Z

.field protected final mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field protected mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

.field protected final mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

.field protected final mIntentHandler:Lcom/sonymobile/home/IntentHandler;

.field private mIsInitialSetup:Z

.field private mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

.field protected mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

.field protected mLandscape:Z

.field private mLifeCycleState:I

.field private final mMainViewResidents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/mainview/MainViewResident;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawListener:Lcom/sonymobile/home/OnDrawListener;

.field private mOnSizeChangedRunnable:Ljava/lang/Runnable;

.field private final mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field protected final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mPerspectiveFactor:F

.field protected final mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field private mScene:Lcom/sonymobile/flix/components/Scene;

.field private mTouching:Z

.field protected mTransferView:Lcom/sonymobile/home/transfer/TransferView;

.field protected mViewSwitcher:Lcom/sonymobile/home/MainViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/sonymobile/home/MainView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/MainView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p3, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p4, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p5, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p8, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p9, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p10, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/SceneView;-><init>(Landroid/content/Context;)V

    .line 95
    iput-boolean v3, p0, Lcom/sonymobile/home/MainView;->mDebugFirstDraw:Z

    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    .line 123
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 125
    iput-boolean v3, p0, Lcom/sonymobile/home/MainView;->mIsInitialSetup:Z

    .line 127
    iput-object v4, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    .line 131
    iput-object v4, p0, Lcom/sonymobile/home/MainView;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 873
    new-instance v2, Lcom/sonymobile/home/MainView$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/MainView$4;-><init>(Lcom/sonymobile/home/MainView;)V

    iput-object v2, p0, Lcom/sonymobile/home/MainView;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/sonymobile/home/MainView;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    .line 189
    iput-object p3, p0, Lcom/sonymobile/home/MainView;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    .line 190
    iput-object p4, p0, Lcom/sonymobile/home/MainView;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 191
    iput-object p5, p0, Lcom/sonymobile/home/MainView;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 192
    iput-object p6, p0, Lcom/sonymobile/home/MainView;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 193
    iput-object p7, p0, Lcom/sonymobile/home/MainView;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 194
    iput-object p8, p0, Lcom/sonymobile/home/MainView;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 197
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/MainView;->mEnableTranslucentSystemBars:Z

    .line 199
    iput-object p9, p0, Lcom/sonymobile/home/MainView;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 200
    iput-object p10, p0, Lcom/sonymobile/home/MainView;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .line 202
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 203
    .local v0, "perspectiveValueTyped":Landroid/util/TypedValue;
    const v2, 0x7f070015

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 204
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/MainView;->mPerspectiveFactor:F

    .line 206
    invoke-direct {p0}, Lcom/sonymobile/home/MainView;->enableFullscreenDrawing()V

    .line 208
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/MainView;->setFocusable(Z)V

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/MainView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/home/MainView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/MainView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonymobile/home/MainView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private enableFullscreenDrawing()V
    .locals 1

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/MainView;->setSystemUiVisibility(I)V

    .line 749
    return-void
.end method

.method private enableTranslucentSystemBars()V
    .locals 2

    .prologue
    .line 767
    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v1}, Lcom/sonymobile/home/FragmentHandler;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 768
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 769
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 771
    return-void
.end method

.method private enableTransparentSystemBars()V
    .locals 2

    .prologue
    .line 756
    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v1}, Lcom/sonymobile/home/FragmentHandler;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 757
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 759
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 760
    return-void
.end method

.method private updateSceneMargins()V
    .locals 5

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/flix/components/Scene;->setInnerMargin(FFFF)V

    .line 799
    return-void
.end method


# virtual methods
.method public closeAppTray(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/MainView;->showDesktop(Z)V

    .line 421
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 908
    invoke-super {p0, p1}, Lcom/sonymobile/flix/SceneView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 909
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 914
    invoke-super {p0, p1}, Lcom/sonymobile/flix/SceneView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 915
    const/4 v0, 0x1

    return v0
.end method

.method public focusView()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->focusView()Z

    move-result v0

    return v0
.end method

.method public forceLayoutInNextLayoutPass()V
    .locals 0

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->requestLayout()V

    .line 629
    return-void
.end method

.method protected getContainerView()Lcom/sonymobile/flix/components/Component;
    .locals 2

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialCaseFocusComponent(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/mainview/MainViewResident;->getSpecialCaseFocusComponent(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 885
    invoke-super {p0}, Lcom/sonymobile/flix/SceneView;->onAttachedToWindow()V

    .line 887
    iget-boolean v0, p0, Lcom/sonymobile/home/MainView;->mEnableTranslucentSystemBars:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/sonymobile/home/MainView;->enableTransparentSystemBars()V

    .line 894
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onAttachedToWindow()V

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 898
    return-void

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/MainView;->enableTranslucentSystemBars()V

    goto :goto_0
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/home/MainView;->mTouching:Z

    if-nez v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v1}, Lcom/sonymobile/home/mainview/MainViewResident;->onBackButtonPressed()Z

    move-result v0

    .line 462
    :cond_0
    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 507
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 508
    .local v1, "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    invoke-interface {v1}, Lcom/sonymobile/home/mainview/MainViewResident;->onCreate()V

    goto :goto_0

    .line 510
    .end local v1    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 512
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 529
    .local v1, "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    invoke-interface {v1}, Lcom/sonymobile/home/mainview/MainViewResident;->onDestroy()V

    goto :goto_0

    .line 532
    .end local v1    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    if-eqz v2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v2}, Lcom/sonymobile/home/transfer/TransferView;->cancelTransfer()V

    .line 534
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v2}, Lcom/sonymobile/home/transfer/TransferView;->removeAllListeners()V

    .line 537
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    if-eqz v2, :cond_3

    .line 538
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v2}, Lcom/sonymobile/home/folder/FolderOpener;->onDestroy()V

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 542
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/MainView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 543
    iput-object v3, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    .line 546
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->destroyAccessibility()V

    .line 548
    iput-object v3, p0, Lcom/sonymobile/home/MainView;->mOnDrawListener:Lcom/sonymobile/home/OnDrawListener;

    .line 550
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 551
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 516
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 517
    .local v1, "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    invoke-interface {v1}, Lcom/sonymobile/home/mainview/MainViewResident;->onDetach()V

    goto :goto_0

    .line 519
    .end local v1    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    :cond_0
    const/4 v2, 0x3

    iput v2, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 520
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 903
    invoke-super {p0}, Lcom/sonymobile/flix/SceneView;->onDetachedFromWindow()V

    .line 904
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mOnDrawListener:Lcom/sonymobile/home/OnDrawListener;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mOnDrawListener:Lcom/sonymobile/home/OnDrawListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/OnDrawListener;->onDrawStart(Landroid/graphics/Canvas;)V

    .line 786
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/flix/SceneView;->onDraw(Landroid/graphics/Canvas;)V

    .line 787
    return-void
.end method

.method public onHomeButtonPressed(Z)V
    .locals 1
    .param p1, "isHomeScreenInFront"    # Z

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/sonymobile/home/MainView;->mTouching:Z

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->clearFocus()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/mainview/MainViewResident;->onHomeButtonPressed(Z)V

    .line 494
    :cond_1
    return-void
.end method

.method public onMenuButtonPressed()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onMenuButtonPressed()Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onPause()V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/IntentHandler;->isRequestPending()Z

    move-result v0

    if-nez v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonymobile/home/transfer/TransferView;->cancelTransfer()V

    .line 585
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 586
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onResume()V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->onResume()V

    .line 605
    :cond_2
    const/4 v0, 0x7

    iput v0, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 609
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->requestLayout()V

    .line 610
    return-void
.end method

.method protected onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 64
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 214
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Scene;->setAutoInvalidation(I)V

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/MainView;->updateSceneMargins()V

    .line 222
    new-instance v33, Lcom/sonymobile/flix/components/Component;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 223
    .local v33, "containerView":Lcom/sonymobile/flix/components/Component;
    const v3, 0x7f0f000b

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setId(I)V

    .line 224
    const-string v3, "Container3D"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 225
    const/4 v3, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setCameraProjection(I)V

    .line 226
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/MainView;->mPerspectiveFactor:F

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setCameraPerspective(F)V

    .line 227
    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setSortingEnabled(Z)V

    .line 228
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 229
    invoke-virtual/range {v33 .. v33}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 231
    new-instance v3, Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    invoke-virtual {v3}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    const/high16 v4, -0x3d380000    # -100.0f

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setOrder(F)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/home/MainView;->mEnableTranslucentSystemBars:Z

    if-eqz v3, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setVisible(Z)V

    .line 242
    :cond_0
    new-instance v3, Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setAllowedAngle(F)V

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    const v4, 0x3eb33333    # 0.35f

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setAnglePenalty(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->enableAutoAddFocusables(Lcom/sonymobile/flix/components/Component;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v5

    .line 256
    .local v5, "storage":Lcom/sonymobile/home/storage/Storage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/MainView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/MainView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 260
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Scene;->setConsumeTouchEvents(Z)V

    .line 262
    new-instance v3, Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sonymobile/home/transfer/TransferView;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    new-instance v4, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/transfer/TransferView;->addTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V

    .line 265
    new-instance v27, Lcom/sonymobile/flix/components/Component;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 266
    .local v27, "cuiLayer":Lcom/sonymobile/flix/components/Component;
    const-string v3, "CuiLayer"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 269
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 272
    .local v14, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v22

    .line 273
    .local v22, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {}, Lcom/sonymobile/home/tip/TipManager;->getInstance()Lcom/sonymobile/home/tip/TipManager;

    move-result-object v23

    .line 275
    .local v23, "tipManager":Lcom/sonymobile/home/tip/TipManager;
    invoke-static/range {v22 .. v22}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v26

    .line 276
    .local v26, "desktopGrid":Lcom/sonymobile/grid/Grid;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/MainView;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-static {v3, v4}, Lcom/sonymobile/home/storage/StorageManager;->getStatistics(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/statistics/StatisticsManager;

    move-result-object v10

    .line 278
    .local v10, "statisticsManager":Lcom/sonymobile/home/statistics/StatisticsManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v61, v0

    check-cast v61, Lcom/sonymobile/home/HomeApplication;

    .line 279
    .local v61, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual/range {v61 .. v61}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v16

    .line 280
    .local v16, "userSettings":Lcom/sonymobile/home/settings/UserSettings;
    new-instance v3, Lcom/sonymobile/home/folder/FolderOpener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/MainView;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/MainView;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/MainView;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/MainView;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/home/MainView;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/MainView;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    invoke-direct/range {v3 .. v16}, Lcom/sonymobile/home/folder/FolderOpener;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Landroid/content/res/Resources;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    .line 284
    new-instance v37, Lcom/sonymobile/home/search/SearchableModelsWrapper;

    invoke-direct/range {v37 .. v37}, Lcom/sonymobile/home/search/SearchableModelsWrapper;-><init>()V

    .line 286
    .local v37, "searchableModelsWrapper":Lcom/sonymobile/home/search/SearchableModelsWrapper;
    new-instance v17, Lcom/sonymobile/home/desktop/Desktop;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    move-object/from16 v36, v0

    move-object/from16 v18, p1

    move-object/from16 v24, v10

    move-object/from16 v32, p0

    invoke-direct/range {v17 .. v37}, Lcom/sonymobile/home/desktop/Desktop;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/desktop/DesktopListener;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V

    .line 292
    .local v17, "desktop":Lcom/sonymobile/home/desktop/Desktop;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/desktop/Desktop;->getView()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    .line 293
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/desktop/Desktop;->onAttachedToScene()V

    .line 294
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/desktop/Desktop;->setVisible(Z)V

    .line 297
    invoke-static/range {v22 .. v22}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->createAppTrayGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v50

    .line 299
    .local v50, "appTrayGrid":Lcom/sonymobile/grid/Grid;
    new-instance v42, Lcom/sonymobile/home/MainView$1;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/MainView$1;-><init>(Lcom/sonymobile/home/MainView;Lcom/sonymobile/home/desktop/Desktop;)V

    .line 306
    .local v42, "appTrayDropZoneSpaceCallback":Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;
    new-instance v38, Lcom/sonymobile/home/apptray/AppTray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/MainView;->getWidth()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    move-object/from16 v58, v0

    move-object/from16 v39, p1

    move-object/from16 v41, v22

    move-object/from16 v48, v5

    move-object/from16 v49, v10

    move-object/from16 v59, p0

    move-object/from16 v60, v37

    invoke-direct/range {v38 .. v60}, Lcom/sonymobile/home/apptray/AppTray;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;ILcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/apptray/AppTrayListener;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V

    .line 311
    .local v38, "appTray":Lcom/sonymobile/home/apptray/AppTray;
    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTray;->attachToContainer(Lcom/sonymobile/flix/components/Component;)V

    .line 312
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/apptray/AppTray;->setVisible(Z)V

    .line 314
    new-instance v62, Lcom/sonymobile/flix/components/Component;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 315
    .local v62, "openFolderLayer":Lcom/sonymobile/flix/components/Component;
    const v3, 0x7f0f0034

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->setId(I)V

    .line 317
    move-object/from16 v0, v33

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 320
    new-instance v63, Lcom/sonymobile/home/MainView$RemovedItemsLayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, v63

    invoke-direct {v0, v3}, Lcom/sonymobile/home/MainView$RemovedItemsLayer;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 321
    .local v63, "removedItems":Lcom/sonymobile/home/MainView$RemovedItemsLayer;
    const-string v3, "RemovedItems"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/MainView$RemovedItemsLayer;->setName(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, v33

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getX()F

    move-result v3

    neg-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getY()F

    move-result v4

    neg-float v4, v4

    move-object/from16 v0, v63

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/MainView$RemovedItemsLayer;->setPosition(FF)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 342
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 344
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/desktop/Desktop;->onStart()V

    .line 346
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 347
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/desktop/Desktop;->onResume()V

    .line 350
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    move-object/from16 v0, v38

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v3, Lcom/sonymobile/home/MainViewSwitcher;

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-direct {v3, v0, v1}, Lcom/sonymobile/home/MainViewSwitcher;-><init>(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/apptray/AppTray;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/MainView;->mViewSwitcher:Lcom/sonymobile/home/MainViewSwitcher;

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/MainView;->mViewSwitcher:Lcom/sonymobile/home/MainViewSwitcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/MainViewSwitcher;->setDesktop(Z)Lcom/sonymobile/home/mainview/MainViewResident;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    .line 356
    invoke-virtual/range {v38 .. v38}, Lcom/sonymobile/home/apptray/AppTray;->getModel()Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/search/SearchableModelsWrapper;->addModel(Lcom/sonymobile/home/model/Model;I)V

    .line 357
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/desktop/Desktop;->getModel()Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/search/SearchableModelsWrapper;->addModel(Lcom/sonymobile/home/model/Model;I)V

    .line 358
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/desktop/Desktop;->getStage()Lcom/sonymobile/home/stage/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/search/SearchableModelsWrapper;->addModel(Lcom/sonymobile/home/model/Model;I)V

    .line 362
    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move/from16 v47, p2

    move/from16 v48, p3

    invoke-virtual/range {v43 .. v48}, Lcom/sonymobile/home/MainView;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 363
    return-void
.end method

.method protected onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 706
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 739
    :cond_0
    return-void

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/MainView;->updateSceneMargins()V

    .line 712
    if-le p4, p5, :cond_4

    const/4 v2, 0x1

    .line 714
    .local v2, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getContainerView()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 715
    .local v0, "container3d":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 717
    iget-boolean v5, p0, Lcom/sonymobile/home/MainView;->mEnableTranslucentSystemBars:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/sonymobile/home/MainView;->mIsInitialSetup:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/sonymobile/home/MainView;->mLandscape:Z

    if-eq v2, v5, :cond_3

    .line 719
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    const v6, 0x7f02004d

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setNinePatchBitmap(I)V

    .line 721
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    invoke-virtual {v5}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->setSizeToParent()V

    .line 723
    iput-boolean v2, p0, Lcom/sonymobile/home/MainView;->mLandscape:Z

    .line 724
    iget-object v5, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    iget-boolean v6, p0, Lcom/sonymobile/home/MainView;->mLandscape:Z

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setLandscape(Z)V

    .line 726
    iget-boolean v5, p0, Lcom/sonymobile/home/MainView;->mIsInitialSetup:Z

    if-nez v5, :cond_5

    .line 728
    iget-object v5, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 729
    .local v3, "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    invoke-interface {v3}, Lcom/sonymobile/home/mainview/MainViewResident;->updateConfiguration()V

    goto :goto_1

    .end local v0    # "container3d":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "landscape":Z
    .end local v3    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    :cond_4
    move v2, v4

    .line 712
    goto :goto_0

    .line 732
    .restart local v0    # "container3d":Lcom/sonymobile/flix/components/Component;
    .restart local v2    # "landscape":Z
    :cond_5
    iput-boolean v4, p0, Lcom/sonymobile/home/MainView;->mIsInitialSetup:Z

    .line 734
    iget-object v4, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v4, v7, v7}, Lcom/sonymobile/home/mainview/MainViewResident;->setPosition(FF)V

    .line 736
    iget-object v4, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 737
    .restart local v3    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    iget-object v4, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v3, v4}, Lcom/sonymobile/home/mainview/MainViewResident;->layout(Lcom/sonymobile/home/mainview/MainViewResident;)V

    goto :goto_2
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onScreenOff()V

    .line 503
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    const/4 v1, 0x2

    .line 649
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/MainView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    .line 654
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    if-ne v0, v1, :cond_2

    .line 698
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 679
    .local v6, "currentOrientation":I
    if-ne v6, v1, :cond_3

    if-lt p1, p2, :cond_5

    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    if-gt p1, p2, :cond_5

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 682
    .local v7, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/home/DisplayData;->updateConfiguration(Landroid/content/res/Resources;Landroid/view/Display;)V

    .line 683
    invoke-static {p1, p2}, Lcom/sonymobile/home/DisplayData;->updateOffsets(II)V

    .line 684
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/SceneView;->onSizeChanged(IIII)V

    goto :goto_0

    .line 686
    .end local v7    # "wm":Landroid/view/WindowManager;
    :cond_5
    sget-object v0, Lcom/sonymobile/home/MainView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged failed due to incorrect orientation. Retrying later. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v0, Lcom/sonymobile/home/MainView$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/MainView$3;-><init>(Lcom/sonymobile/home/MainView;IIII)V

    iput-object v0, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    .line 696
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/MainView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onStart()V

    .line 558
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 559
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0}, Lcom/sonymobile/home/mainview/MainViewResident;->onStop()V

    .line 566
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/home/MainView;->mLifeCycleState:I

    .line 567
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 428
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->isTouchEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 429
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v2, p1}, Lcom/sonymobile/home/mainview/MainViewResident;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_2

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 434
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 435
    iput-boolean v3, p0, Lcom/sonymobile/home/MainView;->mTouching:Z

    .line 438
    iget-object v1, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setLastFocused(Lcom/sonymobile/flix/components/Component;)V

    .line 445
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sonymobile/flix/SceneView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 447
    .end local v0    # "action":I
    :cond_2
    return v1

    .line 439
    .restart local v0    # "action":I
    :cond_3
    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 440
    :cond_4
    iput-boolean v1, p0, Lcom/sonymobile/home/MainView;->mTouching:Z

    goto :goto_0

    .line 441
    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 442
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 443
    iput-boolean v1, p0, Lcom/sonymobile/home/MainView;->mTouching:Z

    goto :goto_0
.end method

.method public onViewWrapperFocusEvent(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;ILcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Landroid/view/View;I)V
    .locals 6
    .param p1, "source"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .param p4, "affectedView"    # Landroid/view/View;
    .param p5, "direction"    # I

    .prologue
    .line 368
    packed-switch p2, :pswitch_data_0

    .line 414
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    :pswitch_0
    iget-object v3, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-virtual {v3, p5}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->getNext(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 373
    .local v0, "next":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->requestFocus()Z

    .line 380
    iget-object v3, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-virtual {v3, v0, p5}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;I)Z

    .line 416
    .end local v0    # "next":Lcom/sonymobile/flix/components/Component;
    :goto_0
    :pswitch_1
    return-void

    .line 386
    .restart local v0    # "next":Lcom/sonymobile/flix/components/Component;
    :cond_0
    const/4 v1, 0x0

    .line 387
    .local v1, "nextViewToFocus":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonymobile/home/MainView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 390
    .local v2, "viewRoot":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 391
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "viewRoot":Landroid/view/View;
    invoke-virtual {v3, v2, p0, p5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 394
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->findViewWrapper(Landroid/view/View;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v3

    if-nez v3, :cond_2

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 400
    iget-object v3, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->clearFocus()V

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->returnFocus()V

    goto :goto_0

    .line 411
    .end local v0    # "next":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "nextViewToFocus":Landroid/view/View;
    :pswitch_2
    iget-object v3, p0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->clearFocus()V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshViewContent()V
    .locals 3

    .prologue
    .line 616
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 617
    .local v1, "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    invoke-interface {v1}, Lcom/sonymobile/home/mainview/MainViewResident;->refreshViewContent()V

    goto :goto_0

    .line 619
    .end local v1    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    if-eqz v2, :cond_1

    .line 620
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v2}, Lcom/sonymobile/home/folder/FolderOpener;->refreshViewContent()V

    .line 622
    :cond_1
    return-void
.end method

.method public reloadResources()V
    .locals 3

    .prologue
    .line 837
    iget-object v2, p0, Lcom/sonymobile/home/MainView;->mMainViewResidents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/mainview/MainViewResident;

    .line 838
    .local v1, "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    invoke-interface {v1}, Lcom/sonymobile/home/mainview/MainViewResident;->updateResources()V

    goto :goto_0

    .line 840
    .end local v1    # "mainViewResident":Lcom/sonymobile/home/mainview/MainViewResident;
    :cond_0
    return-void
.end method

.method public setOnDrawListener(Lcom/sonymobile/home/OnDrawListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/OnDrawListener;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/sonymobile/home/MainView;->mOnDrawListener:Lcom/sonymobile/home/OnDrawListener;

    .line 925
    return-void
.end method

.method public showApptray(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "animateBackground"    # Z

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mViewSwitcher:Lcom/sonymobile/home/MainViewSwitcher;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/MainViewSwitcher;->setAppTray(ZZ)Lcom/sonymobile/home/mainview/MainViewResident;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    .line 827
    iget-boolean v0, p0, Lcom/sonymobile/home/MainView;->mEnableTranslucentSystemBars:Z

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->hide(Z)V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 831
    return-void
.end method

.method public showDesktop(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mViewSwitcher:Lcom/sonymobile/home/MainViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/MainViewSwitcher;->setDesktop(Z)Lcom/sonymobile/home/mainview/MainViewResident;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    .line 812
    iget-boolean v0, p0, Lcom/sonymobile/home/MainView;->mEnableTranslucentSystemBars:Z

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mBgGradient:Lcom/sonymobile/home/presenter/view/BackgroundGradient;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/BackgroundGradient;->show(Z)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 816
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mViewSwitcher:Lcom/sonymobile/home/MainViewSwitcher;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sonymobile/home/MainView;->mCurrentMainViewResident:Lcom/sonymobile/home/mainview/MainViewResident;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonymobile/home/mainview/MainViewResident;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 645
    :cond_0
    return-void
.end method
