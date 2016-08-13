.class public Lcom/sonymobile/home/tutorial/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/tutorial/Tutorial$5;,
        Lcom/sonymobile/home/tutorial/Tutorial$Direction;,
        Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;
    }
.end annotation


# instance fields
.field private mAnimationRunning:Z

.field private mCurrentIndex:I

.field private mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

.field private final mPageListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/tutorial/TutorialPage;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScene:Lcom/sonymobile/flix/components/Scene;

.field private mTutorialFinished:Z

.field private mTutorialInProgress:Z

.field private mTutorialListener:Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

.field private final mView:Lcom/sonymobile/flix/components/Component;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "toAddAfter"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Lcom/sonymobile/home/tutorial/Tutorial$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/tutorial/Tutorial$2;-><init>(Lcom/sonymobile/home/tutorial/Tutorial;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPageListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    .line 85
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 86
    new-instance v0, Lcom/sonymobile/home/tutorial/Tutorial$1;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/tutorial/Tutorial$1;-><init>(Lcom/sonymobile/home/tutorial/Tutorial;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    .line 96
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/components/Scene;->hasChild(Lcom/sonymobile/flix/components/Component;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p2, v1}, Lcom/sonymobile/flix/components/Scene;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setOrder(F)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addChild(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/home/tutorial/Tutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/tutorial/Tutorial;Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;
    .param p1, "x1"    # Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/home/tutorial/Tutorial;->switchPage(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/TutorialPage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialFinished:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sonymobile/home/tutorial/Tutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/Tutorial;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialListener:Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

    return-object v0
.end method

.method private continueTutorial(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)Z
    .locals 3
    .param p1, "direction"    # Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    .prologue
    const/4 v0, 0x0

    .line 278
    sget-object v1, Lcom/sonymobile/home/tutorial/Tutorial$5;->$SwitchMap$com$sonymobile$home$tutorial$Tutorial$Direction:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 296
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 281
    :pswitch_0
    iget v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    .line 282
    iget v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/Tutorial;->finishTutorial()V

    goto :goto_0

    .line 289
    :pswitch_1
    iget v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    .line 290
    iget v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    if-gez v1, :cond_0

    .line 291
    iput v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createPageAnimation(Lcom/sonymobile/home/tutorial/TutorialPage;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 4
    .param p1, "page"    # Lcom/sonymobile/home/tutorial/TutorialPage;

    .prologue
    .line 307
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    .line 308
    .local v0, "pageAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 309
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 310
    return-object v0
.end method

.method private finishTutorial()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 336
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    .line 337
    .local v0, "doneAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 338
    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 339
    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 340
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 341
    new-instance v1, Lcom/sonymobile/home/tutorial/Tutorial$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/tutorial/Tutorial$4;-><init>(Lcom/sonymobile/home/tutorial/Tutorial;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 358
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 359
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 360
    return-void
.end method

.method private preparePageSwitch(Lcom/sonymobile/home/tutorial/TutorialPage;Lcom/sonymobile/home/tutorial/TutorialPage;)V
    .locals 6
    .param p1, "fromPage"    # Lcom/sonymobile/home/tutorial/TutorialPage;
    .param p2, "toPage"    # Lcom/sonymobile/home/tutorial/TutorialPage;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->setTutorialPageListener(Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 326
    iget-object v3, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    move-object v0, p2

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 328
    invoke-virtual {p2}, Lcom/sonymobile/home/tutorial/TutorialPage;->layout()V

    .line 329
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPageListener:Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;

    invoke-virtual {p2, v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->setTutorialPageListener(Lcom/sonymobile/home/tutorial/TutorialPage$TutorialPageListener;)V

    .line 330
    return-void
.end method

.method private switchPage(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V
    .locals 12
    .param p1, "direction"    # Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    .prologue
    .line 201
    iget-boolean v10, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z

    if-nez v10, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/tutorial/Tutorial;->continueTutorial(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    .line 206
    .local v2, "fromPage":Lcom/sonymobile/home/tutorial/TutorialPage;
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    iget v11, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/tutorial/TutorialPage;

    .line 208
    .local v7, "toPage":Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-direct {p0, v2, v7}, Lcom/sonymobile/home/tutorial/Tutorial;->preparePageSwitch(Lcom/sonymobile/home/tutorial/TutorialPage;Lcom/sonymobile/home/tutorial/TutorialPage;)V

    .line 210
    new-instance v0, Lcom/sonymobile/flix/util/AnimationSet;

    invoke-direct {v0}, Lcom/sonymobile/flix/util/AnimationSet;-><init>()V

    .line 211
    .local v0, "animationSet":Lcom/sonymobile/flix/util/AnimationSet;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/tutorial/Tutorial;->createPageAnimation(Lcom/sonymobile/home/tutorial/TutorialPage;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v3

    .line 212
    .local v3, "fromPageAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-direct {p0, v7}, Lcom/sonymobile/home/tutorial/Tutorial;->createPageAnimation(Lcom/sonymobile/home/tutorial/TutorialPage;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v8

    .line 216
    .local v8, "toPageAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    invoke-virtual {v2}, Lcom/sonymobile/home/tutorial/TutorialPage;->getX()F

    move-result v5

    .line 217
    .local v5, "fromPageX":F
    invoke-virtual {v2}, Lcom/sonymobile/home/tutorial/TutorialPage;->getWidth()F

    move-result v4

    .line 218
    .local v4, "fromPageWidth":F
    invoke-virtual {v7}, Lcom/sonymobile/home/tutorial/TutorialPage;->getWidth()F

    move-result v9

    .line 219
    .local v9, "toPageWidth":F
    sget-object v10, Lcom/sonymobile/home/tutorial/Tutorial$5;->$SwitchMap$com$sonymobile$home$tutorial$Tutorial$Direction:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 245
    :goto_1
    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/util/AnimationSet;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 246
    invoke-virtual {v0, v8}, Lcom/sonymobile/flix/util/AnimationSet;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 247
    new-instance v10, Lcom/sonymobile/home/tutorial/Tutorial$3;

    invoke-direct {v10, p0, v2, v7}, Lcom/sonymobile/home/tutorial/Tutorial$3;-><init>(Lcom/sonymobile/home/tutorial/Tutorial;Lcom/sonymobile/home/tutorial/TutorialPage;Lcom/sonymobile/home/tutorial/TutorialPage;)V

    invoke-virtual {v0, v10}, Lcom/sonymobile/flix/util/AnimationSet;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 264
    iput-object v7, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    .line 266
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v10, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 267
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    goto :goto_0

    .line 222
    :pswitch_0
    move v6, v5

    .line 223
    .local v6, "startX":F
    sub-float v1, v5, v4

    .line 224
    .local v1, "endX":F
    invoke-virtual {v3, v6, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 227
    add-float v6, v5, v9

    .line 228
    move v1, v5

    .line 229
    invoke-virtual {v8, v6, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_1

    .line 234
    .end local v1    # "endX":F
    .end local v6    # "startX":F
    :pswitch_1
    move v6, v5

    .line 235
    .restart local v6    # "startX":F
    add-float v1, v5, v4

    .line 236
    .restart local v1    # "endX":F
    invoke-virtual {v3, v6, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 239
    sub-float v6, v5, v9

    .line 240
    move v1, v5

    .line 241
    invoke-virtual {v8, v6, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addTutorialPage(Lcom/sonymobile/home/tutorial/TutorialPage;)V
    .locals 1
    .param p1, "page"    # Lcom/sonymobile/home/tutorial/TutorialPage;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialInProgress:Z

    return v0
.end method

.method public layout()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->getChildIndex(Lcom/sonymobile/flix/components/Component;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/TutorialPage;->layout()V

    .line 155
    :cond_1
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mAnimationRunning:Z

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->BACK:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/tutorial/Tutorial;->switchPage(Lcom/sonymobile/home/tutorial/Tutorial$Direction;)V

    .line 175
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setTutorialListener(Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialListener:Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

    .line 120
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialFinished:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialListener:Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialInProgress:Z

    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mTutorialListener:Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;

    invoke-interface {v0}, Lcom/sonymobile/home/tutorial/Tutorial$TutorialListener;->onTutorialStart()V

    .line 136
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/tutorial/TutorialPage;

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    .line 138
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mCurrentPage:Lcom/sonymobile/home/tutorial/TutorialPage;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/tutorial/Tutorial;->preparePageSwitch(Lcom/sonymobile/home/tutorial/TutorialPage;Lcom/sonymobile/home/tutorial/TutorialPage;)V

    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    goto :goto_0
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 161
    iget-object v2, p0, Lcom/sonymobile/home/tutorial/Tutorial;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/tutorial/TutorialPage;

    .line 162
    .local v1, "page":Lcom/sonymobile/home/tutorial/TutorialPage;
    invoke-virtual {v1}, Lcom/sonymobile/home/tutorial/TutorialPage;->updateConfiguration()V

    goto :goto_0

    .line 164
    .end local v1    # "page":Lcom/sonymobile/home/tutorial/TutorialPage;
    :cond_0
    return-void
.end method
