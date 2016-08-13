.class public interface abstract Lcom/sonymobile/flix/util/DynamicsTask$Listener;
.super Ljava/lang/Object;
.source "DynamicsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/DynamicsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/flix/util/Dynamics;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFinish(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/util/DynamicsTask",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract onStart(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/util/DynamicsTask",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
