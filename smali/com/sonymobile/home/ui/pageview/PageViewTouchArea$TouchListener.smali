.class Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;
.super Lcom/sonymobile/flix/util/GestureDetector$GestureAdapter;
.source "PageViewTouchArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field private final mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/GestureDetector$GestureAdapter;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    .line 34
    return-void
.end method


# virtual methods
.method public onClick(FFLandroid/view/MotionEvent;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;->onClick(FFFF)V

    .line 41
    :cond_0
    return-void
.end method

.method public onLongPress(FFLandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;->onLongPress(FFFF)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSecondaryClick(FFLandroid/view/MotionEvent;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea$TouchListener;->mListener:Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;->onSecondaryClick(FFFF)V

    .line 56
    :cond_0
    return-void
.end method
