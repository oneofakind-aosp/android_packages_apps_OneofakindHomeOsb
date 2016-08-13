.class public interface abstract Lcom/sonymobile/flix/components/Scene$LifeCycleListener;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LifeCycleListener"
.end annotation


# virtual methods
.method public abstract onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V
.end method

.method public abstract onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
.end method

.method public abstract onSceneDraw(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Canvas;)V
.end method

.method public abstract onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
.end method
