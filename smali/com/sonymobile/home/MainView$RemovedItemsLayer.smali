.class Lcom/sonymobile/home/MainView$RemovedItemsLayer;
.super Lcom/sonymobile/flix/components/Component;
.source "MainView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemovedItemsLayer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 859
    return-void
.end method


# virtual methods
.method public onDispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method
