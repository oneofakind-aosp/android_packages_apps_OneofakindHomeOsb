.class public Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;
.super Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
.source "TouchListeningViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;FFLcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "container"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;FFLcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;IILcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "container"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;IILcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    .line 45
    return-void
.end method

.method private isScrollable()Z
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "isScrollable":Z
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mView:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->isScrollable()Z

    move-result v0

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mView:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->isScrollable()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->onTouch(IZFFLandroid/view/MotionEvent;)Z

    move-result v0

    .line 52
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mListener:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mListener:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;

    invoke-interface {v1, p0}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;->onTouchOnScrollableConsumed(Lcom/sonymobile/flix/components/Component;)V

    .line 58
    :cond_0
    return v0
.end method

.method public setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->mListener:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;

    .line 75
    return-void
.end method
