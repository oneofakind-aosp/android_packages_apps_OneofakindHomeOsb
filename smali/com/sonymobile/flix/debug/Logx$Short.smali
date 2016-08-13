.class public Lcom/sonymobile/flix/debug/Logx$Short;
.super Ljava/lang/Object;
.source "Logx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/Logx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Short"
.end annotation


# direct methods
.method public static d()V
    .locals 4

    .prologue
    .line 543
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 554
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 511
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 456
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    return-void
.end method
