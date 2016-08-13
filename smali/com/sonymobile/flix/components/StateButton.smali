.class public Lcom/sonymobile/flix/components/StateButton;
.super Lcom/sonymobile/flix/components/Component;
.source "StateButton.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ButtonListener;


# instance fields
.field protected mAutoSizeToGraphic:Z

.field protected mButton:Lcom/sonymobile/flix/components/Button;

.field protected mPressedComponent:Lcom/sonymobile/flix/components/Component;

.field protected mReleasedComponent:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "released"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "pressed"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/StateButton;->createInternalButton(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->setButton(Lcom/sonymobile/flix/components/Button;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->setAutoSizeToGraphic(Z)V

    .line 71
    if-nez p3, :cond_0

    .line 72
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/StateButton;->setGraphic(Lcom/sonymobile/flix/components/Component;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/flix/components/StateButton;->setGraphics(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method


# virtual methods
.method public addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Button;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 408
    return-void
.end method

.method protected createInternalButton(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Button;
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 79
    new-instance v0, Lcom/sonymobile/flix/components/Button;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Button;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-object v0
.end method

.method public getButton()Lcom/sonymobile/flix/components/Button;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    return-object v0
.end method

.method public getPressedGraphic()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getReleasedGraphic()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Button;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 254
    return-void
.end method

.method public onDrag(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 268
    return-void
.end method

.method public onHoverEnter(Lcom/sonymobile/flix/components/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 275
    return-void
.end method

.method public onHoverExit(Lcom/sonymobile/flix/components/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 282
    return-void
.end method

.method public onLongPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 261
    return-void
.end method

.method public onPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/StateButton;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->updateGraphic(Z)V

    .line 237
    return-void
.end method

.method public onRelease(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/StateButton;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->updateGraphic(Z)V

    .line 247
    return-void
.end method

.method public removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Button;->removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 415
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    if-eq v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 147
    :cond_1
    return-void
.end method

.method public setAutoSizeToGraphic(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/StateButton;->mAutoSizeToGraphic:Z

    .line 124
    return-void
.end method

.method public setButton(Lcom/sonymobile/flix/components/Button;)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Button;->removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 188
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sonymobile/flix/components/Button;->setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V

    .line 190
    invoke-virtual {p1, p0}, Lcom/sonymobile/flix/components/Button;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/StateButton;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    .line 193
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    .line 194
    return-void
.end method

.method public setGraphic(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "graphic"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 88
    invoke-virtual {p0, p1, p1}, Lcom/sonymobile/flix/components/StateButton;->setGraphics(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 89
    return-void
.end method

.method public setGraphics(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "released"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "pressed"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/StateButton;->replaceChild(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/StateButton;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    if-eq v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 104
    :cond_1
    if-eq p2, p1, :cond_2

    .line 105
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/StateButton;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 107
    :cond_2
    iput-object p1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    .line 108
    iput-object p2, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    .line 109
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/StateButton;->mAutoSizeToGraphic:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/StateButton;->setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/StateButton;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/StateButton;->updateGraphic(Z)V

    .line 113
    return-void
.end method

.method public setHighQuality(Z)V
    .locals 2
    .param p1, "highQuality"    # Z

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setHighQuality(Z)V

    .line 221
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setHighQuality(Z)V

    .line 222
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setHighQuality(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Button;->setSize(FF)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    if-eq v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 136
    :cond_1
    return-void
.end method

.method public setTouchPadding(F)V
    .locals 1
    .param p1, "padding"    # F

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Button;->setTouchPadding(F)V

    .line 345
    return-void
.end method

.method protected updateGraphic(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sonymobile/flix/components/StateButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 211
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sonymobile/flix/components/StateButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 216
    :cond_1
    return-void

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
