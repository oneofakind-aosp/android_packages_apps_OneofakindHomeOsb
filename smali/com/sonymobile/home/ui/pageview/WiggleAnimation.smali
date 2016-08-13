.class public Lcom/sonymobile/home/ui/pageview/WiggleAnimation;
.super Lcom/sonymobile/flix/util/AnimationSet;
.source "WiggleAnimation.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 18
    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;-><init>(Lcom/sonymobile/flix/components/Component;F)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Component;F)V
    .locals 10
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "scaleFactor"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/flix/util/AnimationSet;-><init>()V

    .line 28
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 29
    .local v8, "decelerate":Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getAccelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 30
    .local v7, "accelerate":Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getAccelerateDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 32
    .local v6, "accelDecel":Landroid/view/animation/Interpolator;
    const-wide/16 v4, 0x0

    .line 33
    .local v4, "delay":J
    const-wide/16 v2, 0xc8

    .line 34
    .local v2, "duration":J
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 35
    .local v0, "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 37
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 39
    const-wide/16 v2, 0xc8

    .line 40
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 41
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 42
    const/4 v1, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 43
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 44
    add-long/2addr v4, v2

    .line 46
    const-wide/16 v2, 0x86

    .line 47
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 48
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 49
    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v9, -0x3e900000    # -15.0f

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 50
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 51
    add-long/2addr v4, v2

    .line 53
    const-wide/16 v2, 0x86

    .line 54
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 55
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 56
    const/high16 v1, -0x3e900000    # -15.0f

    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 58
    add-long/2addr v4, v2

    .line 60
    const-wide/16 v2, 0x76

    .line 61
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 62
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 63
    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v9, -0x3ed00000    # -11.0f

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 65
    add-long/2addr v4, v2

    .line 67
    const-wide/16 v2, 0x76

    .line 68
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 69
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 70
    const/high16 v1, -0x3ed00000    # -11.0f

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 71
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 72
    add-long/2addr v4, v2

    .line 74
    const-wide/16 v2, 0x66

    .line 75
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 76
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 77
    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v9, -0x3f400000    # -6.0f

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 79
    add-long/2addr v4, v2

    .line 81
    const-wide/16 v2, 0xa7

    .line 82
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .end local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 83
    .restart local v0    # "animation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v0, v8}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 84
    const/high16 v1, -0x3f400000    # -6.0f

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setRotationZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 87
    return-void
.end method
