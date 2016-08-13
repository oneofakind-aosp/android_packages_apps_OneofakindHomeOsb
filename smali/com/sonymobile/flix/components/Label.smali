.class public Lcom/sonymobile/flix/components/Label;
.super Lcom/sonymobile/flix/components/Component;
.source "Label.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Component$TextComponent;


# static fields
.field private static sFieldLineCount:Ljava/lang/reflect/Field;


# instance fields
.field protected mAscent:F

.field protected mAutoRefreshLayout:Z

.field protected mDescent:F

.field protected mEdgeFade:Z

.field protected mLayoutAlignment:Landroid/text/Layout$Alignment;

.field protected mLayoutLineSpacingAdd:F

.field protected mLayoutLineSpacingMultiply:F

.field protected mLayoutedTextEnabled:Z

.field protected mLinearGradient:Landroid/graphics/LinearGradient;

.field protected mMaxLines:I

.field protected mMaxWidth:I

.field protected mNbrCharsToDraw:I

.field protected mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

.field protected mShadowPadding:Landroid/graphics/RectF;

.field protected mText:Ljava/lang/CharSequence;

.field protected mTextColor:I

.field protected mTextLayout:Landroid/text/Layout;

.field protected mTopline:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/flix/components/Label;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/flix/components/Label;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "autoRefreshLayout"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/flix/components/Label;->init(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;Z)V

    .line 104
    return-void
.end method

.method private static getBiDiAlignment(Landroid/content/Context;Landroid/text/Layout$Alignment;Ljava/lang/CharSequence;)Landroid/text/Layout$Alignment;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalAlignment"    # Landroid/text/Layout$Alignment;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    .line 629
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 633
    .local v0, "layoutDirection":I
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-static {p2}, Lcom/sonymobile/flix/components/Label;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 634
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p1, v1, :cond_2

    .line 635
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 641
    .end local v0    # "layoutDirection":I
    .end local p1    # "originalAlignment":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_1
    return-object p1

    .line 633
    .restart local v0    # "layoutDirection":I
    .restart local p1    # "originalAlignment":Landroid/text/Layout$Alignment;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 636
    :cond_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p1, v1, :cond_0

    .line 637
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1
.end method

