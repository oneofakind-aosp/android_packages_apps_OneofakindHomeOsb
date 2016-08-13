.class Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;
.super Lcom/sonymobile/flix/util/Animation;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/HintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HintFadeAnimation"
.end annotation


# instance fields
.field private mAnimationType:I

.field private final mComponent:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 189
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 190
    return-void
.end method


# virtual methods
.method public getAnimationType()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->mAnimationType:I

    return v0
.end method

.method public onUpdate(FF)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 195
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 196
    return-void
.end method

.method public setAnimationType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->mAnimationType:I

    .line 204
    return-void
.end method
