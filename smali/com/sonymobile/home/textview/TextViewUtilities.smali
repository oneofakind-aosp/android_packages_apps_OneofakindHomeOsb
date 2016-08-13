.class public Lcom/sonymobile/home/textview/TextViewUtilities;
.super Ljava/lang/Object;
.source "TextViewUtilities.java"


# static fields
.field private static final LAYOUT_PARAMS_WRAP_CONTENT:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 23
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sonymobile/home/textview/TextViewUtilities;->LAYOUT_PARAMS_WRAP_CONTENT:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static createTextView(Landroid/content/Context;F)Landroid/widget/TextView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textSize"    # F

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;FI)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static createTextView(Landroid/content/Context;FI)Landroid/widget/TextView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textSize"    # F
    .param p2, "numberOfRows"    # I

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static createTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textSize"    # F
    .param p2, "numberOfRows"    # I
    .param p3, "shadow"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "textView":Landroid/widget/TextView;
    sget-object v1, Lcom/sonymobile/home/textview/TextViewUtilities;->LAYOUT_PARAMS_WRAP_CONTENT:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    if-le p2, v2, :cond_1

    .line 52
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 53
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 61
    if-eqz p3, :cond_0

    .line 62
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 65
    :cond_0
    return-object v0

    .line 56
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public static createTextView(Landroid/content/Context;Ljava/lang/String;FIILandroid/graphics/Rect;Landroid/graphics/Typeface;I)Landroid/widget/TextView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "numberOfRows"    # I
    .param p4, "textColor"    # I
    .param p5, "padding"    # Landroid/graphics/Rect;
    .param p6, "typeFace"    # Landroid/graphics/Typeface;
    .param p7, "gravity"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "textView":Landroid/widget/TextView;
    sget-object v1, Lcom/sonymobile/home/textview/TextViewUtilities;->LAYOUT_PARAMS_WRAP_CONTENT:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    if-le p3, v3, :cond_0

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 101
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget v1, p5, Landroid/graphics/Rect;->left:I

    iget v2, p5, Landroid/graphics/Rect;->top:I

    iget v3, p5, Landroid/graphics/Rect;->right:I

    iget v4, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0
.end method
