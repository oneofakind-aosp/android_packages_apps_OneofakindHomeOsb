.class public abstract Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;
.super Ljava/lang/Object;
.source "DynamicsTask.java"

# interfaces
.implements Lcom/sonymobile/flix/util/DynamicsTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/DynamicsTask$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/flix/util/Dynamics;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonymobile/flix/util/DynamicsTask$Listener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;, "Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/util/DynamicsTask",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;, "Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter<TT;>;"
    .local p1, "task":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    .local p2, "dynamics":Lcom/sonymobile/flix/util/Dynamics;, "TT;"
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/util/DynamicsTask",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;, "Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter<TT;>;"
    .local p1, "task":Lcom/sonymobile/flix/util/DynamicsTask;, "Lcom/sonymobile/flix/util/DynamicsTask<TT;>;"
    .local p2, "dynamics":Lcom/sonymobile/flix/util/Dynamics;, "TT;"
    return-void
.end method
