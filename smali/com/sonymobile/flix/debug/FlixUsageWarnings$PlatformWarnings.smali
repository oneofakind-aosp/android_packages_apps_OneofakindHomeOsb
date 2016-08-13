.class public Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;
.super Ljava/lang/Object;
.source "FlixUsageWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FlixUsageWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlatformWarnings"
.end annotation


# static fields
.field private static sDisableAll:Z

.field private static sDisableReflectionAccessFailed:Z


# direct methods
.method public static reflectionAccessFailed()V
    .locals 2

    .prologue
    .line 554
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->sDisableReflectionAccessFailed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 557
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->sDisableReflectionAccessFailed:Z

    .line 559
    :cond_2
    const-string v0, "Access to a field, method or constructor using reflection\nfailed. Perhaps the internal structure of the target class has\nbeen changed. Please investigate if something needs to be done to\nthe affected Flix code in order to retain the same functionality\nas before."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
