.class public Lcom/sonymobile/flix/components/Component;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/Component$ComponentIterator;,
        Lcom/sonymobile/flix/components/Component$DrawingState;,
        Lcom/sonymobile/flix/components/Component$TextComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sonymobile/flix/components/Component;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAffectsDrawingState:Z

.field protected mBackgroundPaint:Landroid/graphics/Paint;

.field protected mCamera3d:Landroid/graphics/Camera;

.field protected mChildSortingEnabled:Z

.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mClippingEnabled:Z

.field protected mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

.field protected mCulled:Z

.field protected mCullingArea:Landroid/graphics/RectF;

.field protected mCullingEnabled:Z

.field protected mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

.field protected mDescendantAlpha:F

.field protected mDrawnLeft:I

.field protected mDrawnTop:I

.field protected mFastIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/flix/components/Component$ComponentIterator",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeight:F

.field protected mHighQuality:Z

.field protected mId:I

.field protected mInnerMargin:Landroid/graphics/RectF;

.field protected mKeepTransformMatrix:Z

.field protected mLayoutMirrored:Z

.field protected mName:Ljava/lang/String;

.field protected mOrder:F

.field protected mPadding:Landroid/graphics/RectF;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParent:Lcom/sonymobile/flix/components/Component;

.field protected mPivotX:F

.field protected mPivotY:F

.field protected mPivotZ:F

.field protected mPreciseCulling:Z

.field protected mPreventLayoutMirroring:Z

.field protected mProjection:I

.field protected mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mRotated:Z

.field protected mRotationX:F

.field protected mRotationY:F

.field protected mRotationZ:F

.field protected mScaled:Z

.field protected mScalingX:F

.field protected mScalingY:F

.field protected mScene:Lcom/sonymobile/flix/components/Scene;

.field protected mSetToVisible:Z

