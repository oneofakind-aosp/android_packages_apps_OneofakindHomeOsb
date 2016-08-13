.class Lcom/sonymobile/home/folder/GridView$GridTouchScrollArea;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridTouchScrollArea"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/GridView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/sonymobile/home/folder/GridView$GridTouchScrollArea;->this$0:Lcom/sonymobile/home/folder/GridView;

    .line 892
    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 893
    return-void
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
    .line 906
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
    .line 898
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$GridTouchScrollArea;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1400(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/sonymobile/flix/util/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 899
    const/4 v0, 0x0

    return v0
.end method
