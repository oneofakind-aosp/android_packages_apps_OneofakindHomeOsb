.class public Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DownSwipeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;
    }
.end annotation


# static fields
.field private static final DOWN_FACTOR:F


# instance fields
.field private mDownSwipeListener:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;

.field private mDownTime:J

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mIsTrackingGesture:Z

.field private final mMinimumDownDistance:F

.field private mTopMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fd0c152382d7365L    # 0.2617993877991494

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->DOWN_FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 48
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 51
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mMinimumDownDistance:F

    .line 52
    return-void
.end method

.method private notifyDownSwipe()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mDownSwipeListener:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mDownSwipeListener:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;->onDownSwipe()V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelOngoingTrackingIfNeeded()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mIsTrackingGesture:Z

    if-eqz v0, :cond_0

    .line 127
    iput-boolean v7, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mIsTrackingGesture:Z

    .line 129
    iget-wide v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 131
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v8}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 134
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "downEvent"    # Landroid/view/MotionEvent;
    .param p2, "upEvent"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 67
    .local v1, "dy":F
    iget v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mMinimumDownDistance:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 69
    .local v0, "dx":F
    sget v2, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->DOWN_FACTOR:F

    mul-float/2addr v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->notifyDownSwipe()V

    .line 71
    const/4 v2, 0x1

    .line 75
    .end local v0    # "dx":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "finishTracking":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    .line 115
    .local v0, "eventHandled":Z
    iget-boolean v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mIsTrackingGesture:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 119
    :cond_2
    return v0

    .line 95
    .end local v0    # "eventHandled":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mTopMargin:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->cancelOngoingTrackingIfNeeded()V

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mIsTrackingGesture:Z

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mDownTime:J

    goto :goto_0

    .line 104
    :pswitch_2
    iget-boolean v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mIsTrackingGesture:Z

    if-eqz v2, :cond_0

    .line 105
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mIsTrackingGesture:Z

    .line 106
    const/4 v1, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setListener(Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mDownSwipeListener:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;

    .line 138
    return-void
.end method

.method public setTopMargin(I)V
    .locals 0
    .param p1, "topMargin"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->mTopMargin:I

    .line 61
    return-void
.end method