.field protected mSorted:[Lcom/sonymobile/flix/components/Component;

.field protected mTransformMatrix:Landroid/graphics/Matrix;

.field protected mTransparent:Z

.field protected mUserSetCullingArea:Z

.field protected mVisible:Z

.field protected mWidth:F

.field protected mX:F

.field protected mY:F

.field protected mZ:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 5
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/high16 v4, -0x80000000

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mId:I

    .line 251
    iput-object p1, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 252
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    .line 253
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    .line 254
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    .line 255
    iput v3, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    .line 256
    iput v3, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    .line 257
    iput v1, p0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    .line 258
    iput v1, p0, Lcom/sonymobile/flix/components/Component;->mScalingY:F

    .line 259
    iput v1, p0, Lcom/sonymobile/flix/components/Component;->mDescendantAlpha:F

    .line 260
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mTransparent:Z

    .line 261
    iput v4, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    .line 262
    iput v4, p0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    .line 266
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 3264
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 3265
    .local v6, "backgroundAlpha":I
    int-to-float v0, v6

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getAlpha()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 3266
    .local v7, "combinedAlpha":I
    if-lez v7, :cond_0

    .line 3267
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3268
    iget v3, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    iget v4, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3269
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3271
    :cond_0
    return-void
.end method

.method private getRefValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 441
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/ref/WeakReference;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private print()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupClipping(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 3301
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 3303
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3304
    return-void
.end method


# virtual methods
.method public addChild(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add a null child."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    iget-object v0, p1, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_1

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component already has a parent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/Component;->childAdded(ILcom/sonymobile/flix/components/Component;)V

    .line 535
    return-void
.end method

.method public addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z
    .locals 2
    .param p1, "after"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 485
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 487
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 488
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/sonymobile/flix/components/Component;->addChildAt(ILcom/sonymobile/flix/components/Component;)V

    .line 489
    const/4 v1, 0x1

    .line 492
    .end local v0    # "index":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addChildAt(ILcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 504
    if-nez p2, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add a null child."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    iget-object v0, p2, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_1

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component already has a parent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->childAdded(ILcom/sonymobile/flix/components/Component;)V

    .line 515
    return-void
.end method

.method public addChildFirst(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/Component;->addChildAt(ILcom/sonymobile/flix/components/Component;)V

    .line 453
    return-void
.end method

.method protected assertContext()V
    .locals 3

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3776
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A Scene with a Context must be provided."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3778
    :cond_1
    return-void
.end method

.method protected assertHasChildren()V
    .locals 3

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3770
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component has no children."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3772
    :cond_0
    return-void
.end method

.method protected childAdded(ILcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 651
    iput-object p0, p2, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    .line 652
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->updateVisibility()V

    .line 653
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->updateCulling()V

    .line 654
    invoke-virtual {p2, p0}, Lcom/sonymobile/flix/components/Component;->onAddedTo(Lcom/sonymobile/flix/components/Component;)V

    .line 655
    invoke-virtual {p0, p2, p0}, Lcom/sonymobile/flix/components/Component;->componentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 656
    return-void
.end method

.method protected childRemoved(ILcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 659
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    .line 660
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->updateVisibility()V

    .line 661
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->updateCulling()V

    .line 662
    invoke-virtual {p2, p0}, Lcom/sonymobile/flix/components/Component;->onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V

    .line 663
    invoke-virtual {p0, p2, p0}, Lcom/sonymobile/flix/components/Component;->componentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 664
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 609
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 611
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 612
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/flix/components/Component;->childRemoved(ILcom/sonymobile/flix/components/Component;)V

    .line 610
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 614
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    .line 616
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public clearAllDescendants()V
    .locals 3

    .prologue
    .line 626
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 627
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 628
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 629
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/flix/components/Component;->childRemoved(ILcom/sonymobile/flix/components/Component;)V

    .line 630
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->clearAllDescendants()V

    .line 627
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 632
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    .line 634
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected componentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->componentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 675
    :cond_1
    return-void
.end method

.method protected componentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->componentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 686
    :cond_1
    return-void
.end method

.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2767
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Component;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "output"    # Landroid/graphics/Bitmap;
    .param p2, "padding"    # I

    .prologue
    const/4 v4, 0x0

    .line 2813
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getTransformedWidth()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v2, p2, 0x2

    add-int v7, v0, v2

    .line 2814
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getTransformedHeight()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v2, p2, 0x2

    add-int v6, v0, v2

    .line 2816
    .local v6, "height":I
    if-eqz p1, :cond_0

    .line 2817
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2821
    :cond_0
    if-lez v7, :cond_2

    if-lez v6, :cond_2

    .line 2822
    if-nez p1, :cond_1

    .line 2824
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2826
    :cond_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2828
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v2, p2

    int-to-float v3, p2

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/Component;->drawAt(Landroid/graphics/Canvas;FFFF)V

    .line 2830
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    return-object p1
.end method

.method protected cull(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "l"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "b"    # F
    .param p6, "cullingArea"    # Landroid/graphics/RectF;

    .prologue
    .line 3312
    if-eqz p6, :cond_3

    .line 3313
    iget v1, p6, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_0

    iget v1, p6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p3, v1

    if-gtz v1, :cond_0

    iget v1, p6, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p4, v1

    if-ltz v1, :cond_0

    iget v1, p6, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p5, v1

    if-gez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 3318
    .local v0, "culled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-eq v0, v1, :cond_1

    .line 3319
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->cullingChanged(Z)V

    .line 3320
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->dispatchCullingChanged(Z)V

    .line 3322
    :cond_1
    return v0

    .line 3313
    .end local v0    # "culled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3316
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "culled":Z
    goto :goto_0
.end method

.method protected cullingChanged(Z)V
    .locals 1
    .param p1, "culled"    # Z

    .prologue
    .line 3333
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    .line 3334
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrVisibilityChangeListeners:I

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyCullingChanged(Lcom/sonymobile/flix/components/Component;Z)V

    .line 3337
    :cond_0
    return-void
.end method

.method protected dispatchCullingChanged(Z)V
    .locals 4
    .param p1, "culled"    # Z

    .prologue
    .line 3340
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3341
    .local v2, "nbrChildren":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3342
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 3348
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    if-nez p1, :cond_0

    iget-boolean v3, v0, Lcom/sonymobile/flix/components/Component;->mCullingEnabled:Z

    if-nez v3, :cond_1

    .line 3349
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->cullingChanged(Z)V

    .line 3351
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->dispatchCullingChanged(Z)V

    .line 3341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3340
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    .end local v2    # "nbrChildren":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3353
    .restart local v1    # "i":I
    .restart local v2    # "nbrChildren":I
    :cond_3
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2935
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    .line 2936
    .local v2, "wasVisible":Z
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    .line 2937
    .local v1, "wasSetToVisible":Z
    if-nez v2, :cond_0

    .line 2938
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 2939
    iput-boolean v3, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    .line 2942
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getDrawingState()Lcom/sonymobile/flix/components/Component$DrawingState;

    move-result-object v0

    .line 2943
    .local v0, "stack":Lcom/sonymobile/flix/components/Component$DrawingState;
    :goto_0
    if-eqz v0, :cond_1

    .line 2944
    invoke-virtual {p0, p1, v4, v4, v0}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 2947
    :cond_1
    if-nez v2, :cond_2

    .line 2948
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 2949
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    .line 2951
    :cond_2
    return-void

    .line 2942
    .end local v0    # "stack":Lcom/sonymobile/flix/components/Component$DrawingState;
    :cond_3
    new-instance v0, Lcom/sonymobile/flix/components/Component$DrawingState;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/Component$DrawingState;-><init>()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 2971
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v4, :cond_4

    .line 2972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Component;->mX:F

    move/from16 v17, v0

    .line 2973
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Component;->mY:F

    move/from16 v18, v0

    .line 2978
    .local v18, "y":F
    add-float p2, p2, v17

    .line 2979
    add-float p3, p3, v18

    .line 2981
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float v15, v4, v5

    .line 2982
    .local v15, "toLeft":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float v16, v4, v5

    .line 2987
    .local v16, "toTop":F
    add-float v4, p2, v15

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    .line 2988
    add-float v4, p3, v16

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    .line 2990
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mAffectsDrawingState:Z

    if-eqz v4, :cond_1

    .line 2991
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mUserSetCullingArea:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    .line 2992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2995
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component$DrawingState;->createFrom(Lcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component$DrawingState;

    move-result-object p4

    .line 2998
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mCullingEnabled:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-eqz v4, :cond_6

    .line 2999
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mPreciseCulling:Z

    if-nez v4, :cond_5

    .line 3003
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v7, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    add-float v8, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    add-float v9, v4, v5

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCullingArea:Landroid/graphics/RectF;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/flix/components/Component;->cull(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3216
    .end local v15    # "toLeft":F
    .end local v16    # "toTop":F
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    :goto_0
    return-void

    .line 3014
    .restart local v15    # "toLeft":F
    .restart local v16    # "toTop":F
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_5
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    iget-object v13, v4, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;->mRect:Landroid/graphics/RectF;

    .line 3015
    .local v13, "r":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 3016
    iget v6, v13, Landroid/graphics/RectF;->left:F

    iget v7, v13, Landroid/graphics/RectF;->top:F

    iget v8, v13, Landroid/graphics/RectF;->right:F

    iget v9, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCullingArea:Landroid/graphics/RectF;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/flix/components/Component;->cull(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3022
    .end local v13    # "r":Landroid/graphics/RectF;
    :cond_6
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCamera3d:Landroid/graphics/Camera;

    .line 3023
    .local v11, "camera3d":Landroid/graphics/Camera;
    if-eqz v11, :cond_15

    .line 3031
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    iget-object v12, v4, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;->mMatrix:Landroid/graphics/Matrix;

    .line 3033
    .local v12, "matrix3d":Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Camera;->save()V

    .line 3035
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mPivotZ:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_d

    .line 3037
    move/from16 v0, v18

    neg-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mZ:F

    move/from16 v0, v17

    invoke-virtual {v11, v0, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 3038
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mRotated:Z

    if-eqz v4, :cond_9

    .line 3039
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 3040
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    invoke-virtual {v11, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 3042
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 3043
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    neg-float v4, v4

    invoke-virtual {v11, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 3045
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 3046
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    invoke-virtual {v11, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 3073
    :cond_9
    :goto_1
    invoke-virtual {v11, v12}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 3075
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mScaled:Z

    if-eqz v4, :cond_a

    .line 3078
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mScalingY:F

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3084
    :cond_a
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3086
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 3088
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3091
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->drawSelf(Landroid/graphics/Canvas;Lcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3095
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mProjection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 3096
    invoke-virtual {v11}, Landroid/graphics/Camera;->restore()V

    .line 3097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    .line 3098
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_b

    .line 3099
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/flix/components/Component;->setupClipping(Landroid/graphics/Canvas;)V

    .line 3102
    :cond_b
    neg-float v4, v15

    move/from16 v0, v16

    neg-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3103
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCamera3d:Landroid/graphics/Camera;

    .line 3104
    invoke-virtual/range {p0 .. p4}, Lcom/sonymobile/flix/components/Component;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3105
    move-object/from16 v0, p4

    iput-object v11, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCamera3d:Landroid/graphics/Camera;

    .line 3106
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_c

    .line 3107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3110
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 3055
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    float-to-double v4, v4

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v14, v4

    .line 3057
    .local v14, "rotatedPivotZ":F
    move/from16 v0, v18

    neg-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mZ:F

    const v6, 0x3fb33333    # 1.4f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/flix/components/Component;->mPivotZ:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v14

    sub-float/2addr v5, v6

    move/from16 v0, v17

    invoke-virtual {v11, v0, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 3058
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mRotated:Z

    if-eqz v4, :cond_10

    .line 3059
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e

    .line 3060
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    invoke-virtual {v11, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 3062
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    .line 3063
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    neg-float v4, v4

    invoke-virtual {v11, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 3065
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_10

    .line 3066
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    invoke-virtual {v11, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 3069
    :cond_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/Component;->mPivotZ:F

    invoke-virtual {v11, v4, v5, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto/16 :goto_1

    .line 3112
    .end local v14    # "rotatedPivotZ":F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_12

    .line 3113
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->clippingNotSupportedIn3d(Lcom/sonymobile/flix/components/Component;)V

    .line 3118
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_14

    .line 3120
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mScaled:Z

    if-eqz v4, :cond_13

    .line 3121
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->scalingChildrenNotSupportedIn3d(Lcom/sonymobile/flix/components/Component;)V

    .line 3124
    :cond_13
    invoke-virtual/range {p0 .. p4}, Lcom/sonymobile/flix/components/Component;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3126
    :cond_14
    invoke-virtual {v11}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_0

    .line 3128
    .end local v12    # "matrix3d":Landroid/graphics/Matrix;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mScaled:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1e

    .line 3135
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mZ:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_18

    .line 3136
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->projectionShouldBe3d(Lcom/sonymobile/flix/components/Component;)V

    .line 3140
    :cond_18
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    iget-object v12, v4, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;->mMatrix:Landroid/graphics/Matrix;

    .line 3141
    .restart local v12    # "matrix3d":Landroid/graphics/Matrix;
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3142
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mScaled:Z

    if-eqz v4, :cond_19

    .line 3143
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mScalingY:F

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3145
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mRotated:Z

    if-eqz v4, :cond_1a

    .line 3146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    neg-float v4, v4

    invoke-virtual {v12, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3148
    :cond_1a
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3150
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 3151
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3152
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_1b

    .line 3153
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/flix/components/Component;->setupClipping(Landroid/graphics/Canvas;)V

    .line 3156
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->drawSelf(Landroid/graphics/Canvas;Lcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_1c

    .line 3159
    neg-float v4, v15

    move/from16 v0, v16

    neg-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3160
    invoke-virtual/range {p0 .. p4}, Lcom/sonymobile/flix/components/Component;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3162
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_1d

    .line 3163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3165
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 3173
    .end local v12    # "matrix3d":Landroid/graphics/Matrix;
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mZ:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_20

    .line 3174
    :cond_1f
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->projectionShouldBe3d(Lcom/sonymobile/flix/components/Component;)V

    .line 3181
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mKeepTransformMatrix:Z

    if-eqz v4, :cond_24

    .line 3183
    :cond_21
    add-float v4, v17, v15

    add-float v5, v18, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3184
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_22

    .line 3185
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/flix/components/Component;->setupClipping(Landroid/graphics/Canvas;)V

    .line 3188
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->drawSelf(Landroid/graphics/Canvas;Lcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_23

    .line 3191
    neg-float v4, v15

    move/from16 v0, v16

    neg-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3192
    invoke-virtual/range {p0 .. p4}, Lcom/sonymobile/flix/components/Component;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3193
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v18

    neg-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3199
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    if-eqz v4, :cond_4

    .line 3200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 3197
    :cond_23
    neg-float v4, v15

    sub-float v4, v4, v17

    move/from16 v0, v16

    neg-float v5, v0

    sub-float v5, v5, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 3202
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 3204
    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-nez v4, :cond_25

    const/4 v4, 0x0

    cmpl-float v4, v18, v4

    if-eqz v4, :cond_26

    .line 3206
    :cond_25
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3207
    invoke-virtual/range {p0 .. p4}, Lcom/sonymobile/flix/components/Component;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3208
    move/from16 v0, v17

    neg-float v4, v0

    move/from16 v0, v18

    neg-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 3211
    :cond_26
    invoke-virtual/range {p0 .. p4}, Lcom/sonymobile/flix/components/Component;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    goto/16 :goto_0
.end method

.method public final drawAt(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 2896
    invoke-static {p0, p2, p3}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FF)V

    .line 2898
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 2899
    .local v0, "prevX":F
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 2900
    .local v1, "prevY":F
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 2901
    iput p3, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 2903
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;)V

    .line 2905
    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 2906
    iput v1, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 2907
    return-void
.end method

.method public final drawAt(Landroid/graphics/Canvas;FFFF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F

    .prologue
    .line 2924
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    sub-float v0, p4, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getTransformedWidth()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    sub-float v1, p5, v1

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getTransformedHeight()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/flix/components/Component;->drawAt(Landroid/graphics/Canvas;FF)V

    .line 2926
    return-void
.end method

.method protected drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 3275
    iget-boolean v4, p0, Lcom/sonymobile/flix/components/Component;->mChildSortingEnabled:Z

    if-eqz v4, :cond_2

    .line 3276
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->sortChildren()V

    .line 3277
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3278
    .local v2, "nbrChildren":I
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    .line 3279
    .local v3, "sorted":[Lcom/sonymobile/flix/components/Component;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3280
    aget-object v4, v3, v1

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3289
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3297
    .end local v3    # "sorted":[Lcom/sonymobile/flix/components/Component;
    :cond_1
    return-void

    .line 3291
    .end local v1    # "i":I
    .end local v2    # "nbrChildren":I
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    .line 3292
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/flix/components/Component;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3293
    .restart local v2    # "nbrChildren":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 3294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 3293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected drawSelf(Landroid/graphics/Canvas;Lcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 3219
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mKeepTransformMatrix:Z

    if-eqz v2, :cond_1

    .line 3221
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mTransformMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    .line 3222
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/flix/components/Component;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 3225
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 3229
    :cond_1
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mTransparent:Z

    if-nez v2, :cond_3

    .line 3231
    iget v2, p2, Lcom/sonymobile/flix/components/Component$DrawingState;->mDescendantAlpha:F

    const v3, 0x3f7f7f7f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 3233
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getAlpha()F

    move-result v0

    .line 3234
    .local v0, "alpha":F
    iget v2, p2, Lcom/sonymobile/flix/components/Component$DrawingState;->mDescendantAlpha:F

    mul-float v1, v0, v2

    .line 3235
    .local v1, "combinedAlpha":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 3236
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 3237
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3238
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;->drawBackground(Landroid/graphics/Canvas;)V

    .line 3240
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->onDraw(Landroid/graphics/Canvas;)V

    .line 3241
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 3252
    .end local v0    # "alpha":F
    .end local v1    # "combinedAlpha":F
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/sonymobile/flix/components/ComponentDebug;->sDebugRenderAllBorders:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    iget-boolean v2, v2, Lcom/sonymobile/flix/components/ComponentDebug;->mRenderBorders:Z

    if-eqz v2, :cond_5

    .line 3254
    :cond_4
    invoke-static {p0, p1}, Lcom/sonymobile/flix/components/ComponentDebug;->renderDebug(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V

    .line 3256
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mDebug:Lcom/sonymobile/flix/components/ComponentDebug;

    iget-boolean v2, v2, Lcom/sonymobile/flix/components/ComponentDebug;->mRenderCullingArea:Z

    if-eqz v2, :cond_6

    .line 3257
    invoke-static {p0, p1}, Lcom/sonymobile/flix/components/ComponentDebug;->renderCullingArea(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V

    .line 3260
    :cond_6
    return-void

    .line 3244
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_8

    .line 3245
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;->drawBackground(Landroid/graphics/Canvas;)V

    .line 3247
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public findById(I)Lcom/sonymobile/flix/components/Component;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sonymobile/flix/components/Component;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 793
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    move-object v0, v5

    .line 811
    :cond_0
    :goto_0
    return-object v0

    .line 797
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 798
    .local v2, "nbrChildren":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 799
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 800
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mId:I

    if-eq p1, v4, :cond_0

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 797
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    .end local v2    # "nbrChildren":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 805
    .restart local v1    # "i":I
    .restart local v2    # "nbrChildren":I
    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    .line 806
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, p1}, Lcom/sonymobile/flix/components/Component;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    .line 807
    .local v3, "result":Lcom/sonymobile/flix/components/Component;
    if-eqz v3, :cond_4

    move-object v0, v3

    .line 808
    goto :goto_0

    .line 805
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v3    # "result":Lcom/sonymobile/flix/components/Component;
    :cond_5
    move-object v0, v5

    .line 811
    goto :goto_0
.end method

.method public findByName(Ljava/lang/String;)Lcom/sonymobile/flix/components/Component;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sonymobile/flix/components/Component;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 732
    if-nez p1, :cond_1

    move-object v0, v5

    .line 750
    :cond_0
    :goto_0
    return-object v0

    .line 736
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 737
    .local v2, "nbrChildren":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 738
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 739
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 736
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    .end local v2    # "nbrChildren":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 744
    .restart local v1    # "i":I
    .restart local v2    # "nbrChildren":I
    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    .line 745
    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4, p1}, Lcom/sonymobile/flix/components/Component;->findByName(Ljava/lang/String;)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    .line 746
    .local v3, "result":Lcom/sonymobile/flix/components/Component;
    if-eqz v3, :cond_4

    move-object v0, v3

    .line 747
    goto :goto_0

    .line 744
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v3    # "result":Lcom/sonymobile/flix/components/Component;
    :cond_5
    move-object v0, v5

    .line 750
    goto :goto_0
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1944
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->notPreparedForDrawing(Lcom/sonymobile/flix/components/Component;)V

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraPerspectiveScaling(F)F
    .locals 4
    .param p1, "z"    # F

    .prologue
    const/4 v3, 0x0

    .line 3569
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    if-eqz v2, :cond_0

    .line 3570
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3571
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 3572
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    invoke-virtual {v2, v3, v3, p1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 3573
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 3574
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 3575
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 3576
    .local v0, "mat":[F
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3577
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 3579
    .end local v0    # "mat":[F
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getChild(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->assertHasChildren()V

    .line 696
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getChildIndex(Lcom/sonymobile/flix/components/Component;)I
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getChildrenSorted()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 976
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->sortChildren()V

    .line 978
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    .line 979
    .local v3, "sorted":[Lcom/sonymobile/flix/components/Component;
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 980
    .local v2, "nbrChildren":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 981
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/components/Component;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 982
    aget-object v5, v3, v0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 987
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/components/Component;>;"
    .end local v2    # "nbrChildren":I
    .end local v3    # "sorted":[Lcom/sonymobile/flix/components/Component;
    :goto_1
    return-object v1

    :cond_1
    move-object v1, v4

    goto :goto_1
.end method

.method public getDescendantAlpha()F
    .locals 1

    .prologue
    .line 1970
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDescendantAlpha:F

    return v0
.end method

.method public final getDrawnLeft()I
    .locals 1

    .prologue
    .line 2863
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    return v0
.end method

.method public final getDrawnTop()I
    .locals 1

    .prologue
    .line 2880
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1624
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getHeight(I)F
    .locals 3
    .param p1, "edge"    # I

    .prologue
    .line 1655
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1656
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    .line 1661
    :goto_0
    return v1

    .line 1657
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1658
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    .line 1659
    .local v0, "innerMargin":Landroid/graphics/RectF;
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    goto :goto_0

    .line 1661
    .end local v0    # "innerMargin":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v1

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mId:I

    return v0
.end method

.method public getIndexInParent()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Component;->getChildIndex(Lcom/sonymobile/flix/components/Component;)I

    move-result v0

    .line 720
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getInnerMargin()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 2506
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    .line 2508
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getListeners()Lcom/sonymobile/flix/components/ComponentListeners;
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-nez v0, :cond_0

    .line 3650
    new-instance v0, Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/ComponentListeners;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    .line 3652
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNbrChildren()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPadding()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getParent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public final getPivotPointX()F
    .locals 1

    .prologue
    .line 2103
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    return v0
.end method

.method public final getPivotPointY()F
    .locals 1

    .prologue
    .line 2113
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    return v0
.end method

.method public getPointX(F)F
    .locals 2
    .param p1, "point"    # F

    .prologue
    .line 1244
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPointX(FI)F
    .locals 4
    .param p1, "point"    # F
    .param p2, "edge"    # I

    .prologue
    const/4 v3, 0x2

    .line 1273
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v2

    mul-float v0, v1, v2

    .line 1274
    .local v0, "outerLeft":F
    if-ne p2, v3, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/components/Component;->getWidth(I)F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1280
    :goto_0
    return v1

    .line 1277
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1278
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    goto :goto_0

    .line 1280
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v1

    goto :goto_0
.end method

.method public getPointY(F)F
    .locals 2
    .param p1, "point"    # F

    .prologue
    .line 1257
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPointY(FI)F
    .locals 4
    .param p1, "point"    # F
    .param p2, "edge"    # I

    .prologue
    const/4 v3, 0x2

    .line 1297
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    mul-float v0, v1, v2

    .line 1298
    .local v0, "outerTop":F
    if-ne p2, v3, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/components/Component;->getHeight(I)F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1303
    :goto_0
    return v1

    .line 1300
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    goto :goto_0

    .line 1303
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/flix/components/Component;->getRefValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 389
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 392
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p2
.end method

.method public final getRotationX()F
    .locals 1

    .prologue
    .line 2339
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    return v0
.end method

.method public final getRotationY()F
    .locals 1

    .prologue
    .line 2348
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    return v0
.end method

.method public final getRotationZ()F
    .locals 1

    .prologue
    .line 2357
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    return v0
.end method

.method public final getScaling()F
    .locals 1

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getScalingX()F

    move-result v0

    return v0
.end method

.method public final getScalingX()F
    .locals 1

    .prologue
    .line 2271
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    return v0
.end method

.method public final getScalingY()F
    .locals 1

    .prologue
    .line 2280
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mScalingY:F

    return v0
.end method

.method public final getScene()Lcom/sonymobile/flix/components/Scene;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mTransformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getTransformedHeight()F
    .locals 2

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mScalingY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getTransformedWidth()F
    .locals 2

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 1613
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth(I)F
    .locals 3
    .param p1, "edge"    # I

    .prologue
    .line 1636
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1637
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    .line 1642
    :goto_0
    return v1

    .line 1638
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1639
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    .line 1640
    .local v0, "innerMargin":Landroid/graphics/RectF;
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_0

    .line 1642
    .end local v0    # "innerMargin":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    goto :goto_0
.end method

.method public getWorldX()F
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->getWorldX(Lcom/sonymobile/flix/components/Component;)F

    move-result v0

    return v0
.end method

.method public getWorldX(Lcom/sonymobile/flix/components/Component;)F
    .locals 5
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 1370
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 1371
    .local v1, "x":F
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    .line 1372
    .local v0, "c":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eq v0, p1, :cond_1

    .line 1373
    if-nez v0, :cond_0

    .line 1374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplied root is not an ancestor of this component."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1377
    :cond_0
    iget v2, v0, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float/2addr v1, v2

    .line 1378
    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    goto :goto_0

    .line 1380
    :cond_1
    return v1
.end method

.method public getWorldY()F
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->getWorldY(Lcom/sonymobile/flix/components/Component;)F

    move-result v0

    return v0
.end method

.method public getWorldY(Lcom/sonymobile/flix/components/Component;)F
    .locals 5
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 1390
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 1391
    .local v1, "y":F
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    .line 1392
    .local v0, "c":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eq v0, p1, :cond_1

    .line 1393
    if-nez v0, :cond_0

    .line 1394
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplied root is not an ancestor of this component."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1397
    :cond_0
    iget v2, v0, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float/2addr v1, v2

    .line 1398
    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    goto :goto_0

    .line 1400
    :cond_1
    return v1
.end method

.method public getWorldZ()F
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->getWorldZ(Lcom/sonymobile/flix/components/Component;)F

    move-result v0

    return v0
.end method

.method public getWorldZ(Lcom/sonymobile/flix/components/Component;)F
    .locals 5
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 1410
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    .line 1411
    .local v1, "z":F
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    .line 1412
    .local v0, "c":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eq v0, p1, :cond_1

    .line 1413
    if-nez v0, :cond_0

    .line 1414
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplied root is not an ancestor of this component."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1417
    :cond_0
    iget v2, v0, Lcom/sonymobile/flix/components/Component;->mZ:F

    add-float/2addr v1, v2

    .line 1418
    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    goto :goto_0

    .line 1420
    :cond_1
    return v1
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1211
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    return v0
.end method

.method public hasBeenDrawn()Z
    .locals 2

    .prologue
    .line 2846
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChild(Lcom/sonymobile/flix/components/Component;)Z
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 940
    iget-object v0, p1, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 913
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDescendant(Lcom/sonymobile/flix/components/Component;)Z
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 950
    invoke-virtual {p1, p0}, Lcom/sonymobile/flix/components/Component;->isDescendantOf(Lcom/sonymobile/flix/components/Component;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/Object;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCulled()Z
    .locals 1

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    return v0
.end method

.method public isDescendantOf(Lcom/sonymobile/flix/components/Component;)Z
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    .line 961
    .local v0, "current":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eqz v0, :cond_1

    .line 962
    if-ne v0, p1, :cond_0

    .line 963
    const/4 v1, 0x1

    .line 967
    :goto_1
    return v1

    .line 965
    :cond_0
    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    goto :goto_0

    .line 967
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPreparedForDrawing()Z
    .locals 1

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreventingLayoutMirroring()Z
    .locals 1

    .prologue
    .line 2625
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mPreventLayoutMirroring:Z

    return v0
.end method

.method public final isSetToVisible()Z
    .locals 1

    .prologue
    .line 1709
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1720
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mFastIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mFastIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component$ComponentIterator;->reset()V

    .line 3758
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mFastIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;

    .line 3760
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/Component$ComponentIterator;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/Component$ComponentIterator;-><init>(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public measureBounds(ZZZ)Landroid/graphics/RectF;
    .locals 7
    .param p1, "includeSelf"    # Z
    .param p2, "includeChildren"    # Z
    .param p3, "includeDescendants"    # Z

    .prologue
    .line 2663
    const/4 v4, 0x0

    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    neg-float v5, v0

    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    neg-float v6, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/flix/components/Component;->measureBounds(ZZZLandroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected measureBounds(ZZZLandroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 21
    .param p1, "includeSelf"    # Z
    .param p2, "includeChildren"    # Z
    .param p3, "includeDescendants"    # Z
    .param p4, "dest"    # Landroid/graphics/RectF;
    .param p5, "parentX"    # F
    .param p6, "parentY"    # F

    .prologue
    .line 2686
    if-nez p4, :cond_0

    .line 2687
    new-instance p4, Landroid/graphics/RectF;

    .end local p4    # "dest":Landroid/graphics/RectF;
    invoke-direct/range {p4 .. p4}, Landroid/graphics/RectF;-><init>()V

    .line 2689
    .restart local p4    # "dest":Landroid/graphics/RectF;
    :cond_0
    move-object/from16 v8, p4

    .line 2695
    .local v8, "temp":Landroid/graphics/RectF;
    if-eqz p1, :cond_5

    .line 2696
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float v5, v5, p5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v6

    add-float v17, v5, v6

    .line 2697
    .local v17, "left":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float v5, v5, p6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v6

    add-float v20, v5, v6

    .line 2698
    .local v20, "top":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float v5, v5, p5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v6

    add-float v19, v5, v6

    .line 2699
    .local v19, "right":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float v5, v5, p6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v6

    add-float v11, v5, v6

    .line 2707
    .local v11, "bottom":F
    :goto_0
    if-eqz p2, :cond_9

    .line 2708
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float v9, p5, v5

    .line 2709
    .local v9, "myX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float v10, p6, v5

    .line 2711
    .local v10, "myY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 2712
    .local v18, "nbrChildren":I
    :goto_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 2717
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/flix/components/Component;

    .line 2718
    .local v4, "child":Lcom/sonymobile/flix/components/Component;
    iget-boolean v5, v4, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v5, :cond_4

    .line 2719
    if-eqz p3, :cond_7

    iget-object v5, v4, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 2721
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/flix/components/Component;->measureBounds(ZZZLandroid/graphics/RectF;FF)Landroid/graphics/RectF;

    .line 2722
    iget v13, v8, Landroid/graphics/RectF;->left:F

    .line 2723
    .local v13, "childLeft":F
    iget v15, v8, Landroid/graphics/RectF;->top:F

    .line 2724
    .local v15, "childTop":F
    iget v14, v8, Landroid/graphics/RectF;->right:F

    .line 2725
    .local v14, "childRight":F
    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    .line 2732
    .local v12, "childBottom":F
    :goto_3
    cmpg-float v5, v13, v17

    if-gez v5, :cond_1

    .line 2733
    move/from16 v17, v13

    .line 2735
    :cond_1
    cmpg-float v5, v15, v20

    if-gez v5, :cond_2

    .line 2736
    move/from16 v20, v15

    .line 2738
    :cond_2
    cmpl-float v5, v14, v19

    if-lez v5, :cond_3

    .line 2739
    move/from16 v19, v14

    .line 2741
    :cond_3
    cmpl-float v5, v12, v11

    if-lez v5, :cond_4

    .line 2742
    move v11, v12

    .line 2712
    .end local v12    # "childBottom":F
    .end local v13    # "childLeft":F
    .end local v14    # "childRight":F
    .end local v15    # "childTop":F
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 2701
    .end local v4    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v9    # "myX":F
    .end local v10    # "myY":F
    .end local v11    # "bottom":F
    .end local v16    # "i":I
    .end local v17    # "left":F
    .end local v18    # "nbrChildren":I
    .end local v19    # "right":F
    .end local v20    # "top":F
    :cond_5
    const/high16 v17, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2702
    .restart local v17    # "left":F
    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2703
    .restart local v20    # "top":F
    const/high16 v19, -0x800000    # Float.NEGATIVE_INFINITY

    .line 2704
    .restart local v19    # "right":F
    const/high16 v11, -0x800000    # Float.NEGATIVE_INFINITY

    .restart local v11    # "bottom":F
    goto :goto_0

    .line 2711
    .restart local v9    # "myX":F
    .restart local v10    # "myY":F
    :cond_6
    const/16 v18, 0x0

    goto :goto_1

    .line 2727
    .restart local v4    # "child":Lcom/sonymobile/flix/components/Component;
    .restart local v16    # "i":I
    .restart local v18    # "nbrChildren":I
    :cond_7
    iget v5, v4, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float/2addr v5, v9

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v6

    add-float v13, v5, v6

    .line 2728
    .restart local v13    # "childLeft":F
    iget v5, v4, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float/2addr v5, v10

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v6

    add-float v15, v5, v6

    .line 2729
    .restart local v15    # "childTop":F
    iget v5, v4, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v6

    add-float v14, v5, v6

    .line 2730
    .restart local v14    # "childRight":F
    iget v5, v4, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float/2addr v5, v10

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v6

    add-float v12, v5, v6

    .restart local v12    # "childBottom":F
    goto :goto_3

    .line 2746
    .end local v4    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v12    # "childBottom":F
    .end local v13    # "childLeft":F
    .end local v14    # "childRight":F
    .end local v15    # "childTop":F
    :cond_8
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v5, v17, v5

    if-nez v5, :cond_9

    .line 2747
    const/16 v17, 0x0

    .line 2748
    const/16 v20, 0x0

    .line 2749
    const/16 v19, 0x0

    .line 2750
    const/4 v11, 0x0

    .line 2753
    .end local v9    # "myX":F
    .end local v10    # "myY":F
    .end local v16    # "i":I
    .end local v18    # "nbrChildren":I
    :cond_9
    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2754
    return-object p4
.end method

.method public mirrorLayout()V
    .locals 9

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->isPreventingLayoutMirroring()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2570
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/flix/components/Component;->mLayoutMirrored:Z

    .line 2571
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2572
    .local v3, "nbrChildren":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2573
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 2574
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isPreventingLayoutMirroring()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2575
    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mX:F

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v6

    sub-float v1, v5, v6

    .line 2576
    .local v1, "distanceFromCenter":F
    neg-float v5, v1

    iget v6, v0, Lcom/sonymobile/flix/components/Component;->mY:F

    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 2577
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/flix/components/Component;->setPivotPoint(FF)V

    .line 2578
    iget-object v4, v0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    .line 2579
    .local v4, "padding":Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/sonymobile/flix/components/Component;->setPadding(FFFF)V

    .line 2580
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->mirrorLayout()V

    .line 2572
    .end local v1    # "distanceFromCenter":F
    .end local v4    # "padding":Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2571
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v2    # "i":I
    .end local v3    # "nbrChildren":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2584
    :cond_2
    return-void
.end method

.method public move(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1153
    invoke-static {p0, p1, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FF)V

    .line 1155
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 1156
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 1157
    return-void
.end method

.method public moveChildren(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1181
    invoke-static {p0, p1, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FF)V

    .line 1183
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1184
    .local v1, "nbrChildren":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1185
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/flix/components/Component;->move(FF)V

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1183
    .end local v0    # "i":I
    .end local v1    # "nbrChildren":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1187
    .restart local v0    # "i":I
    .restart local v1    # "nbrChildren":I
    :cond_1
    return-void
.end method

.method public moveChildrenZ(F)V
    .locals 3
    .param p1, "dz"    # F

    .prologue
    .line 1196
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 1198
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1199
    .local v1, "nbrChildren":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1200
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, p1}, Lcom/sonymobile/flix/components/Component;->moveZ(F)V

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    .end local v0    # "i":I
    .end local v1    # "nbrChildren":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1202
    .restart local v0    # "i":I
    .restart local v1    # "nbrChildren":I
    :cond_1
    return-void
.end method

.method public moveZ(F)V
    .locals 1
    .param p1, "dz"    # F

    .prologue
    .line 1168
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 1170
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    .line 1171
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 3392
    return-void
.end method

.method public onAddedToScene(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 3413
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3432
    return-void
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 3403
    return-void
.end method

.method public onRemovedFromScene(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 3423
    return-void
.end method

.method public prepareForDrawing()V
    .locals 2

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 3631
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 3632
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setPaint(Landroid/graphics/Paint;)V

    .line 3637
    :cond_0
    :goto_0
    return-void

    .line 3634
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setPaint(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public removeChild(Lcom/sonymobile/flix/components/Component;)I
    .locals 3
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v1, -0x1

    .line 558
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 559
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 560
    .local v0, "index":I
    if-eq v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/Component;->childRemoved(ILcom/sonymobile/flix/components/Component;)V

    .line 566
    .end local v0    # "index":I
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public removeChildAt(I)Lcom/sonymobile/flix/components/Component;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->assertHasChildren()V

    .line 546
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 547
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/Component;->childRemoved(ILcom/sonymobile/flix/components/Component;)V

    .line 548
    return-object v0
.end method

.method public removeFromScene()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 644
    const/4 v0, 0x1

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/flix/components/Component;->getRefValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 431
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v1, v1, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v1, p0, p1, v0}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyPropertyRemoved(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 436
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceChild(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z
    .locals 2
    .param p1, "replace"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "with"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 578
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 580
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 581
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/flix/components/Component;->replaceChildAt(ILcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    .line 582
    const/4 v1, 0x1

    .line 585
    .end local v0    # "index":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replaceChildAt(ILcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;
    .locals 2
    .param p1, "index"    # I
    .param p2, "with"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->assertHasChildren()V

    .line 599
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 600
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/Component;->childRemoved(ILcom/sonymobile/flix/components/Component;)V

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->childAdded(ILcom/sonymobile/flix/components/Component;)V

    .line 602
    return-object v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 1917
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1918
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->notPreparedForDrawing(Lcom/sonymobile/flix/components/Component;)V

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1921
    const v0, 0x3b008081

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 1922
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mTransparent:Z

    .line 1931
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-eqz v0, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyAlphaChanged(Lcom/sonymobile/flix/components/Component;F)V

    .line 1935
    :cond_1
    return-void

    .line 1924
    :cond_2
    const v0, 0x3f7f7f7f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1925
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1926
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mTransparent:Z

    goto :goto_0

    .line 1928
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1929
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Component;->mTransparent:Z

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I

    .prologue
    .line 1983
    if-nez p1, :cond_1

    .line 1984
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1988
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->prepareForDrawing()V

    .line 1989
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1990
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 1992
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1994
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->backgroundColorAlphaZero(Lcom/sonymobile/flix/components/Component;I)V

    goto :goto_0
.end method

.method public setCameraPerspective(F)V
    .locals 5
    .param p1, "perspectiveFactor"    # F

    .prologue
    const/4 v4, 0x0

    .line 3548
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    .line 3549
    const v1, 0x45c1c000    # 6200.0f

    .line 3550
    .local v1, "scaling":F
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3551
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3552
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 3554
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 3555
    const p1, 0x3727c5ac    # 1.0E-5f

    .line 3557
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    div-float v3, v1, p1

    invoke-virtual {v2, v4, v4, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 3559
    .end local v1    # "scaling":F
    :cond_2
    return-void
.end method

.method public setCameraProjection(I)V
    .locals 1
    .param p1, "projection"    # I

    .prologue
    .line 3516
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mProjection:I

    if-eq p1, v0, :cond_0

    .line 3517
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mProjection:I

    .line 3518
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3519
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    .line 3520
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setCameraPerspective(F)V

    .line 3521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mAffectsDrawingState:Z

    .line 3526
    :cond_0
    :goto_0
    return-void

    .line 3523
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1896
    if-eqz p1, :cond_0

    .line 1897
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->prepareForDrawing()V

    .line 1899
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mClippingEnabled:Z

    .line 1900
    return-void
.end method

.method public setCullDescendants(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1815
    if-eqz p1, :cond_1

    .line 1816
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 1817
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    .line 1819
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mAffectsDrawingState:Z

    .line 1823
    :goto_0
    return-void

    .line 1821
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public setCullingArea(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v1, 0x1

    .line 1836
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mUserSetCullingArea:Z

    .line 1837
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 1838
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1841
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mAffectsDrawingState:Z

    .line 1842
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1801
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mCullingEnabled:Z

    .line 1802
    return-void
.end method

.method public setDescendantAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1958
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mDescendantAlpha:F

    .line 1959
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mAffectsDrawingState:Z

    .line 1962
    :cond_0
    return-void
.end method

.method public setHighQuality(Z)V
    .locals 0
    .param p1, "highQuality"    # Z

    .prologue
    .line 3607
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mHighQuality:Z

    .line 3608
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 306
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mId:I

    .line 307
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyIdChanged(Lcom/sonymobile/flix/components/Component;I)V

    .line 310
    :cond_0
    return-void
.end method

.method public setInnerMargin(F)V
    .locals 0
    .param p1, "margin"    # F

    .prologue
    .line 2449
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/sonymobile/flix/components/Component;->setInnerMargin(FFFF)V

    .line 2450
    return-void
.end method

.method public setInnerMargin(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 2491
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FFFF)V

    .line 2493
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2494
    return-void
.end method

.method public setInnerMargin(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "margin"    # Landroid/graphics/RectF;

    .prologue
    .line 2474
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FFFF)V

    .line 2477
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2478
    return-void
.end method

.method public setKeepUpdatedTransformMatrix(Z)V
    .locals 0
    .param p1, "keepTransformMatrix"    # Z

    .prologue
    .line 3672
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mKeepTransformMatrix:Z

    .line 3673
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sonymobile/flix/components/Component;->mName:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyNameChanged(Lcom/sonymobile/flix/components/Component;Ljava/lang/String;)V

    .line 288
    :cond_0
    return-void
.end method

.method public final setOrder(F)V
    .locals 1
    .param p1, "order"    # F

    .prologue
    .line 1757
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mOrder:F

    .line 1758
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyOrderSet(Lcom/sonymobile/flix/components/Component;F)V

    .line 1761
    :cond_0
    return-void
.end method

.method public setPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 2379
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/sonymobile/flix/components/Component;->setPadding(FFFF)V

    .line 2380
    return-void
.end method

.method public setPadding(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 2422
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FFFF)V

    .line 2424
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2425
    return-void
.end method

.method public setPadding(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "padding"    # Landroid/graphics/RectF;

    .prologue
    .line 2404
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FFFF)V

    .line 2407
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2408
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/sonymobile/flix/components/Component;->mPaint:Landroid/graphics/Paint;

    .line 2034
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mTransparent:Z

    .line 2035
    return-void

    .line 2034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPivotPoint(FF)V
    .locals 0
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    .line 2065
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    .line 2066
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    .line 2067
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1016
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 1017
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 1018
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1070
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FFF)V

    .line 1072
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 1073
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 1074
    iput p3, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    .line 1075
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 1035
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    sub-float v0, p3, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 1036
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    sub-float v0, p4, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    iput v0, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 1037
    return-void
.end method

.method public setProperty(Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/Object;

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/Component;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyPropertySet(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    :cond_1
    return-void
.end method

.method public setRotation(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v1, 0x0

    .line 2327
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mRotationX:F

    .line 2328
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mRotationY:F

    .line 2329
    iput p3, p0, Lcom/sonymobile/flix/components/Component;->mRotationZ:F

    .line 2330
    cmpl-float v0, p3, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mRotated:Z

    .line 2331
    return-void

    .line 2330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaling(F)V
    .locals 0
    .param p1, "scaling"    # F

    .prologue
    .line 2192
    invoke-virtual {p0, p1, p1}, Lcom/sonymobile/flix/components/Component;->setScaling(FF)V

    .line 2193
    return-void
.end method

.method public setScaling(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2203
    invoke-static {p0, p1, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FF)V

    .line 2205
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    .line 2206
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mScalingY:F

    .line 2207
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mScaled:Z

    .line 2208
    return-void

    .line 2207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScalingToSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 2217
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    .line 2218
    .local v1, "currentWidth":F
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v0

    .line 2219
    .local v0, "currentHeight":F
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    .line 2220
    div-float v2, p1, v1

    div-float v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Component;->setScaling(FF)V

    .line 2222
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1434
    invoke-static {p0, p1, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValues(Lcom/sonymobile/flix/components/Component;FF)V

    .line 1436
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    .line 1437
    iput p2, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    .line 1438
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v0, v0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrBoundsChangeListeners:I

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners;->notifySizeChanged(Lcom/sonymobile/flix/components/Component;FF)V

    .line 1441
    :cond_0
    return-void
.end method

.method public setSizeTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/Component;->setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V

    .line 1540
    return-void
.end method

.method public setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "copyMarginsPaddings"    # Z

    .prologue
    .line 1552
    if-nez p1, :cond_0

    .line 1553
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set size to null component."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 1556
    if-eqz p2, :cond_1

    .line 1557
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setInnerMargin(Landroid/graphics/RectF;)V

    .line 1558
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getPadding()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setPadding(Landroid/graphics/RectF;)V

    .line 1560
    :cond_1
    return-void
.end method

.method public setSizeToChildren(Z)V
    .locals 3
    .param p1, "includeDescendants"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1498
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1499
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/sonymobile/flix/components/Component;->measureBounds(ZZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 1500
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 1504
    .end local v0    # "bounds":Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 1502
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    goto :goto_0
.end method

.method public setSizeToParent()V
    .locals 1

    .prologue
    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent(Z)V

    .line 1513
    return-void
.end method

.method public setSizeToParent(Z)V
    .locals 4
    .param p1, "copyMarginsPaddings"    # Z

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 1525
    .local v0, "parent":Lcom/sonymobile/flix/components/Component;
    if-nez v0, :cond_0

    .line 1526
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to set size to parent, but component has no parent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sonymobile/flix/components/Component;->print()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1529
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/Component;->setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V

    .line 1530
    return-void
.end method

.method public setSortingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1778
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mChildSortingEnabled:Z

    .line 1779
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1695
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eq p1, v0, :cond_0

    .line 1696
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    .line 1697
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->updateVisibility()V

    .line 1699
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "pixels"    # F

    .prologue
    .line 1450
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 1451
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 1084
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 1086
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    .line 1087
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 1111
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 1113
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    .line 1114
    return-void
.end method

.method public setZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 1140
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 1142
    iput p1, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    .line 1143
    return-void
.end method

.method protected sortChildren()V
    .locals 9

    .prologue
    .line 3356
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    .line 3357
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/flix/components/Component;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3359
    .local v5, "nbrChildren":I
    iget-object v7, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    array-length v7, v7

    if-lt v7, v5, :cond_0

    iget-object v7, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    array-length v7, v7

    mul-int/lit8 v8, v5, 0x4

    if-le v7, v8, :cond_1

    .line 3360
    :cond_0
    new-array v7, v5, [Lcom/sonymobile/flix/components/Component;

    iput-object v7, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    .line 3363
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3365
    iget-object v6, p0, Lcom/sonymobile/flix/components/Component;->mSorted:[Lcom/sonymobile/flix/components/Component;

    .line 3366
    .local v6, "sorted":[Lcom/sonymobile/flix/components/Component;
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 3367
    aget-object v0, v6, v3

    .line 3368
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mOrder:F

    .line 3369
    .local v4, "myOrder":F
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v6, v7

    iget v7, v7, Lcom/sonymobile/flix/components/Component;->mOrder:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    .line 3370
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v6, v7

    aput-object v7, v6, v3

    .line 3372
    add-int/lit8 v2, v3, -0x2

    .local v2, "compare":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3373
    aget-object v7, v6, v2

    iget v7, v7, Lcom/sonymobile/flix/components/Component;->mOrder:F

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_4

    .line 3378
    :cond_2
    add-int/lit8 v7, v2, 0x1

    aput-object v0, v6, v7

    .line 3366
    .end local v2    # "compare":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3376
    .restart local v2    # "compare":I
    :cond_4
    add-int/lit8 v7, v2, 0x1

    aget-object v8, v6, v2

    aput-object v8, v6, v7

    .line 3372
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3381
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v2    # "compare":I
    .end local v4    # "myOrder":F
    :cond_5
    return-void
.end method

.method public toLongString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 3455
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3460
    .local v3, "nbrChildren":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->hasBeenDrawn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3461
    iget v5, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3462
    .local v1, "drawnLeft":Ljava/lang/String;
    iget v5, p0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3463
    .local v2, "drawnTop":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/Component;->mKeepTransformMatrix:Z

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3470
    .local v4, "screenBounds":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->isPreparedForDrawing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 3471
    .local v0, "alpha":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " [x="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", y="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", z="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mZ:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", w="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", h="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", bounds=("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    invoke-virtual {p0, v9}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    invoke-virtual {p0, v9}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    invoke-virtual {p0, v10}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    invoke-virtual {p0, v10}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "), visible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", culled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", alpha="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", descalpha="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mDescendantAlpha:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", worldx="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", worldy="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", worldz="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldZ()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", worldbounds=("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v7

    invoke-virtual {p0, v9}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v7

    invoke-virtual {p0, v9}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v7

    invoke-virtual {p0, v10}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v7

    invoke-virtual {p0, v10}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "), scalingx="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", scalingy="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mScalingX:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", drawnleft="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", drawntop="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", screenbounds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", order="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/sonymobile/flix/components/Component;->mOrder:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", children="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", scene="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Scene;->toShortString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", parent="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v7, :cond_0

    iget-object v6, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 3455
    .end local v0    # "alpha":Ljava/lang/String;
    .end local v1    # "drawnLeft":Ljava/lang/String;
    .end local v2    # "drawnTop":Ljava/lang/String;
    .end local v3    # "nbrChildren":I
    .end local v4    # "screenBounds":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3463
    .restart local v1    # "drawnLeft":Ljava/lang/String;
    .restart local v2    # "drawnTop":Ljava/lang/String;
    .restart local v3    # "nbrChildren":I
    :cond_2
    const-string v4, "<disabled>"

    goto/16 :goto_1

    .line 3466
    .end local v1    # "drawnLeft":Ljava/lang/String;
    .end local v2    # "drawnTop":Ljava/lang/String;
    :cond_3
    const-string v1, "<never drawn>"

    .line 3467
    .restart local v1    # "drawnLeft":Ljava/lang/String;
    const-string v2, "<never drawn>"

    .line 3468
    .restart local v2    # "drawnTop":Ljava/lang/String;
    const-string v4, "<never drawn>"

    .restart local v4    # "screenBounds":Ljava/lang/String;
    goto/16 :goto_1

    .line 3470
    :cond_4
    const-string v0, "<disabled>"

    goto/16 :goto_2

    .restart local v0    # "alpha":Ljava/lang/String;
    :cond_5
    move-object v5, v6

    .line 3471
    goto :goto_3
.end method

.method public toShortString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3488
    .local v0, "className":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 3489
    .local v1, "dot":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3490
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3492
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3493
    .local v2, "instanceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mName:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "instanceName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3436
    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3439
    .local v2, "nbrChildren":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->hasBeenDrawn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3440
    iget v3, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3441
    .local v0, "drawnLeft":Ljava/lang/String;
    iget v3, p0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3446
    .local v1, "drawnTop":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " [x="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sonymobile/flix/components/Component;->mX:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", y="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sonymobile/flix/components/Component;->mY:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", w="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", h="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", visible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", culled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", wx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", wy="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", drawnleft="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", drawntop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", children="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", scene="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/flix/components/Component;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->toShortString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", parent="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3436
    .end local v0    # "drawnLeft":Ljava/lang/String;
    .end local v1    # "drawnTop":Ljava/lang/String;
    .end local v2    # "nbrChildren":I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3443
    .restart local v2    # "nbrChildren":I
    :cond_2
    const-string v0, "<never drawn>"

    .line 3444
    .restart local v0    # "drawnLeft":Ljava/lang/String;
    const-string v1, "<never drawn>"

    .restart local v1    # "drawnTop":Ljava/lang/String;
    goto/16 :goto_1

    :cond_3
    move-object v3, v4

    .line 3446
    goto :goto_2
.end method

.method protected updateCulling()V
    .locals 2

    .prologue
    .line 3326
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    iget-boolean v0, v1, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    .line 3327
    .local v0, "willBeCulled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-eq v0, v1, :cond_0

    .line 3328
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->cullingChanged(Z)V

    .line 3330
    :cond_0
    return-void

    .line 3326
    .end local v0    # "willBeCulled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateVisibility()V
    .locals 2

    .prologue
    .line 1724
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component;->mParent:Lcom/sonymobile/flix/components/Component;

    iget-boolean v1, v1, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1726
    .local v0, "willBeVisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    if-eq v0, v1, :cond_0

    .line 1727
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Component;->visibilityChanged(Z)V

    .line 1729
    :cond_0
    return-void

    .line 1724
    .end local v0    # "willBeVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    goto :goto_0
.end method

.method protected visibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1732
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    .line 1733
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    iget v5, v5, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrVisibilityChangeListeners:I

    if-eqz v5, :cond_0

    .line 1734
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mComponentListeners:Lcom/sonymobile/flix/components/ComponentListeners;

    invoke-virtual {v5, p0, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyVisibilityChanged(Lcom/sonymobile/flix/components/Component;Z)V

    .line 1737
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1738
    .local v2, "nbrChildren":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1739
    iget-object v5, p0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    .line 1740
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    if-eqz p1, :cond_3

    iget-boolean v5, v0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .line 1741
    .local v3, "willBeVisible":Z
    :goto_2
    iget-boolean v5, v0, Lcom/sonymobile/flix/components/Component;->mVisible:Z

    if-eq v3, v5, :cond_1

    .line 1742
    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Component;->visibilityChanged(Z)V

    .line 1738
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    .end local v2    # "nbrChildren":I
    .end local v3    # "willBeVisible":Z
    :cond_2
    move v2, v4

    .line 1737
    goto :goto_0

    .restart local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .restart local v1    # "i":I
    .restart local v2    # "nbrChildren":I
    :cond_3
    move v3, v4

    .line 1740
    goto :goto_2

    .line 1745
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_4
    return-void
.end method
