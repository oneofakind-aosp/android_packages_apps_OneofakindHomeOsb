.class public final Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "LongPressRunnable"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/sonymobile/flix/util/GestureDetector;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/util/GestureDetector;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 259
    iget-object v2, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v2, v2, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    if-ne v2, v3, :cond_2

    .line 260
    iget-object v2, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;->gestureEvent(Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V

    .line 261
    iget-object v2, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v2, v2, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 262
    .local v1, "nbrGestureListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 263
    iget-object v2, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v2, v2, Lcom/sonymobile/flix/util/GestureDetector;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;

    iget-object v3, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    iget v3, v3, Lcom/sonymobile/flix/util/GestureDetector;->mPressX:F

    iget-object v4, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    iget v4, v4, Lcom/sonymobile/flix/util/GestureDetector;->mPressY:F

    iget-object v5, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->mEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, v4, v5}, Lcom/sonymobile/flix/util/GestureDetector$GestureListener;->onLongPress(FFLandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->this$0:Lcom/sonymobile/flix/util/GestureDetector;

    sget-object v3, Lcom/sonymobile/flix/util/GestureDetector$TouchState;->LONG_PRESSED:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    iput-object v3, v2, Lcom/sonymobile/flix/util/GestureDetector;->mState:Lcom/sonymobile/flix/util/GestureDetector$TouchState;

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->setEvent(Landroid/view/MotionEvent;)V

    .line 269
    .end local v0    # "i":I
    .end local v1    # "nbrGestureListeners":I
    :cond_2
    return-void
.end method

.method public setEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonymobile/flix/util/GestureDetector$LongPressRunnable;->mEvent:Landroid/view/MotionEvent;

    .line 255
    return-void
.end method
