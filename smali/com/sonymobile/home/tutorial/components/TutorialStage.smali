.class public Lcom/sonymobile/home/tutorial/components/TutorialStage;
.super Lcom/sonymobile/flix/components/Component;
.source "TutorialStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;
    }
.end annotation


# instance fields
.field private final mAppTrayIcon:Lcom/sonymobile/flix/components/Image;

.field private final mHandler:Landroid/os/Handler;

.field private final mMaxItems:I

.field private final mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

.field private final mPortraitInLandscape:Z

.field private final mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field private mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mSlotSize:F

.field private mSlots:I

.field private final mStage:Lcom/sonymobile/home/stage/Stage;

.field private mStageViewCopy:Lcom/sonymobile/flix/components/Image;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/Stage;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "stage"    # Lcom/sonymobile/home/stage/Stage;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->prepareForDrawing()V

    .line 59
    iput-object p2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;

    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f02006b

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mAppTrayIcon:Lcom/sonymobile/flix/components/Image;

    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mAppTrayIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 66
    new-instance v0, Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mMaxItems:I

    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPortraitInLandscape:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Image;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialStage;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStageViewCopy:Lcom/sonymobile/flix/components/Image;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/tutorial/components/TutorialStage;Lcom/sonymobile/flix/components/Image;)Lcom/sonymobile/flix/components/Image;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialStage;
    .param p1, "x1"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStageViewCopy:Lcom/sonymobile/flix/components/Image;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialStage;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/home/stage/Stage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialStage;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/tutorial/components/TutorialStage;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialStage;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/tutorial/components/TutorialStage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/tutorial/components/TutorialStage;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->positionPlaceHolders()V

    return-void
.end method

.method private addPlaceHolder(ZF)V
    .locals 6
    .param p1, "useLandscape"    # Z
    .param p2, "offset"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 167
    new-instance v0, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;

    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mAppTrayIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;-><init>(Lcom/sonymobile/flix/components/Scene;F)V

    .line 168
    .local v0, "icon":Lcom/sonymobile/home/tutorial/components/TutorialStage$PlaceHolder;
    iget-object v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 169
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPortraitInLandscape:Z

    if-nez v2, :cond_0

    .line 170
    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    add-float v5, v1, p2

    move v2, v1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    add-float v4, v1, p2

    move v2, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    goto :goto_0
.end method

.method private isStagePopulated()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private positionPlaceHolders()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 122
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v10}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v8

    .line 123
    .local v8, "useLandscape":Z
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Component;->clear()V

    .line 128
    if-eqz v8, :cond_2

    iget-boolean v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPortraitInLandscape:Z

    if-nez v10, :cond_2

    .line 129
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v9

    .line 130
    .local v9, "width":F
    iget v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlotSize:F

    iget v11, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlots:I

    int-to-float v11, v11

    mul-float v0, v10, v11

    .line 131
    .local v0, "height":F
    iget v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlotSize:F

    div-float v7, v10, v0

    .line 138
    .local v7, "spacing":F
    :goto_0
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10, v9, v0}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 140
    iget v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mMaxItems:I

    iget v11, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mMaxItems:I

    rem-int/lit8 v11, v11, 0x2

    sub-int v5, v10, v11

    .line 141
    .local v5, "len":I
    div-int/lit8 v4, v5, 0x2

    .line 142
    .local v4, "itemsPerSide":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 145
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v10}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v10

    new-instance v11, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v11, v13, v1}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v10, v11}, Lcom/sonymobile/home/stage/StageModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v2

    .line 146
    .local v2, "item1":Lcom/sonymobile/home/data/Item;
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v10}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v10

    new-instance v11, Lcom/sonymobile/home/data/ItemLocation;

    sub-int v12, v5, v1

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v11, v13, v12}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v10, v11}, Lcom/sonymobile/home/stage/StageModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v3

    .line 147
    .local v3, "item2":Lcom/sonymobile/home/data/Item;
    sub-int v10, v4, v1

    int-to-float v10, v10

    mul-float v6, v7, v10

    .line 150
    .local v6, "offset":F
    if-nez v2, :cond_0

    .line 151
    neg-float v10, v6

    invoke-direct {p0, v8, v10}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->addPlaceHolder(ZF)V

    .line 154
    :cond_0
    if-nez v3, :cond_1

    .line 155
    invoke-direct {p0, v8, v6}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->addPlaceHolder(ZF)V

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "height":F
    .end local v1    # "i":I
    .end local v2    # "item1":Lcom/sonymobile/home/data/Item;
    .end local v3    # "item2":Lcom/sonymobile/home/data/Item;
    .end local v4    # "itemsPerSide":I
    .end local v5    # "len":I
    .end local v6    # "offset":F
    .end local v7    # "spacing":F
    .end local v9    # "width":F
    :cond_2
    iget v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlotSize:F

    iget v11, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlots:I

    int-to-float v11, v11

    mul-float v9, v10, v11

    .line 134
    .restart local v9    # "width":F
    iget-object v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPlaceHolderContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v0

    .line 135
    .restart local v0    # "height":F
    iget v10, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlotSize:F

    div-float v7, v10, v9

    .restart local v7    # "spacing":F
    goto :goto_0

    .line 158
    .restart local v1    # "i":I
    .restart local v4    # "itemsPerSide":I
    .restart local v5    # "len":I
    :cond_3
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->setDescendantAlpha(F)V

    .line 193
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 195
    return-void
.end method

.method public layout()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 95
    invoke-direct {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->isStagePopulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage$1;-><init>(Lcom/sonymobile/home/tutorial/components/TutorialStage;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mAppTrayIcon:Lcom/sonymobile/flix/components/Image;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 114
    invoke-static {p0}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 115
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onAddedTo(Lcom/sonymobile/flix/components/Component;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->updateConfiguration()V

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->layout()V

    .line 79
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 180
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 181
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 182
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 183
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 184
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getLinearInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 185
    iget-object v0, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 186
    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/tutorial/components/TutorialStage;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 83
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v1}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    .line 85
    .local v0, "useLandscape":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mPortraitInLandscape:Z

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlots:I

    .line 87
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlotSize:F

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlots:I

    .line 90
    iget-object v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonymobile/home/tutorial/components/TutorialStage;->mSlotSize:F

    goto :goto_0
.end method
