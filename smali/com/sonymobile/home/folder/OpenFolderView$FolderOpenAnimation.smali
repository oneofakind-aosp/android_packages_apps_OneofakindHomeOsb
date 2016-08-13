.class Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;
.super Lcom/sonymobile/flix/components/util/ComponentAnimation;
.source "OpenFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderOpenAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Component;J)V
    .locals 3
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "duration"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 171
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    .line 172
    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    .line 174
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 175
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 176
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 177
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 179
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/home/folder/OpenFolderView$1;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 180
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;-><init>(Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;Lcom/sonymobile/home/folder/OpenFolderView;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 201
    return-void
.end method
