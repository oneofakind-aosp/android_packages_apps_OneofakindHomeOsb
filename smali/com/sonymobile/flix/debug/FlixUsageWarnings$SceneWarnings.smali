.class public Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;
.super Ljava/lang/Object;
.source "FlixUsageWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FlixUsageWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneWarnings"
.end annotation


# static fields
.field private static sDisableAll:Z

.field private static sDisableTouchEventNotConsumed:Z

.field private static sDisableTouchNotEnabled:Z


# direct methods
.method public static disableTouchEventNotConsumed()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableTouchEventNotConsumed:Z

    .line 435
    return-void
.end method

.method public static disableTouchNotEnabled()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableTouchNotEnabled:Z

    .line 439
    return-void
.end method

.method public static touchEventNotConsumed(Landroid/view/MotionEvent;)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 442
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableTouchEventNotConsumed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 445
    sput-boolean v1, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableTouchEventNotConsumed:Z

    .line 447
    :cond_2
    const-string v0, "Touch event was not consumed by the scene. No further events\nfrom this touch gesture will be forwarded to the scene,\nbecause Android will consume them. If this is not the desired\nbehavior, then please make sure that one of your touchable\ncomponents consumes the event, or use\nScene.setConsumeTouchEvents(true).\nTouch event: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static touchNotEnabled()V
    .locals 2

    .prologue
    .line 456
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableTouchNotEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 459
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->sDisableTouchNotEnabled:Z

    .line 461
    :cond_2
    const-string v0, "Touch is currently disabled a the scene level. This is most\nlikely intentional, but could lead to confusion if it isn\'t.\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
