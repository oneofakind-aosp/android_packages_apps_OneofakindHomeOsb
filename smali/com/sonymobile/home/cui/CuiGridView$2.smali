.class Lcom/sonymobile/home/cui/CuiGridView$2;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "CuiGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridView;-><init>(Lcom/sonymobile/flix/components/Scene;ZZZZLcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridView$2;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

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
    .line 169
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
    .line 163
    const/4 v0, 0x1

    return v0
.end method
