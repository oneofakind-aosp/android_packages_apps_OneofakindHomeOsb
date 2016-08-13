.class Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;
.super Lcom/sonymobile/flix/components/Component;
.source "ResizableFrame.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/ResizableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchDelegate"
.end annotation


# instance fields
.field private final mComponent:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 654
    iput-object p2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 655
    return-void
.end method


# virtual methods
.method public getComponent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->mComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
