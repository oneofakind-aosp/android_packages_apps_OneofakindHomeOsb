.class public Lcom/sonymobile/home/util/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static INSTANCE:Lcom/sonymobile/home/util/HolographicOutlineHelper;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field public final mMaxOuterBlurRadius:I

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public final mMinOuterBlurRadius:I

.field private final mThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v0, "scale":F
    mul-float v1, v0, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMinOuterBlurRadius:I

    .line 69
    mul-float v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMaxOuterBlurRadius:I

    .line 71
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 72
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v7

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 73
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 74
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 75
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v7

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 76
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 77
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 79
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 80
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 82
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    iget-object v1, p0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/sonymobile/home/util/HolographicOutlineHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->INSTANCE:Lcom/sonymobile/home/util/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/util/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->INSTANCE:Lcom/sonymobile/home/util/HolographicOutlineHelper;

    .line 92
    :cond_0
    sget-object v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->INSTANCE:Lcom/sonymobile/home/util/HolographicOutlineHelper;

    return-object v0
.end method


# virtual methods
.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "thickness"    # I

    .prologue
    .line 122
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/util/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    .line 124
    return-void
.end method

.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V
    .locals 21
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z
    .param p6, "thickness"    # I

    .prologue
    .line 131
    if-eqz p5, :cond_2

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 133
    .local v3, "srcBuffer":[I
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 135
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v2, v3

    if-ge v14, v2, :cond_1

    .line 136
    aget v2, v3, v14

    ushr-int/lit8 v10, v2, 0x18

    .line 138
    .local v10, "alpha":I
    const/16 v2, 0x32

    if-ge v10, v2, :cond_0

    .line 139
    const/4 v2, 0x0

    aput v2, v3, v14

    .line 135
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 141
    :cond_0
    const/4 v2, -0x1

    aput v2, v3, v14

    goto :goto_1

    .line 144
    .end local v10    # "alpha":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 147
    .end local v3    # "srcBuffer":[I
    .end local v14    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 151
    .local v13, "glowShape":Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_0

    .line 162
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid blur thickness"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    move-object/from16 v16, v0

    .line 164
    .local v16, "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 165
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 166
    .local v17, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 167
    .local v20, "thickOuterBlur":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 173
    :goto_3
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 174
    .local v12, "brightOutlineOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 177
    .local v11, "brightOutline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    const/high16 v2, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    packed-switch p6, :pswitch_data_1

    .line 191
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid blur thickness"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v11    # "brightOutline":Landroid/graphics/Bitmap;
    .end local v12    # "brightOutlineOffset":[I
    .end local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v17    # "outerBlurOffset":[I
    .end local v20    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    move-object/from16 v16, v0

    .line 157
    .restart local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_2

    .line 159
    .end local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    move-object/from16 v16, v0

    .line 160
    .restart local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_2

    .line 170
    .restart local v17    # "outerBlurOffset":[I
    .restart local v20    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_3

    .line 182
    .restart local v11    # "brightOutline":Landroid/graphics/Bitmap;
    .restart local v12    # "brightOutlineOffset":[I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 193
    .local v15, "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 194
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 195
    .local v19, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 198
    .local v18, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    const/4 v2, 0x0

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v7, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v7, v2

    const/4 v2, 0x1

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    const/4 v2, 0x0

    aget v2, v19, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    const/4 v2, 0x0

    aget v2, v17, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    return-void

    .line 185
    .end local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v18    # "thickInnerBlur":Landroid/graphics/Bitmap;
    .end local v19    # "thickInnerBlurOffset":[I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 186
    .restart local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_4

    .line 188
    .end local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/util/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 189
    .restart local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_4

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 246
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/util/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 247
    return-void
.end method
