.class public abstract Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;
.super Ljava/lang/Object;
.source "ListTouchHelper.java"

# interfaces
.implements Lcom/sonymobile/flix/util/ListTouchHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/ListTouchHelper$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(ZFF)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 1157
    return-void
.end method

.method public onFlick(FFF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "to"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 1141
    return-void
.end method

.method public onFling(FF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 1145
    return-void
.end method

.method public onMove(FF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 1137
    return-void
.end method

.method public onMoveStarted(FF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 1133
    return-void
.end method

.method public onPress(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 1129
    return-void
.end method

.method public onSnap(FF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "to"    # F

    .prologue
    .line 1149
    return-void
.end method

.method public onStop(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 1153
    return-void
.end method
