.class public Lcom/sonymobile/flix/test/ProxyTextView;
.super Landroid/widget/TextView;
.source "ProxyTextView.java"

# interfaces
.implements Lcom/sonymobile/flix/test/TestProxy;


# instance fields
.field protected mBoundingRect:Landroid/graphics/RectF;

.field protected mComponent:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    .line 32
    invoke-static {p0, p2}, Lcom/sonymobile/flix/test/ProxyView;->setupProxyView(Landroid/view/View;Lcom/sonymobile/flix/components/Component;)V

    .line 33
    return-void
.end method

.method public static getText(Lcom/sonymobile/flix/components/Component;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 106
    instance-of v0, p0, Lcom/sonymobile/flix/components/Component$TextComponent;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Lcom/sonymobile/flix/components/Component$TextComponent;

    .end local p0    # "component":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p0}, Lcom/sonymobile/flix/components/Component$TextComponent;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    .restart local p0    # "component":Lcom/sonymobile/flix/components/Component;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    return-void
.end method

.method public getComponent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getLocationInWindow([I)V
    .locals 3
    .param p1, "location"    # [I

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sonymobile/flix/test/ProxyTextView;->layout(IIII)V

    .line 83
    invoke-super {p0, p1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    aput v2, p1, v1

    .line 91
    const/4 v0, 0x1

    aput v2, p1, v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/test/ProxyTextView;->getText(Lcom/sonymobile/flix/components/Component;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/test/ProxyView;->getVisibility(Lcom/sonymobile/flix/components/Component;)I

    move-result v0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/test/ProxyView;->isShown(Lcom/sonymobile/flix/components/Component;)Z

    move-result v0

    return v0
.end method

.method public layout(IIII)V
    .locals 8
    .param p1, "unusedLeft"    # I
    .param p2, "unusedTop"    # I
    .param p3, "unusedRight"    # I
    .param p4, "unusedBottom"    # I

    .prologue
    const-wide v6, 0x3fefffffca501acbL    # 0.9999999

    .line 64
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v5, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 65
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v1, v4

    .line 66
    .local v1, "l":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v3, v4

    .line 67
    .local v3, "t":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 68
    .local v2, "r":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 69
    .local v0, "b":I
    sub-int v4, v2, v1

    sub-int v5, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/flix/test/ProxyTextView;->setMeasuredDimension(II)V

    .line 70
    invoke-super {p0, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 71
    return-void
.end method

.method public onAddedForComponent(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 39
    invoke-static {p1}, Lcom/sonymobile/flix/test/ProxyTextView;->getText(Lcom/sonymobile/flix/components/Component;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/test/ProxyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-wide v6, 0x3fefffffca501acbL    # 0.9999999

    .line 54
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v5, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 55
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v1, v4

    .line 56
    .local v1, "l":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v3, v4

    .line 57
    .local v3, "t":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 58
    .local v2, "r":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyTextView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 59
    .local v0, "b":I
    sub-int v4, v2, v1

    sub-int v5, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/flix/test/ProxyTextView;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method
