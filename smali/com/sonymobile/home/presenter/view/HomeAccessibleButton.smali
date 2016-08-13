.class public Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
.source "HomeAccessibleButton.java"


# instance fields
.field private mClickSoundEnabled:Z

.field private mTouchCancelled:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->mClickSoundEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public makeClickSound()V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->mClickSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->makeClickSound()V

    .line 65
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onPress(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->onPress(FF)V

    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->onPress()V

    .line 46
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onRelease(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->onRelease(FF)V

    .line 35
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->mTouchCancelled:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->onCancel()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->onRelease()V

    goto :goto_0
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->mTouchCancelled:Z

    .line 28
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->onTouch(IZFFLandroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClickSoundEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;->mClickSoundEnabled:Z

    .line 69
    return-void
.end method
