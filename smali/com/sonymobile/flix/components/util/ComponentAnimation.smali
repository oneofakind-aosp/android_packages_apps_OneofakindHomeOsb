.class public Lcom/sonymobile/flix/components/util/ComponentAnimation;
.super Lcom/sonymobile/flix/util/AnimationSet;
.source "ComponentAnimation.java"


# static fields
.field public static final DEFAULT:Ljava/lang/String;


# instance fields
.field protected mAnimAlpha:I

.field protected mAnimDescAlpha:I

.field protected mAnimRotX:I

.field protected mAnimRotY:I

.field protected mAnimRotZ:I

.field protected mAnimScaleX:I

.field protected mAnimScaleY:I

.field protected mAnimSize:I

.field protected mAnimX:I

.field protected mAnimY:I

.field protected mAnimZ:I

.field protected mComponent:Lcom/sonymobile/flix/components/Component;

.field protected mRemoveOnEnd:Z

.field protected mRemoveOnEndClearAll:Z

.field protected mRemoveOthersOnEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemoveOthersOnEndClearAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mSetInvisibleOnEnd:Z

.field protected mSetOthersInvisibleOnEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mSetOthersVisibleOnStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mSetVisibleOnStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v0, -0x1

    .line 71
    invoke-direct {p0}, Lcom/sonymobile/flix/util/AnimationSet;-><init>()V

    .line 28
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimX:I

    .line 30
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimY:I

    .line 32
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimZ:I

    .line 34
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotX:I

    .line 36
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotY:I

    .line 38
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotZ:I

    .line 40
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleX:I

    .line 42
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleY:I

    .line 44
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimSize:I

    .line 46
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimAlpha:I

    .line 48
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimDescAlpha:I

    .line 72
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Component;J)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "duration"    # J

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/flix/util/AnimationSet;-><init>(J)V

    .line 28
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimX:I

    .line 30
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimY:I

    .line 32
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimZ:I

    .line 34
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotX:I

    .line 36
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotY:I

    .line 38
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotZ:I

    .line 40
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleX:I

    .line 42
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleY:I

    .line 44
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimSize:I

    .line 46
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimAlpha:I

    .line 48
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimDescAlpha:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Component;JJ)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "duration"    # J
    .param p4, "delay"    # J

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sonymobile/flix/util/AnimationSet;-><init>(JJ)V

    .line 28
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimX:I

    .line 30
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimY:I

    .line 32
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimZ:I

    .line 34
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotX:I

    .line 36
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotY:I

    .line 38
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotZ:I

    .line 40
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleX:I

    .line 42
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleY:I

    .line 44
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimSize:I

    .line 46
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimAlpha:I

    .line 48
    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimDescAlpha:I

    .line 82
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getAlpha()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimAlpha:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getDescendantAlpha()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimDescAlpha:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getRotationZ()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotZ:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getScalingX()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleX:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getScalingY()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleY:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getX()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimX:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getY()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimY:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getZ()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimZ:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 649
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetInvisibleOnEnd:Z

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetOthersInvisibleOnEnd:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetOthersInvisibleOnEnd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetOthersInvisibleOnEnd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "i":I
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOnEnd:Z

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->removeFromScene()Z

    .line 660
    :cond_2
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOnEndClearAll:Z

    if-eqz v1, :cond_3

    .line 661
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->clearAllDescendants()V

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOthersOnEnd:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 664
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOthersOnEnd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 665
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOthersOnEnd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->removeFromScene()Z

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 668
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOthersOnEndClearAll:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 669
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOthersOnEndClearAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 670
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOthersOnEndClearAll:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->clearAllDescendants()V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 673
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 631
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetVisibleOnStart:Z

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetOthersVisibleOnStart:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetOthersVisibleOnStart:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetOthersVisibleOnStart:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onUpdate(FF)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 681
    return-void
.end method

.method public setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 260
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getAlpha()F

    move-result p1

    .line 261
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getAlpha()F

    move-result p2

    .line 262
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimAlpha:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 263
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$9;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$9;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimAlpha:I

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getAlpha()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 271
    return-object p0
.end method

.method public setComponent(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 312
    return-void
.end method

.method public setDelay(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 498
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/util/AnimationSet;->setDelay(J)Lcom/sonymobile/flix/util/AnimationSet;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    return-object v0
.end method

.method public bridge synthetic setDelay(J)Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelay(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDelay(J)Lcom/sonymobile/flix/util/AnimationSet;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelay(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 275
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getDescendantAlpha()F

    move-result p1

    .line 276
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getDescendantAlpha()F

    move-result p2

    .line 277
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimDescAlpha:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 278
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$10;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$10;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimDescAlpha:I

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getDescendantAlpha()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 286
    return-object p0
.end method

.method public setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/util/AnimationSet;->setDuration(J)Lcom/sonymobile/flix/util/AnimationSet;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/sonymobile/flix/util/AnimationSet;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 503
    invoke-super {p0, p1}, Lcom/sonymobile/flix/util/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/AnimationSet;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    return-object v0
.end method

.method public bridge synthetic setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/AnimationSet;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 0
    .param p1, "setInvisibleOnEnd"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetInvisibleOnEnd:Z

    .line 433
    return-object p0
.end method

.method public setPosition(FFFF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 86
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 87
    invoke-virtual {p0, p2, p4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 88
    return-object p0
.end method

.method public setRemoveOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 1
    .param p1, "removeOnEnd"    # Z

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRemoveOnEnd(ZZ)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    return-object v0
.end method

.method public setRemoveOnEnd(ZZ)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 0
    .param p1, "removeOnEnd"    # Z
    .param p2, "clearAllDescendants"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOnEnd:Z

    .line 442
    iput-boolean p2, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mRemoveOnEndClearAll:Z

    .line 443
    return-object p0
.end method

.method public setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 244
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getRotationZ()F

    move-result p1

    .line 245
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getRotationZ()F

    move-result p2

    .line 246
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotZ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 247
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$8;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimRotZ:I

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getRotationZ()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 256
    return-object p0
.end method

.method public setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScalingX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScalingY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 147
    return-object p0
.end method

.method public setScalingX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 170
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScalingX()F

    move-result p1

    .line 171
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScalingX()F

    move-result p2

    .line 172
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 173
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$4;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleX:I

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getScalingX()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 181
    return-object p0
.end method

.method public setScalingY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 185
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScalingY()F

    move-result p1

    .line 186
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getScalingY()F

    move-result p2

    .line 187
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleY:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 188
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$5;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimScaleY:I

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getScalingY()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 196
    return-object p0
.end method

.method public setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 0
    .param p1, "setVisibleOnStart"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mSetVisibleOnStart:Z

    .line 428
    return-object p0
.end method

.method public setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 100
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result p1

    .line 101
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result p2

    .line 102
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 103
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$1;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimX:I

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getX()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 111
    return-object p0
.end method

.method public setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 115
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result p1

    .line 116
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result p2

    .line 117
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimY:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 118
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$2;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimY:I

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getY()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 126
    return-object p0
.end method

.method public setZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 130
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getZ()F

    move-result p1

    .line 131
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getZ()F

    move-result p2

    .line 132
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimZ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 133
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation$3;-><init>(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/util/ComponentAnimation;->mAnimZ:I

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getZ()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 141
    return-object p0
.end method
