.class public Lcom/sonymobile/home/presenter/view/BadgeView;
.super Lcom/sonymobile/home/presenter/view/SimpleBadgeView;
.source "BadgeView.java"


# static fields
.field private static final COLORS:[I

.field private static final POSITIONS:[F

.field private static sBgDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFont:Landroid/graphics/Typeface;


# instance fields
.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private mText:Ljava/lang/String;

.field private final mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/home/presenter/view/BadgeView;->POSITIONS:[F

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonymobile/home/presenter/view/BadgeView;->COLORS:[I

    return-void

    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 34
    :array_1
    .array-data 4
        -0x1
        -0x1
        0xffffff
    .end array-data
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 66
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/sonymobile/home/presenter/view/BadgeView;->initSharedResources(Landroid/content/res/Resources;)V

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/sonymobile/home/presenter/view/BadgeView;->sFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f0e0038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f0b00ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v0, "paddingRect":Landroid/graphics/Rect;
    sget-object v2, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 76
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingLeft:I

    .line 77
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingRight:I

    .line 78
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextHeight:F

    .line 79
    return-void
.end method

.method private static initSharedResources(Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 82
    sget-object v1, Lcom/sonymobile/home/presenter/view/BadgeView;->sFont:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 83
    const v1, 0x7f080110

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fontName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/home/presenter/view/BadgeView;->sFont:Landroid/graphics/Typeface;

    .line 85
    const v1, 0x7f02006c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    .end local v0    # "fontName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public setBadgeText(Ljava/lang/String;)V
    .locals 20
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v3, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v14

    .line 101
    .local v14, "height":I
    sget-object v3, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v15

    .line 102
    .local v15, "minWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingRight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v16, v0

    .line 103
    .local v16, "width":I
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 104
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/home/presenter/view/BadgeView;->setSize(FF)V

    .line 105
    sget-object v3, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v17, v3, v4

    .line 109
    .local v17, "xPosText":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingLeft:I

    int-to-float v3, v3

    cmpg-float v3, v17, v3

    if-gez v3, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingLeft:I

    int-to-float v0, v3

    move/from16 v17, v0

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mPaddingRight:I

    sub-int v6, v16, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    sget-object v8, Lcom/sonymobile/home/presenter/view/BadgeView;->COLORS:[I

    sget-object v9, Lcom/sonymobile/home/presenter/view/BadgeView;->POSITIONS:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    :goto_1
    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v18, v3, v4

    .line 121
    .local v18, "yPosText":F
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 122
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .local v12, "canvas":Landroid/graphics/Canvas;
    sget-object v3, Lcom/sonymobile/home/presenter/view/BadgeView;->sBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/home/presenter/view/BadgeView;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "height":I
    .end local v15    # "minWidth":I
    .end local v16    # "width":I
    .end local v17    # "xPosText":F
    .end local v18    # "yPosText":F
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/presenter/view/BadgeView;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 115
    .restart local v14    # "height":I
    .restart local v15    # "minWidth":I
    .restart local v16    # "width":I
    .restart local v17    # "xPosText":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/presenter/view/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 126
    .restart local v18    # "yPosText":F
    :catch_0
    move-exception v13

    .line 127
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "Badge"

    const-string v4, "Failed to create bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 130
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "height":I
    .end local v15    # "minWidth":I
    .end local v16    # "width":I
    .end local v17    # "xPosText":F
    .end local v18    # "yPosText":F
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/presenter/view/BadgeView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
