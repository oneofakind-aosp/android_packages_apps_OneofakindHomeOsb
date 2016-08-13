.class public Lcom/sonymobile/flix/util/GestureDetector$GestureAdapter;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Lcom/sonymobile/flix/util/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(FFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    return-void
.end method

.method public onDrag(FFFFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    return-void
.end method

.method public onDraggingStarted(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 170
    return-void
.end method

.method public onLongPress(FFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onPress(FFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    return-void
.end method

.method public onReleased()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onSecondaryClick(FFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    return-void
.end method

.method public onSwipe(FFFFLandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vx"    # F
    .param p4, "vy"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    return-void
.end method
