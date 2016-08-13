.class Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;
.super Lcom/sonymobile/flix/components/Component;
.source "TutorialStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/tutorial/components/TutorialStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceHolder"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;F)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "radius"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 229
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 230
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->prepareForDrawing()V

    .line 231
    mul-float v0, p2, v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->setSize(FF)V

    .line 232
    iput p2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mRadius:F

    .line 233
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->setAlpha(F)V

    .line 237
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mRadius:F

    iget v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mRadius:F

    iget v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mRadius:F

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 243
    return-void
.end method
