.class Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;
.super Lcom/sonymobile/flix/components/Component;
.source "TutorialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/tutorial/components/TutorialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Circle"
.end annotation


# instance fields
.field private final mDefaultSize:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSize:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;I)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "size"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->prepareForDrawing()V

    .line 140
    iput p2, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mDefaultSize:I

    .line 141
    iget v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mDefaultSize:I

    iput v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mPaint:Landroid/graphics/Paint;

    const v1, -0x116e88

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mDefaultSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mDefaultSize:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->setSize(FF)V

    .line 148
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 152
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onDraw(Landroid/graphics/Canvas;)V

    .line 153
    iget v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    return-void
.end method

.method public setDiameter(I)V
    .locals 2
    .param p1, "diameter"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    .line 158
    iget v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mSize:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->setSize(FF)V

    .line 159
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialButton$Circle;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 160
    return-void
.end method