.method public static getDefaultTemplate(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Label;
    .locals 1
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 729
    const-string v0, "flix.components.Label#DefaultTemplate"

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Scene;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Label;

    return-object v0
.end method

.method public static getDefaultTypeface(Lcom/sonymobile/flix/components/Scene;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 721
    const-string v0, "flix.components.Label#DefaultTypeFace"

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Scene;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method private init(Lcom/sonymobile/flix/components/Scene;Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "autoRefreshLayout"    # Z

    .prologue
    const/4 v4, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->prepareForDrawing()V

    .line 114
    invoke-static {p1}, Lcom/sonymobile/flix/components/Label;->getDefaultTemplate(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/flix/components/Label;

    move-result-object v0

    .line 115
    .local v0, "template":Lcom/sonymobile/flix/components/Label;
    if-eqz v0, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->isSubpixelText()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 120
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/flix/components/Label;->getDefaultTypeface(Lcom/sonymobile/flix/components/Scene;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 123
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1

    .line 124
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/Label;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Label;->setTextSizeSp(F)V

    .line 128
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Label;->setTextColor(I)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/components/Label;->setTextMaxLines(I)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/components/Label;->setTextEdgeFade(Z)V

    .line 131
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Label;->setLayoutAlignment(Landroid/text/Layout$Alignment;)V

    .line 132
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Label;->setLayoutLineSpacing(FF)V

    .line 133
    if-eqz p3, :cond_2

    .line 134
    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/components/Label;->setAutoRefreshLayout(Z)V

    .line 136
    :cond_2
    return-void
.end method

.method protected static isRtl(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 685
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 686
    .local v2, "nbrCharacters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 687
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 688
    .local v0, "directionality":I
    sparse-switch v0, :sswitch_data_0

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :sswitch_0
    const/4 v3, 0x1

    .line 700
    .end local v0    # "directionality":I
    :cond_0
    :sswitch_1
    return v3

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private static setStaticLayoutMaxLines(Landroid/text/StaticLayout;I)V
    .locals 3
    .param p0, "layout"    # Landroid/text/StaticLayout;
    .param p1, "maxLines"    # I

    .prologue
    .line 585
    sget-object v1, Lcom/sonymobile/flix/components/Label;->sFieldLineCount:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 587
    :try_start_0
    const-class v1, Landroid/text/StaticLayout;

    const-string v2, "mLineCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/flix/components/Label;->sFieldLineCount:Ljava/lang/reflect/Field;

    .line 588
    sget-object v1, Lcom/sonymobile/flix/components/Label;->sFieldLineCount:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/flix/components/Label;->sFieldLineCount:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 597
    :try_start_1
    sget-object v1, Lcom/sonymobile/flix/components/Label;->sFieldLineCount:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 608
    :cond_1
    :goto_1
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->reflectionAccessFailed()V

    goto :goto_0

    .line 598
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->reflectionAccessFailed()V

    goto :goto_1

    .line 602
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->reflectionAccessFailed()V

    goto :goto_1
.end method


# virtual methods
.method protected autoRefreshLayout()V
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Label;->mAutoRefreshLayout:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->refreshLayout()V

    .line 412
    :cond_0
    return-void
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 646
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 647
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_2

    .line 649
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Label;->mEdgeFade:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    .line 651
    .local v7, "shader":Landroid/graphics/Shader;
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 652
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 653
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 677
    .end local v7    # "shader":Landroid/graphics/Shader;
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 659
    :cond_2
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    if-gez v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 661
    :cond_3
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    if-lez v0, :cond_0

    .line 662
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Label;->mEdgeFade:Z

    if-eqz v0, :cond_4

    .line 663
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    .line 664
    .restart local v7    # "shader":Landroid/graphics/Shader;
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 665
    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    add-int/lit8 v3, v0, 0x1

    iget v5, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    iget-object v6, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 666
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 668
    .end local v7    # "shader":Landroid/graphics/Shader;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    iget v5, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    iget-object v6, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 674
    :cond_5
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->drawNull(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public prepareForDrawing()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 614
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Label;->setPaint(Landroid/graphics/Paint;)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Label;->setPaint(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public refreshLayout()V
    .locals 1

    .prologue
    .line 415
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sonymobile/flix/components/Label;->mTopline:F

    .line 416
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Label;->mLayoutedTextEnabled:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->refreshLayoutedText()V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->refreshSimpleText()V

    goto :goto_0
.end method

.method protected refreshLayoutedText()V
    .locals 32

    .prologue
    .line 469
    const/16 v27, 0x0

    .line 471
    .local v27, "needsFade":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v2, Landroid/text/TextPaint;

    invoke-static {v3, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v25, v0

    .line 472
    .local v25, "desiredWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 475
    move/from16 v6, v25

    .line 481
    .local v6, "maxWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 482
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/Label;->setSize(FF)V

    .line 565
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Label;->mEdgeFade:Z

    if-eqz v2, :cond_11

    if-eqz v27, :cond_11

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Label;->getTextColor()I

    move-result v22

    .line 567
    .local v22, "textColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/sonymobile/flix/components/Label;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 569
    new-instance v16, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Label;->getTextSize()F

    move-result v19

    const/16 v20, 0x0

    const v2, 0xffffff

    and-int v21, v22, v2

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 576
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 577
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 582
    .end local v22    # "textColor":I
    :cond_0
    :goto_3
    return-void

    .line 476
    .end local v6    # "maxWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-gtz v2, :cond_2

    .line 477
    move/from16 v6, v25

    .restart local v6    # "maxWidth":I
    goto :goto_0

    .line 479
    .end local v6    # "maxWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    .restart local v6    # "maxWidth":I
    goto :goto_0

    .line 483
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_5

    .line 484
    new-instance v2, Lcom/sonymobile/flix/components/Label$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v5, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/flix/components/Label;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingMultiply:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingAdd:F

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/sonymobile/flix/components/Label$1;-><init>(Lcom/sonymobile/flix/components/Label;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 491
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    .line 492
    .local v31, "width":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    move/from16 v0, v25

    if-le v0, v2, :cond_4

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v0, v2

    move/from16 v31, v0

    .line 494
    const/16 v27, 0x1

    .line 496
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Label;->setSize(FF)V

    goto/16 :goto_1

    .line 498
    .end local v31    # "width":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    if-eqz v2, :cond_6

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/BoringLayout$Metrics;->top:I

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 504
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v2, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    invoke-static {v3, v2, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v10

    .line 506
    .local v10, "layoutMetrics":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    if-eqz v10, :cond_b

    iget v2, v10, Landroid/text/BoringLayout$Metrics;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-gt v2, v3, :cond_b

    .line 507
    :cond_7
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    .line 508
    if-nez v10, :cond_8

    .line 509
    new-instance v10, Landroid/text/BoringLayout$Metrics;

    .end local v10    # "layoutMetrics":Landroid/text/BoringLayout$Metrics;
    invoke-direct {v10}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 510
    .restart local v10    # "layoutMetrics":Landroid/text/BoringLayout$Metrics;
    move/from16 v0, v25

    iput v0, v10, Landroid/text/BoringLayout$Metrics;->width:I

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v10, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v10, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 514
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-eqz v2, :cond_a

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    check-cast v3, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v5, Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingMultiply:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingAdd:F

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 524
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-lez v2, :cond_9

    iget v2, v10, Landroid/text/BoringLayout$Metrics;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-le v2, v3, :cond_9

    .line 525
    const/16 v27, 0x1

    .line 527
    :cond_9
    iget v2, v10, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/Label;->setSize(FF)V

    goto/16 :goto_1

    .line 520
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v5, Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingMultiply:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingAdd:F

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    goto :goto_4

    .line 532
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Label;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/flix/components/Label;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/flix/components/Label;->getBiDiAlignment(Landroid/content/Context;Landroid/text/Layout$Alignment;Ljava/lang/CharSequence;)Landroid/text/Layout$Alignment;

    move-result-object v15

    .line 536
    .local v15, "actualAlignment":Landroid/text/Layout$Alignment;
    new-instance v11, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v13, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingMultiply:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingAdd:F

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v6

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 540
    const/16 v30, 0x0

    .line 541
    .local v30, "widestLine":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v28

    .line 542
    .local v28, "nrOfLines":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    move/from16 v0, v28

    if-ge v2, v0, :cond_c

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    move/from16 v28, v0

    .line 545
    :cond_c
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineMax(I)F

    move-result v29

    .line 547
    .local v29, "size":F
    cmpl-float v2, v29, v30

    if-lez v2, :cond_d

    .line 548
    move/from16 v30, v29

    .line 545
    :cond_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 553
    .end local v29    # "size":F
    :cond_e
    move/from16 v0, v30

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v30, v0

    .line 556
    new-instance v11, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    check-cast v13, Landroid/text/TextPaint;

    move/from16 v0, v30

    float-to-int v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingMultiply:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingAdd:F

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    if-lez v2, :cond_f

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    invoke-static {v2, v3}, Lcom/sonymobile/flix/components/Label;->setStaticLayoutMaxLines(Landroid/text/StaticLayout;I)V

    .line 561
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Label;->setSize(FF)V

    goto/16 :goto_1

    .line 572
    .end local v10    # "layoutMetrics":Landroid/text/BoringLayout$Metrics;
    .end local v15    # "actualAlignment":Landroid/text/Layout$Alignment;
    .end local v26    # "i":I
    .end local v28    # "nrOfLines":I
    .end local v30    # "widestLine":F
    .restart local v22    # "textColor":I
    :cond_10
    new-instance v17, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Label;->getTextSize()F

    move-result v3

    sub-float v18, v2, v3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v0, v2

    move/from16 v20, v0

    const/16 v21, 0x0

    const v2, 0xffffff

    and-int v23, v22, v2

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    goto/16 :goto_2

    .line 580
    .end local v22    # "textColor":I
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    goto/16 :goto_3
.end method

.method protected refreshSimpleText()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v6, 0xffffff

    const/4 v12, -0x1

    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    .line 425
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/flix/components/Label;->mDescent:F

    .line 430
    iput v12, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    .line 431
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v11, v0

    .line 432
    .local v11, "textWidth":F
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-lez v0, :cond_0

    .line 433
    iget-object v2, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    iget v4, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v13}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v10

    .line 434
    .local v10, "nbrChars":I
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 435
    iput v10, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    .line 436
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Label;->mEdgeFade:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/sonymobile/flix/components/Label;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->getTextSize()F

    move-result v3

    iget v2, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    and-int v5, v2, v6

    iget v6, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 451
    .end local v10    # "nbrChars":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mNbrCharsToDraw:I

    if-ne v0, v12, :cond_1

    .line 452
    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 453
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_1

    .line 454
    iput-object v13, p0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 457
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 461
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    .line 462
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mDescent:F

    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/flix/components/Label;->mDescent:F

    .line 463
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v11, v0

    .line 465
    :cond_2
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mAscent:F

    iget v1, p0, Lcom/sonymobile/flix/components/Label;->mDescent:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v11, v0}, Lcom/sonymobile/flix/components/Label;->setSize(FF)V

    .line 466
    return-void

    .line 444
    .restart local v10    # "nbrChars":I
    :cond_3
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->getTextSize()F

    move-result v3

    sub-float v3, v0, v3

    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    int-to-float v5, v0

    iget v7, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    and-int v8, v0, v6

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v1

    move v6, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/sonymobile/flix/components/Label;->mLinearGradient:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public setAutoRefreshLayout(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Label;->mAutoRefreshLayout:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->refreshLayout()V

    .line 142
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Label;->mAutoRefreshLayout:Z

    .line 143
    return-void
.end method

.method public setLayoutAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sonymobile/flix/components/Label;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    .line 332
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 333
    return-void
.end method

.method public setLayoutLineSpacing(FF)V
    .locals 0
    .param p1, "multiply"    # F
    .param p2, "add"    # F

    .prologue
    .line 336
    iput p1, p0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingMultiply:F

    .line 337
    iput p2, p0, Lcom/sonymobile/flix/components/Label;->mLayoutLineSpacingAdd:F

    .line 338
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 339
    return-void
.end method

.method public setLayoutedTextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Label;->mLayoutedTextEnabled:Z

    .line 324
    if-nez p1, :cond_0

    .line 325
    iput-object v0, p0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 326
    iput-object v0, p0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    .line 328
    :cond_0
    return-void
.end method

.method public setText(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 165
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Label;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 147
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    .line 148
    iput-object v1, p0, Lcom/sonymobile/flix/components/Label;->mTextLayout:Landroid/text/Layout;

    .line 149
    iput-object v1, p0, Lcom/sonymobile/flix/components/Label;->mSavedLayoutMetrics:Landroid/text/BoringLayout$Metrics;

    .line 150
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iput-object p1, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    .line 153
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Label;->setLayoutedTextEnabled(Z)V

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/sonymobile/flix/components/Label;->mTextColor:I

    .line 223
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    return-void
.end method

.method public setTextEdgeFade(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Label;->mEdgeFade:Z

    .line 366
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 367
    return-void
.end method

.method public setTextMaxLines(I)V
    .locals 2
    .param p1, "nbrLines"    # I

    .prologue
    const/4 v1, 0x1

    .line 243
    if-gez p1, :cond_0

    .line 244
    const/4 p1, 0x0

    .line 246
    :cond_0
    iget v0, p0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    if-eq p1, v0, :cond_2

    .line 247
    iput p1, p0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    .line 248
    if-eq p1, v1, :cond_1

    .line 249
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Label;->setLayoutedTextEnabled(Z)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 253
    :cond_2
    return-void
.end method

.method public setTextMaxLinesUnlimited()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Label;->setTextMaxLines(I)V

    .line 257
    return-void
.end method

.method public setTextMaxWidth(F)V
    .locals 4
    .param p1, "pixels"    # F

    .prologue
    .line 231
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 232
    .local v0, "intPixels":I
    iget v1, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    if-eq v0, v1, :cond_0

    .line 233
    iput v0, p0, Lcom/sonymobile/flix/components/Label;->mMaxWidth:I

    .line 234
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 236
    :cond_0
    return-void
.end method

.method public setTextShadow(FFFFI)V
    .locals 9
    .param p1, "blurRadius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "alpha"    # F
    .param p5, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 350
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 351
    .local v0, "alpha8":I
    iget-object v6, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    shl-int/lit8 v7, v0, 0x18

    const v8, 0xffffff

    and-int/2addr v8, p5

    or-int/2addr v7, v8

    invoke-virtual {v6, p1, p2, p3, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 352
    iget-object v6, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    if-nez v6, :cond_0

    .line 353
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    .line 355
    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v2, p1, v6

    .line 356
    .local v2, "halfRadius":F
    sub-float v6, v2, p2

    cmpl-float v6, v6, v1

    if-lez v6, :cond_2

    sub-float v3, v2, p2

    .line 357
    .local v3, "left":F
    :goto_0
    sub-float v6, v2, p3

    cmpl-float v6, v6, v1

    if-lez v6, :cond_3

    sub-float v5, v2, p3

    .line 358
    .local v5, "top":F
    :goto_1
    add-float v6, v2, p2

    cmpl-float v6, v6, v1

    if-lez v6, :cond_4

    add-float v4, v2, p2

    .line 359
    .local v4, "right":F
    :goto_2
    add-float v6, v2, p3

    cmpl-float v6, v6, v1

    if-lez v6, :cond_1

    add-float v1, v2, p3

    .line 360
    .local v1, "bottom":F
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/flix/components/Label;->mShadowPadding:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 362
    return-void

    .end local v1    # "bottom":F
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v5    # "top":F
    :cond_2
    move v3, v1

    .line 356
    goto :goto_0

    .restart local v3    # "left":F
    :cond_3
    move v5, v1

    .line 357
    goto :goto_1

    .restart local v5    # "top":F
    :cond_4
    move v4, v1

    .line 358
    goto :goto_2
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Label;->autoRefreshLayout()V

    .line 186
    :cond_0
    return-void
.end method

.method public setTextSizeDimen(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Label;->setTextSize(F)V

    .line 215
    return-void
.end method

.method public setTextSizeSp(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Label;->setTextSize(F)V

    .line 210
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Label;->setTextSize(F)V

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/Label;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
