.class public Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;
.super Ljava/lang/Object;
.source "DeleteDropZoneWrapper.java"

# interfaces
.implements Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;


# instance fields
.field private final mContainer:Lcom/sonymobile/flix/components/Component;

.field private final mDeleteAreaAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

.field private final mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

.field private mIsDeleteAreaVisible:Z

.field private final mScene:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "container"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p4, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mIsDeleteAreaVisible:Z

    .line 57
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 58
    new-instance v0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->setCameraProjection(I)V

    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-virtual {p2, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 61
    iput-object p2, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mContainer:Lcom/sonymobile/flix/components/Component;

    .line 62
    iput-object p4, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->setVisible(Z)V

    .line 64
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteAreaAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 65
    new-instance v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-direct {v0, v1, p3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;-><init>(Lcom/sonymobile/home/deletearea/DeleteDropZoneView;Lcom/sonymobile/home/DialogHandler;)V

    .line 66
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mIsDeleteAreaVisible:Z

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mIsDeleteAreaVisible:Z

    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteAreaAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->layout()V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteAreaAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->hide(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    .line 81
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mIsDeleteAreaVisible:Z

    return v0
.end method

.method public layout()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    iget-object v3, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mContainer:Lcom/sonymobile/flix/components/Component;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 98
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "cancellable"    # Z

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mIsDeleteAreaVisible:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mIsDeleteAreaVisible:Z

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteAreaAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->layout()V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteAreaAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->show(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;->mDeleteDropZoneView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-virtual {v0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateConfiguration()V

    .line 103
    return-void
.end method
