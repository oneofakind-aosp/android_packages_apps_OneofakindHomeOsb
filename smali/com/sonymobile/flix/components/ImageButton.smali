.class public Lcom/sonymobile/flix/components/ImageButton;
.super Lcom/sonymobile/flix/components/StateButton;
.source "ImageButton.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ButtonListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;IILandroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "releasedResId"    # I
    .param p3, "pressedResId"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 118
    invoke-static {p1}, Lcom/sonymobile/flix/components/ImageButton;->createDefaultImage(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    invoke-static {p1}, Lcom/sonymobile/flix/components/ImageButton;->createDefaultImage(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/flix/components/StateButton;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 119
    invoke-virtual {p0, p2, p3, p4}, Lcom/sonymobile/flix/components/ImageButton;->setBitmaps(IILandroid/graphics/BitmapFactory$Options;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "released"    # Landroid/graphics/Bitmap;
    .param p3, "pressed"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/sonymobile/flix/components/ImageButton;->createDefaultImage(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    invoke-static {p1}, Lcom/sonymobile/flix/components/ImageButton;->createDefaultImage(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Image;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/flix/components/StateButton;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 54
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/flix/components/ImageButton;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method

.method protected static createDefaultImage(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Image;
    .locals 1
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 123
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getPressedGraphic()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/ImageButton;->getPressedGraphic()Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    return-object v0
.end method

.method public getPressedGraphic()Lcom/sonymobile/flix/components/Image;
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/sonymobile/flix/components/StateButton;->getPressedGraphic()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Image;

    return-object v0
.end method

.method public getPressedImage()Lcom/sonymobile/flix/components/Image;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/ImageButton;->getPressedGraphic()Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReleasedGraphic()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/ImageButton;->getReleasedGraphic()Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    return-object v0
.end method

.method public getReleasedGraphic()Lcom/sonymobile/flix/components/Image;
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/sonymobile/flix/components/StateButton;->getReleasedGraphic()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Image;

    return-object v0
.end method

.method public getReleasedImage()Lcom/sonymobile/flix/components/Image;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/ImageButton;->getReleasedGraphic()Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    return-object v0
.end method

.method public setBitmap(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/ImageButton;->setBitmap(ILandroid/graphics/BitmapFactory$Options;)V

    .line 146
    return-void
.end method

.method public setBitmap(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 158
    invoke-virtual {p0, p1, p1, p2}, Lcom/sonymobile/flix/components/ImageButton;->setBitmaps(IILandroid/graphics/BitmapFactory$Options;)V

    .line 159
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    invoke-virtual {p0, p1, p1}, Lcom/sonymobile/flix/components/ImageButton;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method

.method public setBitmaps(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p1, "releasedResId"    # I
    .param p2, "pressedResId"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sonymobile/flix/components/ImageButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    check-cast v1, Lcom/sonymobile/flix/components/Image;

    .line 206
    .local v1, "releasedImage":Lcom/sonymobile/flix/components/Image;
    iget-object v0, p0, Lcom/sonymobile/flix/components/ImageButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    check-cast v0, Lcom/sonymobile/flix/components/Image;

    .line 207
    .local v0, "pressedImage":Lcom/sonymobile/flix/components/Image;
    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/components/Image;->setBitmap(I)V

    .line 208
    if-eq v0, v1, :cond_0

    .line 209
    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/components/Image;->setBitmap(I)V

    .line 211
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/ImageButton;->mAutoSizeToGraphic:Z

    if-eqz v2, :cond_1

    .line 212
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/components/ImageButton;->setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/ImageButton;->isPressed()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/ImageButton;->updateGraphic(Z)V

    .line 215
    return-void
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "releasedBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pressedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sonymobile/flix/components/ImageButton;->mReleasedComponent:Lcom/sonymobile/flix/components/Component;

    check-cast v1, Lcom/sonymobile/flix/components/Image;

    .line 169
    .local v1, "releasedImage":Lcom/sonymobile/flix/components/Image;
    iget-object v0, p0, Lcom/sonymobile/flix/components/ImageButton;->mPressedComponent:Lcom/sonymobile/flix/components/Component;

    check-cast v0, Lcom/sonymobile/flix/components/Image;

    .line 170
    .local v0, "pressedImage":Lcom/sonymobile/flix/components/Image;
    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    if-eq v0, v1, :cond_0

    .line 172
    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/ImageButton;->mAutoSizeToGraphic:Z

    if-eqz v2, :cond_1

    .line 175
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/components/ImageButton;->setSizeTo(Lcom/sonymobile/flix/components/Component;Z)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/ImageButton;->isPressed()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/ImageButton;->updateGraphic(Z)V

    .line 178
    return-void
.end method
