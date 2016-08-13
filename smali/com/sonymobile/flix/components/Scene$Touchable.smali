.class public interface abstract Lcom/sonymobile/flix/components/Scene$Touchable;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Touchable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;,
        Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;
    }
.end annotation


# virtual methods
.method public abstract onHoverEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
