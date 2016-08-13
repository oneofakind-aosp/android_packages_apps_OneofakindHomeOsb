.class public Lcom/sonymobile/home/transfer/TransferView;
.super Lcom/sonymobile/flix/components/Component;
.source "TransferView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable;
.implements Lcom/sonymobile/home/transfer/DropTarget$DropCallback;
.implements Lcom/sonymobile/home/transfer/TransferHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;,
        Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;
    }
.end annotation


# instance fields
.field private mAction:I

.field private mAnimateTransferInStarted:Z

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

.field private mDragSource:Lcom/sonymobile/home/transfer/DragSource;

.field private final mDropHintColor:I

.field private final mDropHintPadding:I

.field private final mHolographicOutlineHelper:Lcom/sonymobile/home/util/HolographicOutlineHelper;

.field private mItemIsPickedUp:Z

.field private final mLargeItemPickupScaleFactor:F

.field private mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mPickupScaleFactor:F

.field private final mPoint:[F

.field private mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

.field private mPrevTouchX:F

.field private mPrevTouchY:F

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

.field private mTransferImage:Lcom/sonymobile/flix/components/Image;

.field private final mTransferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTransferViewDrawn:Z

.field private mTransferable:Lcom/sonymobile/home/transfer/Transferable;

.field private final mWorkingTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 121
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferListeners:Ljava/util/List;

    .line 62
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    .line 74
    iput v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mAction:I

    .line 80
    iput-boolean v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mItemIsPickedUp:Z

    .line 95
    iput-boolean v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferViewDrawn:Z

    .line 107
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mCanvas:Landroid/graphics/Canvas;

    .line 122
    const-class v2, Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/transfer/TransferView;->setName(Ljava/lang/String;)V

    .line 125
    new-instance v2, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    invoke-direct {v2}, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .line 126
    invoke-virtual {p0, v3, v3}, Lcom/sonymobile/home/transfer/TransferView;->setPivotPoint(FF)V

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    .line 129
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    const v3, 0x7f0f0032

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    const v3, 0x7f0f0018

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    const v3, 0x7f0f003b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    const v3, 0x7f0f001b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    const v3, 0x7f0f002d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    const v3, 0x7f0f0009

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mWorkingTargets:Ljava/util/List;

    .line 138
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintColor:I

    .line 140
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintPadding:I

    .line 141
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/util/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/sonymobile/home/util/HolographicOutlineHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mHolographicOutlineHelper:Lcom/sonymobile/home/util/HolographicOutlineHelper;

    .line 143
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 144
    .local v1, "value":Landroid/util/TypedValue;
    const v2, 0x7f070021

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 145
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mPickupScaleFactor:F

    .line 146
    const v2, 0x7f070022

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 147
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mLargeItemPickupScaleFactor:F

    .line 148
    return-void
.end method

.method private addDropHintBitmap(Lcom/sonymobile/home/transfer/Transferable;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "dragBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->bitmapHasPadding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "outlineBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintPadding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintPadding:I

    int-to-float v3, v3

    invoke-virtual {v1, p2, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mHolographicOutlineHelper:Lcom/sonymobile/home/util/HolographicOutlineHelper;

    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintColor:I

    iget v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mDropHintColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sonymobile/home/util/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 342
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    invoke-interface {p1, v0}, Lcom/sonymobile/home/transfer/Transferable;->setDropHintBitmap(Landroid/graphics/Bitmap;)V

    .line 345
    return-void

    .line 337
    .end local v0    # "outlineBitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "outlineBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private cancelCurrentAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 310
    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 314
    iput-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    .line 316
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mAnimateTransferInStarted:Z

    .line 317
    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    iput-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 485
    iput-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    .line 486
    iput-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    .line 487
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mAction:I

    .line 488
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/transfer/TransferView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 489
    iput-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mItemIsPickedUp:Z

    .line 491
    return-void
.end method

.method private findTarget()Lcom/sonymobile/home/transfer/DropTarget;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 499
    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mItemIsPickedUp:Z

    if-nez v5, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-object v4

    .line 503
    :cond_1
    const/4 v2, 0x0

    .line 504
    .local v2, "foundComponent":Lcom/sonymobile/flix/components/Component;
    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mWorkingTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 505
    .local v0, "comp":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isCulled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 506
    const-string v5, "DropTarget.IsBackgroundDropTarget"

    invoke-virtual {v0, v5}, Lcom/sonymobile/flix/components/Component;->hasProperty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchX:F

    iget v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchY:F

    invoke-static {v0, v5, v6, v7, v4}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FFZ[F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 509
    :cond_3
    move-object v2, v0

    .line 515
    .end local v0    # "comp":Lcom/sonymobile/flix/components/Component;
    :cond_4
    if-eqz v2, :cond_5

    .line 517
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    iget v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchX:F

    iput v5, v4, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenTouchPosition:F

    .line 518
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    iget v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchY:F

    iput v5, v4, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenTouchPosition:F

    .line 522
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    invoke-static {v4, v9, v9, v5}, Lcom/sonymobile/flix/components/ComponentTransform;->projectComponentPointOnScreen(Lcom/sonymobile/flix/components/Component;FF[F)V

    .line 524
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v5, v5, v7

    iput v5, v4, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    .line 525
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v5, v5, v8

    iput v5, v4, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    .line 532
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    invoke-static {v2, v4, v5, v8, v6}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FFZ[F)Z

    .line 534
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v5, v5, v7

    iput v5, v4, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xLocalItemPosition:F

    .line 535
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v5, v5, v8

    iput v5, v4, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yLocalItemPosition:F

    .line 540
    :cond_5
    const/4 v1, 0x0

    .line 541
    .local v1, "found":Lcom/sonymobile/home/transfer/DropTarget;
    if-eqz v2, :cond_6

    .line 542
    instance-of v4, v2, Lcom/sonymobile/home/transfer/DropTarget;

    if-eqz v4, :cond_9

    move-object v1, v2

    .line 543
    check-cast v1, Lcom/sonymobile/home/transfer/DropTarget;

    .line 549
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-eq v1, v4, :cond_a

    .line 550
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-eqz v4, :cond_7

    .line 551
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/home/transfer/DropTarget;->exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V

    .line 553
    :cond_7
    iput-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    .line 554
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-eqz v4, :cond_8

    .line 555
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    iget-object v7, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    invoke-interface {v4, v5, v6, v7}, Lcom/sonymobile/home/transfer/DropTarget;->enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z

    .line 556
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    invoke-interface {v4, v5, p0, v6}, Lcom/sonymobile/home/transfer/DropTarget;->over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V

    .line 562
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    goto/16 :goto_0

    .line 545
    :cond_9
    const-string v4, "DropTarget.DropTarget"

    invoke-virtual {v2, v4}, Lcom/sonymobile/flix/components/Component;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "found":Lcom/sonymobile/home/transfer/DropTarget;
    check-cast v1, Lcom/sonymobile/home/transfer/DropTarget;

    .restart local v1    # "found":Lcom/sonymobile/home/transfer/DropTarget;
    goto :goto_1

    .line 558
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-eqz v4, :cond_8

    .line 559
    iget-object v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    iget-object v5, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferEvent:Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    invoke-interface {v4, v5, p0, v6}, Lcom/sonymobile/home/transfer/DropTarget;->over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V

    goto :goto_2
.end method


# virtual methods
.method public addTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public animateTransferImage(ZJ)V
    .locals 4
    .param p1, "in"    # Z
    .param p2, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 193
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mAnimateTransferInStarted:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 195
    .local v0, "animateNeeded":Z
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/home/transfer/TransferView;->cancelCurrentAnimations()V

    .line 196
    if-eqz v0, :cond_1

    .line 197
    new-instance v1, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-direct {v1, v2, p2, p3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 198
    iput-boolean p1, p0, Lcom/sonymobile/home/transfer/TransferView;->mAnimateTransferInStarted:Z

    .line 199
    if-eqz p1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mPickupScaleFactor:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 204
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 206
    :cond_1
    return-void

    .line 193
    .end local v0    # "animateNeeded":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    .restart local v0    # "animateNeeded":Z
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mOverFolderAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mPickupScaleFactor:F

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_1
.end method

.method public canBePutIntoAFolder()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    invoke-interface {v2}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 473
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_1

    .line 474
    instance-of v2, v0, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 477
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v1
.end method

.method public cancelTransfer()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/transfer/DropTarget;->exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/transfer/TransferView;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 358
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 426
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    if-eqz v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/sonymobile/home/transfer/TransferView;->findTarget()Lcom/sonymobile/home/transfer/DropTarget;

    .line 431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferViewDrawn:Z

    .line 432
    return-void
.end method

.method public dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "event"    # Lcom/sonymobile/home/transfer/DropEvent;

    .prologue
    .line 438
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    if-eqz v2, :cond_0

    .line 439
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    iget-object v3, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    invoke-interface {v2, v3, p2}, Lcom/sonymobile/home/transfer/DragSource;->onTransferCompleted(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/DropEvent;)V

    .line 447
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;

    .line 448
    .local v1, "listener":Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;
    invoke-interface {v1}, Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;->onTransferEnd()V

    goto :goto_1

    .line 441
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;
    :cond_1
    if-nez p1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    iget-object v3, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    invoke-interface {v2, v3}, Lcom/sonymobile/home/transfer/DragSource;->onTransferCanceled(Lcom/sonymobile/home/transfer/Transferable;)V

    goto :goto_0

    .line 452
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/home/transfer/TransferView;->cleanup()V

    .line 453
    return-void
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/Transferable;->isCancellable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTransfer()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOurTransfer(Lcom/sonymobile/home/transfer/DragSource;)Z
    .locals 1
    .param p1, "source"    # Lcom/sonymobile/home/transfer/DragSource;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOurTransfer(Lcom/sonymobile/home/transfer/DropTarget;)Z
    .locals 1
    .param p1, "target"    # Lcom/sonymobile/home/transfer/DropTarget;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 377
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mItemIsPickedUp:Z

    if-eqz v8, :cond_3

    move v1, v6

    .line 378
    .local v1, "dragging":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 379
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 381
    .local v4, "y":F
    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 383
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_5

    .line 384
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v8}, Lcom/sonymobile/flix/components/Image;->getZ()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 386
    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    iget v7, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchX:F

    sub-float v7, v2, v7

    iget v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchY:F

    sub-float v8, v4, v8

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/flix/components/Image;->move(FF)V

    .line 407
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 410
    .end local v0    # "action":I
    :cond_1
    iget-boolean v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferViewDrawn:Z

    if-eqz v6, :cond_2

    .line 411
    iput v2, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchX:F

    .line 412
    iput v4, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchY:F

    .line 414
    :cond_2
    return v1

    .end local v1    # "dragging":Z
    .end local v2    # "x":F
    .end local v4    # "y":F
    :cond_3
    move v1, v7

    .line 377
    goto :goto_0

    .line 390
    .restart local v0    # "action":I
    .restart local v1    # "dragging":Z
    .restart local v2    # "x":F
    .restart local v4    # "y":F
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    iget v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchX:F

    iget v10, p0, Lcom/sonymobile/home/transfer/TransferView;->mPrevTouchY:F

    iget-object v11, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    invoke-static {v8, v9, v10, v11}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 392
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v3, v8, v7

    .line 393
    .local v3, "x1":F
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v5, v8, v6

    .line 394
    .local v5, "y1":F
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    iget-object v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    invoke-static {v8, v2, v4, v9}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 397
    iget-object v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    iget-object v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v7, v9, v7

    sub-float/2addr v7, v3

    iget-object v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v9}, Lcom/sonymobile/flix/components/Image;->getScaling()F

    move-result v9

    mul-float/2addr v7, v9

    iget-object v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    aget v6, v9, v6

    sub-float/2addr v6, v5

    iget-object v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v9}, Lcom/sonymobile/flix/components/Image;->getScaling()F

    move-result v9

    mul-float/2addr v6, v9

    invoke-virtual {v8, v7, v6}, Lcom/sonymobile/flix/components/Image;->move(FF)V

    goto :goto_1

    .line 399
    .end local v3    # "x1":F
    .end local v5    # "y1":F
    :cond_5
    if-ne v0, v6, :cond_0

    .line 400
    iput-boolean v7, p0, Lcom/sonymobile/home/transfer/TransferView;->mItemIsPickedUp:Z

    .line 401
    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    if-eqz v6, :cond_6

    .line 402
    iget-object v6, p0, Lcom/sonymobile/home/transfer/TransferView;->mCurrentDropTarget:Lcom/sonymobile/home/transfer/DropTarget;

    iget-object v7, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    iget v8, p0, Lcom/sonymobile/home/transfer/TransferView;->mAction:I

    iget-object v9, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-interface {v6, v7, v8, v9, p0}, Lcom/sonymobile/home/transfer/DropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    goto :goto_1

    .line 404
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/sonymobile/home/transfer/TransferView;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    goto :goto_1
.end method

.method public removeAllListeners()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    return-void
.end method

.method public removeTarget(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/home/transfer/TransferView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 183
    .local v0, "comp":Lcom/sonymobile/flix/components/Component;
    iget-object v1, p0, Lcom/sonymobile/home/transfer/TransferView;->mWorkingTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public removeTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/home/transfer/TransferView;->mTransferListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public startTransfer(Lcom/sonymobile/home/transfer/DragSource;ILcom/sonymobile/home/transfer/Transferable;FF)V
    .locals 21
    .param p1, "source"    # Lcom/sonymobile/home/transfer/DragSource;
    .param p2, "action"    # I
    .param p3, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 210
    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 211
    .local v2, "component":Lcom/sonymobile/flix/components/Component;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/transfer/TransferView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v19

    .line 213
    .local v19, "scene":Lcom/sonymobile/flix/components/Scene;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mWorkingTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 214
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTargets:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 217
    .local v14, "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mWorkingTargets:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/transfer/TransferView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 221
    .end local v14    # "id":I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/transfer/TransferView;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 222
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    .line 223
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/home/transfer/TransferView;->mAction:I

    .line 224
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mItemIsPickedUp:Z

    .line 226
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferViewDrawn:Z

    .line 229
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getPivotPointX()F

    move-result v3

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getPivotPointY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/flix/components/ComponentTransform;->projectComponentPointOnScreen(Lcom/sonymobile/flix/components/Component;FF[F)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FFZ[F)Z

    .line 235
    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 236
    .local v12, "dragBitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_1

    .line 237
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 243
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->supportsHinting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lcom/sonymobile/home/transfer/TransferView;->addDropHintBitmap(Lcom/sonymobile/home/transfer/Transferable;Landroid/graphics/Bitmap;)V

    .line 247
    :cond_2
    new-instance v3, Lcom/sonymobile/flix/components/Image;

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v12}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    const-string v4, "TransferImage"

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getWorldZ()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Image;->setZ(F)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Image;->setKeepUpdatedTransformMatrix(Z)V

    .line 252
    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getRowSpan()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getColSpan()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v16, 0x1

    .line 253
    .local v16, "isOneCell":Z
    :goto_1
    if-eqz v16, :cond_3

    .line 258
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v3

    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getRowSpan()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3f19999a    # 0.6f

    mul-float v20, v3, v4

    .line 259
    .local v20, "yMinVisibleSize":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v5, 0x1

    aget v6, v4, v5

    cmpl-float v3, p5, v20

    if-lez v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    sub-float v3, v6, v3

    aput v3, v4, v5

    .line 262
    .end local v20    # "yMinVisibleSize":F
    :cond_3
    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getWorldZ()F

    move-result v3

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWorldZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/flix/components/Image;->setPosition(FF)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/transfer/TransferView;->cancelCurrentAnimations()V

    .line 266
    if-eqz v16, :cond_6

    .line 268
    new-instance v3, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fcccccd    # 1.6f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/home/transfer/TransferView;->mPickupScaleFactor:F

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;-><init>(Lcom/sonymobile/flix/components/Component;FFFJJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    .line 294
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getFastOutSlowInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/transfer/TransferView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/transfer/TransferView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;

    .line 299
    .local v17, "listener":Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferable:Lcom/sonymobile/home/transfer/Transferable;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;->onTransferStart(Lcom/sonymobile/home/transfer/Transferable;)V

    goto :goto_4

    .line 252
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "isOneCell":Z
    .end local v17    # "listener":Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 259
    .restart local v16    # "isOneCell":Z
    .restart local v20    # "yMinVisibleSize":F
    :cond_5
    sub-float v3, v20, p5

    goto/16 :goto_2

    .line 272
    .end local v20    # "yMinVisibleSize":F
    :cond_6
    new-instance v3, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/home/transfer/TransferView;->mLargeItemPickupScaleFactor:F

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;-><init>(Lcom/sonymobile/flix/components/Component;FFFJJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    goto :goto_3

    .line 279
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/transfer/TransferView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    const v4, 0x7f0f000b

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lcom/sonymobile/home/transfer/Transferable;->getWorldZ()F

    move-result v4

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWorldZ()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Component;->getCameraPerspectiveScaling(F)F

    move-result v18

    .line 281
    .local v18, "perspectiveScaling":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    div-float v4, v4, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/transfer/TransferView;->mPoint:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    div-float v5, v5, v18

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/flix/components/Image;->setPosition(FF)V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/transfer/TransferView;->cancelCurrentAnimations()V

    .line 284
    if-eqz v16, :cond_8

    .line 286
    new-instance v3, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v5, v5, v18

    const v6, 0x3fcccccd    # 1.6f

    div-float v6, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/home/transfer/TransferView;->mPickupScaleFactor:F

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;-><init>(Lcom/sonymobile/flix/components/Component;FFFJJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    goto/16 :goto_3

    .line 290
    :cond_8
    new-instance v3, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/transfer/TransferView;->mTransferImage:Lcom/sonymobile/flix/components/Image;

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/home/transfer/TransferView;->mLargeItemPickupScaleFactor:F

    div-float v6, v6, v18

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x12c

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;-><init>(Lcom/sonymobile/flix/components/Component;FFFJJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/home/transfer/TransferView;->mPopupAnimation:Lcom/sonymobile/home/transfer/TransferView$PopupAnimation;

    goto/16 :goto_3

    .line 301
    .end local v18    # "perspectiveScaling":F
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    return-void
.end method
