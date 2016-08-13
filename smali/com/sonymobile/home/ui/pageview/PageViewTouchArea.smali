.class public Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "PageViewTouchArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;
    }
.end annotation


# instance fields
.field private final mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

.field private mTouchListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 78
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->createGestureDetector(Landroid/content/Context;)Lcom/sonymobile/flix/util/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FF)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    .line 68
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->createGestureDetector(Landroid/content/Context;)Lcom/sonymobile/flix/util/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    .line 69
    return-void
.end method

.method private createGestureDetector(Landroid/content/Context;)Lcom/sonymobile/flix/util/GestureDetector;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/sonymobile/flix/util/GestureDetector;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/util/GestureDetector;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "gestureDetector":Lcom/sonymobile/flix/util/GestureDetector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->setLongPressEnabled(Z)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/util/GestureDetector;->setVerticalDraggingEnabled(Z)V

    .line 85
    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/util/GestureDetector;->setHorizontalDraggingEnabled(Z)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {v0, p5}, Lcom/sonymobile/flix/util/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public setTouchListener(Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mTouchListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mTouchListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->removeGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;-><init>(Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mTouchListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;

    .line 101
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mTouchListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->addGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->mTouchListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;

    goto :goto_0
.end method
