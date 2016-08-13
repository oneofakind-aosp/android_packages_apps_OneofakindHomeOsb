.class public interface abstract Lcom/sonymobile/flix/util/ListTouchHelper$Listener;
.super Ljava/lang/Object;
.source "ListTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/ListTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;
    }
.end annotation


# virtual methods
.method public abstract onBoundsChanged(ZFF)V
.end method

.method public abstract onFlick(FFF)V
.end method

.method public abstract onFling(FF)V
.end method

.method public abstract onMove(FF)V
.end method

.method public abstract onMoveStarted(FF)V
.end method

.method public abstract onPress(F)V
.end method

.method public abstract onSnap(FF)V
.end method

.method public abstract onStop(F)V
.end method
