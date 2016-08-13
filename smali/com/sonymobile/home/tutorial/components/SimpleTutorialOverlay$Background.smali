.class Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "SimpleTutorialOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Background"
.end annotation


# instance fields
.field private final mArea:Landroid/graphics/Rect;

.field private final mColorArgb:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;I)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "colorArgb"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->prepareForDrawing()V

    .line 133
    iput p2, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mColorArgb:I

    .line 134
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mPaint:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mColorArgb:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mArea:Landroid/graphics/Rect;

    .line 137
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 163
    return-void
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 0
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    return p2
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 0
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    return p2
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 153
    iget v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mColorArgb:I

    ushr-int/lit8 v0, v1, 0x18

    .line 154
    .local v0, "backgroundAlpha":I
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/SimpleTutorialOverlay$Background;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->setAlpha(F)V

    .line 156
    return-void
.end method
