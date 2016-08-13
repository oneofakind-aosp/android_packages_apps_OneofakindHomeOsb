.class public Lcom/sonymobile/home/search/LocalSearchItemView;
.super Landroid/widget/TextView;
.source "LocalSearchItemView.java"


# instance fields
.field private mClickAlpha:I

.field private mClickAnimator:Landroid/animation/ObjectAnimator;

.field private mStayPressed:Z

.field private mTouchCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/home/search/LocalSearchItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/search/LocalSearchItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private animateCancel()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->getReleaseAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 87
    return-void
.end method

.method private animatePress()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->getPressAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 78
    return-void
.end method

.method private animateRelease()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 66
    :cond_0
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/LocalSearchItemView;->setClickAlpha(I)V

    .line 67
    invoke-direct {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->getReleaseAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    return-void
.end method

.method private getPressAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 90
    const-string v1, "clickAlpha"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x96

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 92
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    return-object v0
.end method

.method private getReleaseAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v1, "clickAlpha"

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v3, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickAnimation;->CLICK_RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public getClickAlpha()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAlpha:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mTouchCancelled:Z

    .line 119
    iget-boolean v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mTouchCancelled:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->animateCancel()V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClickAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 127
    iget v2, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAlpha:I

    if-eq p1, v2, :cond_0

    .line 128
    iput p1, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAlpha:I

    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 131
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-lez p1, :cond_1

    .line 132
    invoke-static {p1}, Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 133
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 51
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    if-eqz p1, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->animatePress()V

    .line 60
    :cond_0
    :goto_1
    return-void

    .line 50
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    .restart local v0    # "changed":Z
    :cond_2
    iget-boolean v1, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mStayPressed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mTouchCancelled:Z

    if-nez v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/sonymobile/home/search/LocalSearchItemView;->animateRelease()V

    goto :goto_1
.end method

.method public setStayPressed(Z)V
    .locals 1
    .param p1, "stayPressed"    # Z

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mStayPressed:Z

    if-eq v0, p1, :cond_1

    .line 106
    iput-boolean p1, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mStayPressed:Z

    .line 107
    if-nez p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/search/LocalSearchItemView;->mClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/LocalSearchItemView;->setClickAlpha(I)V

    .line 114
    :cond_1
    return-void
.end method
