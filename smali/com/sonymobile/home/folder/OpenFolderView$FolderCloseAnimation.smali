.class Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;
.super Lcom/sonymobile/flix/components/util/ComponentAnimation;
.source "OpenFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderCloseAnimation"
.end annotation


# instance fields
.field private final mAnimDim:I

.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Component;J)V
    .locals 5
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 209
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    .line 210
    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    .line 212
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getAccelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 213
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 214
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 215
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 217
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/home/folder/OpenFolderView$1;)V

    invoke-virtual {v0, v3, v2}, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->mAnimDim:I

    .line 218
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation$1;-><init>(Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;Lcom/sonymobile/home/folder/OpenFolderView;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 229
    return-void
.end method


# virtual methods
.method public getDim()Lcom/sonymobile/flix/util/Animation;
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->mAnimDim:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->getAnimation(I)Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    return-object v0
.end method

.method public setDim(FF)V
    .locals 1
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->getDim()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Animation;->setRange(FF)Lcom/sonymobile/flix/util/Animation;

    .line 236
    return-void
.end method
