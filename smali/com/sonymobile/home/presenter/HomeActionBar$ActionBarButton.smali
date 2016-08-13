.class public Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;
.super Lcom/sonymobile/flix/components/Component;
.source "HomeActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/presenter/HomeActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionBarButton"
.end annotation


# instance fields
.field private final mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

.field private final mIcon:Lcom/sonymobile/flix/components/Image;

.field final synthetic this$0:Lcom/sonymobile/home/presenter/HomeActionBar;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/presenter/HomeActionBar;Lcom/sonymobile/flix/components/Scene;I)V
    .locals 3
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "iconId"    # I

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->this$0:Lcom/sonymobile/home/presenter/HomeActionBar;

    .line 342
    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 344
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->prepareForDrawing()V

    .line 345
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 346
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 348
    # getter for: Lcom/sonymobile/home/presenter/HomeActionBar;->mPressedColor:I
    invoke-static {p1}, Lcom/sonymobile/home/presenter/HomeActionBar;->access$200(Lcom/sonymobile/home/presenter/HomeActionBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 351
    new-instance v1, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;-><init>(Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/presenter/HomeActionBar;)V

    iput-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .line 363
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, v2, p3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mIcon:Lcom/sonymobile/flix/components/Image;

    .line 365
    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 366
    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 367
    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 368
    return-void
.end method


# virtual methods
.method public addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 396
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 372
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->getWidth(I)F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->getHeight(I)F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->getWidth()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 378
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 382
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setSize(FF)V

    .line 384
    return-void
.end method

.method public setTouchPadding(F)V
    .locals 1
    .param p1, "padding"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setTouchPadding(F)V

    .line 392
    return-void
.end method

.method public setTouchPadding(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setTouchPadding(FFFF)V

    .line 388
    return-void
.end method
