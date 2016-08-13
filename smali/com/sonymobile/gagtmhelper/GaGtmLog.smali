.class public Lcom/sonymobile/gagtmhelper/GaGtmLog;
.super Ljava/lang/Object;
.source "GaGtmLog.java"


# static fields
.field private static volatile mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    return v0
.end method
