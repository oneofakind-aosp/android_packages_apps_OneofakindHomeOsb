.class Lcom/sonymobile/home/cui/HeaderView$1;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
.source "HeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/HeaderView;->setUpClickArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/HeaderView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/HeaderView;Lcom/sonymobile/flix/components/Scene;FF)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "x1"    # F
    .param p4, "x2"    # F

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonymobile/home/cui/HeaderView$1;->this$0:Lcom/sonymobile/home/cui/HeaderView;

    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView$1;->this$0:Lcom/sonymobile/home/cui/HeaderView;

    iget-object v0, v0, Lcom/sonymobile/home/cui/HeaderView;->mHeaderViewEventListener:Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;

    invoke-interface {v0}, Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;->onHeaderClicked()V

    .line 175
    return-void
.end method

.method public onPress(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView$1;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView$1;->this$0:Lcom/sonymobile/home/cui/HeaderView;

    iget-object v2, v2, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    const-wide/16 v4, 0x50

    invoke-direct {v1, v2, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v1

    # getter for: Lcom/sonymobile/home/cui/HeaderView;->DECELERATE:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sonymobile/home/cui/HeaderView;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 163
    return-void
.end method

.method public onRelease(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView$1;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView$1;->this$0:Lcom/sonymobile/home/cui/HeaderView;

    iget-object v2, v2, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    const-wide/16 v4, 0x50

    invoke-direct {v1, v2, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v1

    # getter for: Lcom/sonymobile/home/cui/HeaderView;->ACCELERATE:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sonymobile/home/cui/HeaderView;->access$100()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 170
    return-void
.end method
