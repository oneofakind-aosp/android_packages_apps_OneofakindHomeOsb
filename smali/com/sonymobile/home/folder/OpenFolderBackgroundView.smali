.class public Lcom/sonymobile/home/folder/OpenFolderBackgroundView;
.super Lcom/sonymobile/flix/components/Button;
.source "OpenFolderBackgroundView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$LifeCycleListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Button;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;->setConsumeTouchEvents(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 37
    return-void
.end method

.method public onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 23
    return-void
.end method

.method public onSceneDraw(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    return-void
.end method

.method public onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 28
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;->setSize(FF)V

    .line 29
    return-void
.end method
