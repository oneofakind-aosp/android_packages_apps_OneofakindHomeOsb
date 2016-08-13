.class public Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;
.super Ljava/lang/Object;
.source "DesktopTouchConsumedHandler.java"

# interfaces
.implements Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;


# instance fields
.field private mWasTouchOnScrollableConsumed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOnScrollableConsumed(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "scrollable"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;->mWasTouchOnScrollableConsumed:Z

    .line 39
    return-void
.end method

.method public resetTouchOnScrollableConsumed()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;->mWasTouchOnScrollableConsumed:Z

    .line 34
    return-void
.end method

.method public wasTouchOnScrollableConsumed()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;->mWasTouchOnScrollableConsumed:Z

    return v0
.end method
