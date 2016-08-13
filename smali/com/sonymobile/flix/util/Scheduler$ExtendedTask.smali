.class public interface abstract Lcom/sonymobile/flix/util/Scheduler$ExtendedTask;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedTask"
.end annotation


# virtual methods
.method public abstract onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V
.end method

.method public abstract onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V
.end method
