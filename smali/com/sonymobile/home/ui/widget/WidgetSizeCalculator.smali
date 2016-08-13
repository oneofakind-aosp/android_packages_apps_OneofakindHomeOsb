.class public Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;
.super Ljava/lang/Object;
.source "WidgetSizeCalculator.java"


# instance fields
.field private final mHomeGridCellHeight:I

.field private final mHomeGridCellWidth:I

.field private final mHomeGridColumns:I

.field private final mHomeGridRows:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 1
    .param p1, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f0b001f

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellWidth:I

    .line 33
    const v0, 0x7f0b001e

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellHeight:I

    .line 34
    const v0, 0x7f0d0010

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridColumns:I

    .line 35
    const v0, 0x7f0d0011

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridRows:I

    .line 36
    return-void
.end method

.method private adjustSpan(IIIZ)I
    .locals 2
    .param p1, "spanInCells"    # I
    .param p2, "maxSpanInCells"    # I
    .param p3, "minResizeSpanInCells"    # I
    .param p4, "resizable"    # Z

    .prologue
    .line 171
    if-le p1, p2, :cond_2

    .line 174
    if-nez p4, :cond_0

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Span needed to be adjusted, but was not allowed to be adjusted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    if-le p3, p2, :cond_1

    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Could not resize widget since smallest resizable size is larger than the largest accepted size."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    move p1, p2

    .line 189
    :cond_2
    return p1
.end method

.method public static getMinimumSpan(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;I)[I
    .locals 8
    .param p0, "appWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getDefaultSpanXY(I)[I

    move-result-object v2

    .line 238
    .local v2, "minSpanXY":[I
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getResizeMode(I)I

    move-result v3

    .line 239
    .local v3, "resizeMode":I
    if-eqz v3, :cond_1

    move v0, v4

    .line 241
    .local v0, "isResizeable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMinimumSpanXY(I)[I

    move-result-object v1

    .line 243
    .local v1, "minResizeSpanXY":[I
    packed-switch v3, :pswitch_data_0

    .line 259
    .end local v1    # "minResizeSpanXY":[I
    :cond_0
    :goto_1
    return-object v2

    .end local v0    # "isResizeable":Z
    :cond_1
    move v0, v5

    .line 239
    goto :goto_0

    .line 245
    .restart local v0    # "isResizeable":Z
    .restart local v1    # "minResizeSpanXY":[I
    :pswitch_0
    aget v6, v2, v5

    aget v7, v1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v5

    .line 246
    aget v5, v2, v4

    aget v6, v1, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    goto :goto_1

    .line 249
    :pswitch_1
    aget v4, v2, v5

    aget v6, v1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v2, v5

    goto :goto_1

    .line 252
    :pswitch_2
    aget v5, v2, v4

    aget v6, v1, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    goto :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getWidgetDefaultPaddingFromResources(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 269
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 270
    .local v0, "cellPadding":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private resizeWidgetSpanIfNeeded([ILandroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "span"    # [I
    .param p2, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 134
    iget v8, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellHeight:I

    iget v9, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 135
    .local v5, "smallerSize":I
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v9, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v9, p3, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 136
    .local v3, "minResizeWidth":I
    int-to-double v8, v3

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 137
    .local v0, "minResizeCellSpanX":I
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    move v4, v6

    .line 141
    .local v4, "resizableDirection":Z
    :goto_0
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    if-lez v8, :cond_2

    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v9, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-ge v8, v9, :cond_2

    move v8, v6

    :goto_1
    or-int/2addr v4, v8

    .line 143
    aget v8, p1, v7

    iget v9, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridColumns:I

    invoke-direct {p0, v8, v9, v0, v4}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->adjustSpan(IIIZ)I

    move-result v8

    aput v8, p1, v7

    .line 146
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v9, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 147
    .local v2, "minResizeHeight":I
    int-to-double v8, v2

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 148
    .local v1, "minResizeCellSpanY":I
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    move v4, v6

    .line 152
    :goto_2
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    if-lez v8, :cond_0

    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v9, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-ge v8, v9, :cond_0

    move v7, v6

    :cond_0
    or-int/2addr v4, v7

    .line 154
    aget v7, p1, v6

    iget v8, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridRows:I

    invoke-direct {p0, v7, v8, v1, v4}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->adjustSpan(IIIZ)I

    move-result v7

    aput v7, p1, v6

    .line 156
    return-void

    .end local v1    # "minResizeCellSpanY":I
    .end local v2    # "minResizeHeight":I
    .end local v4    # "resizableDirection":Z
    :cond_1
    move v4, v7

    .line 137
    goto :goto_0

    .restart local v4    # "resizableDirection":Z
    :cond_2
    move v8, v7

    .line 141
    goto :goto_1

    .restart local v1    # "minResizeCellSpanY":I
    .restart local v2    # "minResizeHeight":I
    :cond_3
    move v4, v7

    .line 148
    goto :goto_2
.end method


# virtual methods
.method public getDefaultWidgetSpanXY(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I
    .locals 10
    .param p1, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 109
    iget v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int v4, v5, v6

    .line 110
    .local v4, "width":I
    iget v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v5, v6

    .line 112
    .local v0, "height":I
    iget v5, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellHeight:I

    iget v6, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    .local v1, "smallerSize":I
    int-to-double v6, v4

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 115
    .local v2, "spanCellsX":I
    int-to-double v6, v0

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 117
    .local v3, "spanCellsY":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    return-object v5
.end method

.method public final getDefaultWidgetSpanXY(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 95
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getDefaultWidgetSpanXY(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSpan(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I
    .locals 10
    .param p1, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 218
    iget v5, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellHeight:I

    iget v6, p0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->mHomeGridCellWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 219
    .local v4, "smallerSize":I
    iget v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int v3, v5, v6

    .line 220
    .local v3, "minResizeWidth":I
    int-to-double v6, v3

    int-to-double v8, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 221
    .local v0, "minResizeCellSpanX":I
    iget v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int v2, v5, v6

    .line 222
    .local v2, "minResizeHeight":I
    int-to-double v6, v2

    int-to-double v8, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 223
    .local v1, "minResizeCellSpanY":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    return-object v5
.end method

.method public getMinimumSpan(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 203
    invoke-static {p1}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getWidgetDefaultPaddingFromResources(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 204
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getMinimumSpan(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I

    move-result-object v1

    return-object v1
.end method

.method public final getResizedWidgetSpanXY(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I
    .locals 2
    .param p1, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getDefaultWidgetSpanXY(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I

    move-result-object v1

    .line 74
    .local v1, "span":[I
    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->resizeWidgetSpanIfNeeded([ILandroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getResizedWidgetSpanXY(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getWidgetDefaultPaddingFromResources(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 51
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getResizedWidgetSpanXY(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Rect;)[I

    move-result-object v1

    return-object v1
.end method
