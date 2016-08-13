.class public Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;
.super Ljava/lang/Object;
.source "AppTrayDropZonePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;,
        Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;
    }
.end annotation


# instance fields
.field private mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

.field private final mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

.field private mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mTopOffset:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/apptray/AppTrayDropZoneView;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "dropZoneView"    # Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;-><init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    .line 59
    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 62
    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 127
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 128
    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    .line 129
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getDropArea()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    const-string v1, "DropTarget.DropTarget"

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mTopOffset:I

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    return-object v0
.end method

.method private stopAnimationsIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 246
    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 250
    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 252
    :cond_1
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->stopAnimationsIfNeeded()V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mTopOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$2;-><init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getAccelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 216
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mCloseAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setVisible(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    .line 241
    return-void
.end method

.method public setDropZoneListener(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    .line 140
    return-void
.end method

.method public show(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->stopAnimationsIfNeeded()V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    const-wide/16 v4, 0x12c

    invoke-direct {v0, v3, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 162
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 164
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mTopOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->move(FF)V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mTopOffset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 169
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 182
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 183
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->enableDropZone()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->access$500(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;)V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setVisible(Z)V

    goto :goto_0
.end method
