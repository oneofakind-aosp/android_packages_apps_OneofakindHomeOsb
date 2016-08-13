.class public Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter$LogOutput;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FpsCounter$FrameCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogOutput"
.end annotation


# direct methods
.method public static draw(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "fpsText"    # Ljava/lang/CharSequence;

    .prologue
    .line 379
    const-string v0, "FPS"

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method
