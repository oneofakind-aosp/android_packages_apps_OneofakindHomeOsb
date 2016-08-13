.class public interface abstract Lcom/sonymobile/flix/util/GestureDetector$GestureListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureListener"
.end annotation


# virtual methods
.method public abstract onClick(FFLandroid/view/MotionEvent;)V
.end method

.method public abstract onDrag(FFFFLandroid/view/MotionEvent;)V
.end method

.method public abstract onDraggingStarted(FF)V
.end method

.method public abstract onLongPress(FFLandroid/view/MotionEvent;)Z
.end method

.method public abstract onPress(FFLandroid/view/MotionEvent;)V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onSecondaryClick(FFLandroid/view/MotionEvent;)V
.end method

.method public abstract onSwipe(FFFFLandroid/view/MotionEvent;)V
.end method
