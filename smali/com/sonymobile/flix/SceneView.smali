.class public Lcom/sonymobile/flix/SceneView;
.super Landroid/widget/FrameLayout;
.source "SceneView.java"


# instance fields
.field private mContentComponent:Lcom/sonymobile/flix/components/Component;

.field private mDebugDrawEveryOther:Z

.field private mDebugDrawInvalidatedRegion:Z

.field private mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

.field private mDrawCount:I

.field private mProxyViewTestingSetup:Z

.field private mScene:Lcom/sonymobile/flix/components/Scene;

.field private mSceneCreated:Z

.field private mSceneViewHeight:I

.field private mSceneViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/flix/SceneView;->init(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;)V

    .line 69
    return-void
.end method

.method private init(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .end local p2    # "scene":Lcom/sonymobile/flix/components/Scene;
    :goto_0
    iput-object p2, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 78
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->setContext(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->setView(Landroid/view/View;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/SceneView;->setWillNotDraw(Z)V

    .line 81
    return-void

    .line 77
    .restart local p2    # "scene":Lcom/sonymobile/flix/components/Scene;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->newScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method protected clampTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 306
    const/4 v0, 0x0

    .line 311
    .local v0, "adjust":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 312
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 313
    .local v2, "y":F
    cmpg-float v3, v1, v5

    if-gez v3, :cond_0

    cmpl-float v3, v1, v4

    if-ltz v3, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_0
    cmpg-float v3, v2, v5

    if-gez v3, :cond_1

    cmpl-float v3, v2, v4

    if-ltz v3, :cond_1

    .line 318
    const/4 v2, 0x0

    .line 319
    const/4 v0, 0x1

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v1, v3

    .line 323
    const/4 v0, 0x1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v2, v3

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_3
    if-eqz v0, :cond_4

    .line 330
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 332
    :cond_4
    return-void
.end method

.method public final destroyAccessibility()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->detach()V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->setAccessibility(Lcom/sonymobile/flix/components/accessibility/Accessibility;)V

    .line 162
    :cond_0
    return-void
.end method

.method public final destroyViewWrappers()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v0

    .line 181
    .local v0, "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->detach()V

    .line 183
    iget-object v1, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->setViewWrappersRoot(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;)V

    .line 185
    :cond_0
    return-void
.end method

.method public final getDrawCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonymobile/flix/SceneView;->mDrawCount:I

    return v0
.end method

.method public getFpsCounter()Lcom/sonymobile/flix/debug/FpsCounter;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    return-object v0
.end method

.method public final getScene()Lcom/sonymobile/flix/components/Scene;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method public final isProxyViewTestingSetup()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mProxyViewTestingSetup:Z

    return v0
.end method

.method public final isViewWrappersSetup()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newScene()Lcom/sonymobile/flix/components/Scene;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/sonymobile/flix/components/DebugScene;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/DebugScene;-><init>()V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 347
    iget v0, p0, Lcom/sonymobile/flix/SceneView;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/SceneView;->mDrawCount:I

    .line 351
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugDrawInvalidatedRegion:Z

    if-eqz v0, :cond_0

    .line 355
    iget-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugDrawEveryOther:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugDrawEveryOther:Z

    .line 356
    iget-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugDrawEveryOther:Z

    if-eqz v0, :cond_0

    .line 357
    const v0, 0x3fff00ff

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/debug/FpsCounter;->showFps(Landroid/graphics/Canvas;)V

    .line 363
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->isNewFrameScheduled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    invoke-virtual {v0}, Lcom/sonymobile/flix/debug/FpsCounter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    invoke-virtual {v0}, Lcom/sonymobile/flix/debug/FpsCounter;->resume()V

    .line 396
    :cond_1
    :goto_1
    return-void

    .line 355
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    invoke-virtual {v0}, Lcom/sonymobile/flix/debug/FpsCounter;->pause()V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 242
    iget v2, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewHeight:I

    if-gtz v2, :cond_1

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getMeasuredWidth()I

    move-result v1

    .line 246
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getMeasuredHeight()I

    move-result v0

    .line 247
    .local v0, "height":I
    iget v2, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewWidth:I

    if-lez v2, :cond_2

    .line 248
    iget v1, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewWidth:I

    .line 250
    :cond_2
    iget v2, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewHeight:I

    if-lez v2, :cond_3

    .line 251
    iget v0, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewHeight:I

    .line 256
    :cond_3
    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v0, 0x1

    and-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/SceneView;->setMeasuredDimension(II)V

    .line 257
    return-void
.end method

.method protected onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 422
    return-void
.end method

.method protected onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 427
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getWidth()I

    move-result v4

    .line 267
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getHeight()I

    move-result v5

    .line 269
    .local v5, "height":I
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v0

    float-to-int v2, v0

    .line 270
    .local v2, "prevWidth":I
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v0

    float-to-int v3, v0

    .line 273
    .local v3, "prevHeight":I
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    int-to-float v1, v4

    int-to-float v6, v5

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/flix/components/Scene;->setSize(FF)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    int-to-float v1, v4

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    int-to-float v6, v5

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/flix/components/Scene;->setPosition(FF)V

    .line 276
    iget-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mSceneCreated:Z

    if-nez v0, :cond_1

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mSceneCreated:Z

    .line 280
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p0, v0, v4, v5}, Lcom/sonymobile/flix/SceneView;->onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/flix/components/Scene;->dispatchSceneCreated(II)V

    .line 284
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mContentComponent:Lcom/sonymobile/flix/components/Component;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/flix/SceneView;->mContentComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/SceneView;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 291
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/flix/components/Scene;->dispatchSceneSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/SceneView;->clampTouchEvent(Landroid/view/MotionEvent;)V

    .line 302
    iget-object v0, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentComponent(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/flix/SceneView;->mContentComponent:Lcom/sonymobile/flix/components/Component;

    .line 103
    return-void
.end method

.method public final setDrawInvalidatedRegion(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sonymobile/flix/SceneView;->mDebugDrawInvalidatedRegion:Z

    .line 107
    return-void
.end method

.method public final setFpsCounter(Lcom/sonymobile/flix/debug/FpsCounter;)V
    .locals 0
    .param p1, "fpsCounter"    # Lcom/sonymobile/flix/debug/FpsCounter;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonymobile/flix/SceneView;->mDebugFpsCounter:Lcom/sonymobile/flix/debug/FpsCounter;

    .line 111
    return-void
.end method

.method public final setSceneViewHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewHeight:I

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->requestLayout()V

    .line 91
    return-void
.end method

.method public final setSceneViewWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sonymobile/flix/SceneView;->mSceneViewWidth:I

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->requestLayout()V

    .line 86
    return-void
.end method

.method public final setupAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/sonymobile/flix/components/accessibility/Accessibility;

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    iget-object v1, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->setAccessibility(Lcom/sonymobile/flix/components/accessibility/Accessibility;)V

    .line 153
    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->attachTo(Landroid/view/ViewGroup;)V

    .line 154
    return-object v0
.end method

.method public final setupFlixUsageWarnings(Z)V
    .locals 3
    .param p1, "verbose"    # Z

    .prologue
    .line 137
    const/4 v0, 0x1

    const/16 v1, 0xfa0

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->setPenaltyToast(ZILandroid/content/Context;)V

    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->disableDrawNull()V

    .line 141
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->disableNotPreparedForDrawing()V

    .line 142
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->disableTouchEventNotConsumed()V

    .line 144
    :cond_0
    return-void
.end method

.method public final setupProxyViewTesting()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/sonymobile/flix/test/ProxyViewRoot;

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/test/ProxyViewRoot;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/SceneView;->setupProxyViewTesting(Lcom/sonymobile/flix/test/ProxyViewRoot;)V

    .line 193
    return-void
.end method

.method public final setupProxyViewTesting(I)V
    .locals 3
    .param p1, "componentTypes"    # I

    .prologue
    .line 196
    new-instance v0, Lcom/sonymobile/flix/test/ProxyViewRoot;

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;I)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/SceneView;->setupProxyViewTesting(Lcom/sonymobile/flix/test/ProxyViewRoot;)V

    .line 197
    return-void
.end method

.method public final setupProxyViewTesting(Lcom/sonymobile/flix/test/ProxyViewRoot;)V
    .locals 1
    .param p1, "proxyViewroot"    # Lcom/sonymobile/flix/test/ProxyViewRoot;

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/SceneView;->addView(Landroid/view/View;)V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/SceneView;->mProxyViewTestingSetup:Z

    .line 202
    return-void
.end method

.method public final setupViewWrappers()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->isViewWrappersSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->destroyViewWrappers()V

    .line 173
    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    invoke-virtual {p0}, Lcom/sonymobile/flix/SceneView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->attachTo(Landroid/view/ViewGroup;)V

    .line 175
    iget-object v1, p0, Lcom/sonymobile/flix/SceneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->setViewWrappersRoot(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;)V

    .line 176
    return-object v0
.end method
