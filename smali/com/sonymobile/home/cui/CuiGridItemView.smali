.class public abstract Lcom/sonymobile/home/cui/CuiGridItemView;
.super Lcom/sonymobile/flix/components/Component;
.source "CuiGridItemView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;
.implements Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    }
.end annotation


# instance fields
.field protected mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

.field private mClickAlpha:I

.field private mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

.field protected mCuiGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

.field protected mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

.field protected mIcon:Landroid/graphics/Bitmap;

.field protected mIconView:Lcom/sonymobile/flix/components/Image;

.field protected final mLabel:Ljava/lang/String;

.field protected mLabelBitmap:Landroid/graphics/Bitmap;

.field protected mLabelView:Lcom/sonymobile/flix/components/Image;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "gridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    .param p3, "cuiGridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "labelBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 50
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    .line 51
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mCuiGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

    .line 52
    iput-object p4, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIcon:Landroid/graphics/Bitmap;

    .line 53
    iput-object p5, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabel:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p0, p5}, Lcom/sonymobile/home/cui/CuiGridItemView;->setName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/cui/CuiGridItemView;->setCullingEnabled(Z)V

    .line 57
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItemView$1;

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView$1;-><init>(Lcom/sonymobile/home/cui/CuiGridItemView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setReleaseOnLongPress(Z)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setProperty(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridItemView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridItemView;->doLongPress(FF)V

    return-void
.end method

.method private doLongPress(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;->onGridItemLongPressed(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V

    .line 196
    :cond_0
    return-void
.end method

.method private removeClickAnimation()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->cancel()V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->recycle()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 292
    :cond_0
    return-void
.end method

.method private setUpClickArea()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setSize(FF)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected animateCancel()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeClickAnimation()V

    .line 252
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtainCancelAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 253
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->start()V

    .line 254
    return-void
.end method

.method protected animatePress()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeClickAnimation()V

    .line 240
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtainPressAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 241
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->start()V

    .line 242
    return-void
.end method

.method protected animateRelease()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeClickAnimation()V

    .line 246
    invoke-static {p0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->obtainReleaseAnimation(Lcom/sonymobile/home/presenter/view/ClickAnimation$ClickAnimationView;)Lcom/sonymobile/home/presenter/view/ClickAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 247
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->start()V

    .line 248
    return-void
.end method

.method public final doClick()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->doHandleClick()Z

    move-result v0

    return v0
.end method

.method protected doHandleClick()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mCuiGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;->onGridItemClicked(Lcom/sonymobile/home/cui/CuiGridItem;)V

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickAlpha()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAlpha:I

    return v0
.end method

.method public getCuiGridItem()Lcom/sonymobile/home/cui/CuiGridItem;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mCuiGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

    return-object v0
.end method

.method public getIcon()Lcom/sonymobile/flix/components/Image;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 297
    return-void
.end method

.method public final layout(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 98
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->setSize(FF)V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->setUpViews()V

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridItemView;->onLayout(II)V

    .line 101
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->setUpClickArea()V

    .line 102
    return-void
.end method

.method public onClickAnimationFinish()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/ClickAnimation;->recycle()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAnim:Lcom/sonymobile/home/presenter/view/ClickAnimation;

    .line 284
    return-void
.end method

.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z
    .locals 1
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract onLayout(II)V
.end method

.method public abstract onRelease()V
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeClickAnimation()V

    .line 141
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 142
    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 144
    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    .line 145
    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIcon:Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 147
    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .line 148
    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    .line 149
    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mCuiGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

    .line 150
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->onRelease()V

    .line 151
    return-void
.end method

.method public setClickAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 264
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAlpha:I

    if-eq v0, p1, :cond_0

    .line 265
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mClickAlpha:I

    .line 267
    if-lez p1, :cond_1

    .line 268
    invoke-static {p1}, Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->setClickColorFilter(Landroid/graphics/ColorFilter;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->setClickColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method protected setClickColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 260
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIcon:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->onLayout(II)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    goto :goto_0
.end method

.method public setLabel(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmapLabel"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->onLayout(II)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    goto :goto_0
.end method

.method protected setUpViews()V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    .line 220
    .local v0, "scene":Lcom/sonymobile/flix/components/Scene;
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v1, v0}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    .line 221
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 224
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v1, v0}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    .line 225
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 228
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabelBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridItemView;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItemView;->setLabel(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 230
    return-void
.end method
