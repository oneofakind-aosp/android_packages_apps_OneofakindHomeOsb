.class public interface abstract Lcom/sonymobile/flix/util/Animation$Listener;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
    }
.end annotation


# virtual methods
.method public abstract onFinish(Lcom/sonymobile/flix/util/Animation;)V
.end method

.method public abstract onStart(Lcom/sonymobile/flix/util/Animation;)V
.end method
