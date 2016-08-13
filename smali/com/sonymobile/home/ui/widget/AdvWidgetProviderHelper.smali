.class public Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;
.super Ljava/lang/Object;
.source "AdvWidgetProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPortraitOnly:Z

.field private final mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 2
    .param p1, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mPortraitOnly:Z

    .line 32
    return-void
.end method

.method private getBooleanFromMetaData(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "metaData"    # Landroid/os/Bundle;
    .param p2, "packageResources"    # Landroid/content/res/Resources;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .prologue
    .line 254
    move v1, p4

    .line 255
    .local v1, "result":Z
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 256
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 257
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 258
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 259
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 260
    .local v0, "resourceId":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getCellSpan(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;ZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "widgetResources"    # Landroid/content/res/Resources;
    .param p3, "isDirectionHorizontal"    # Z
    .param p4, "version"    # F
    .param p5, "v5PortKey"    # Ljava/lang/String;
    .param p6, "v5LandKey"    # Ljava/lang/String;
    .param p7, "v3Key"    # Ljava/lang/String;
    .param p8, "defaultValue"    # I

    .prologue
    .line 190
    move/from16 v6, p8

    .line 191
    .local v6, "result":I
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 192
    .local v3, "metaData":Landroid/os/Bundle;
    const/high16 v8, 0x40a00000    # 5.0f

    cmpl-float v8, p4, v8

    if-ltz v8, :cond_3

    .line 193
    const/high16 v8, -0x40800000    # -1.0f

    move-object/from16 v0, p5

    invoke-direct {p0, v3, p2, v0, v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getDimenFromMetadata(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;F)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 196
    .local v5, "minPort":I
    iget-boolean v8, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mPortraitOnly:Z

    if-eqz v8, :cond_1

    .line 197
    move v4, v5

    .line 202
    .local v4, "minLand":I
    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 203
    if-eqz p3, :cond_2

    .line 204
    int-to-float v8, v5

    int-to-float v9, v4

    invoke-direct {p0, v8, v9}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinCellSpanWidth(FF)I

    move-result v6

    .line 230
    .end local v4    # "minLand":I
    .end local v5    # "minPort":I
    :cond_0
    :goto_1
    return v6

    .line 199
    .restart local v5    # "minPort":I
    :cond_1
    const/high16 v8, -0x40800000    # -1.0f

    move-object/from16 v0, p6

    invoke-direct {p0, v3, p2, v0, v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getDimenFromMetadata(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;F)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .restart local v4    # "minLand":I
    goto :goto_0

    .line 206
    :cond_2
    int-to-float v8, v5

    int-to-float v9, v4

    invoke-direct {p0, v8, v9}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinCellSpanHeight(FF)I

    move-result v6

    goto :goto_1

    .line 209
    .end local v4    # "minLand":I
    .end local v5    # "minPort":I
    :cond_3
    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v8, p4, v8

    if-ltz v8, :cond_0

    .line 212
    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 219
    .local v7, "value":I
    const/4 v8, 0x4

    if-le v7, v8, :cond_4

    .line 221
    :try_start_0
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_1

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v8, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resource not found for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private getDimenFromMetadata(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;F)F
    .locals 3
    .param p1, "metaData"    # Landroid/os/Bundle;
    .param p2, "packageResources"    # Landroid/content/res/Resources;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # F

    .prologue
    const/4 v2, -0x1

    .line 273
    move v1, p4

    .line 274
    .local v1, "result":F
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 275
    .local v0, "id":I
    if-eq v0, v2, :cond_0

    .line 277
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getMinCellSpan(FFFF)I
    .locals 2
    .param p1, "minValuePort"    # F
    .param p2, "minValueLand"    # F
    .param p3, "cellSizePort"    # F
    .param p4, "cellSizeLand"    # F

    .prologue
    .line 299
    div-float v0, p1, p3

    div-float v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getMinCellSpanHeight(FF)I
    .locals 3
    .param p1, "minHeightPort"    # F
    .param p2, "minHeightLand"    # F

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinCellSpan(FFFF)I

    move-result v0

    return v0
.end method

.method private getMinCellSpanWidth(FF)I
    .locals 3
    .param p1, "minWidthPort"    # F
    .param p2, "minWidthLand"    # F

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinCellSpan(FFFF)I

    move-result v0

    return v0
.end method

.method private getStringFromMetaData(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "metaData"    # Landroid/os/Bundle;
    .param p2, "packageResources"    # Landroid/content/res/Resources;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 235
    move-object v1, p4

    .line 236
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 238
    check-cast v1, Ljava/lang/String;

    .line 249
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 239
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 240
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, "resourceId":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isVersionSupported(F)Z
    .locals 1
    .param p0, "version"    # F

    .prologue
    .line 117
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIsScrollable(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 179
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 180
    .local v0, "metaData":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 183
    :goto_0
    return v1

    :cond_0
    const-string v2, "com.sonyericsson.advwidget.scrollable"

    invoke-direct {p0, v0, p2, v2, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getBooleanFromMetaData(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getMinResizeWidgetSpanX(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "widgetResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v4

    .line 76
    .local v4, "version":F
    const-string v5, "com.sonyericsson.advwidget.minresizewidthport"

    const-string v6, "com.sonyericsson.advwidget.minresizewidthland"

    const-string v7, "com.sonyericsson.advwidget.minresizewidth"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getCellSpan(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;ZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinResizeWidgetSpanY(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "widgetResources"    # Landroid/content/res/Resources;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v4

    .line 92
    .local v4, "version":F
    const/4 v3, 0x0

    const-string v5, "com.sonyericsson.advwidget.minresizeheightport"

    const-string v6, "com.sonyericsson.advwidget.minresizeheightland"

    const-string v7, "com.sonyericsson.advwidget.minresizeheight"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getCellSpan(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;ZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinWidgetSpanX(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "widgetResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v4

    .line 44
    .local v4, "version":F
    const-string v5, "com.sonyericsson.advwidget.minwidthport"

    const-string v6, "com.sonyericsson.advwidget.minwidthland"

    const-string v7, "com.sonyericsson.advwidget.defaultspanx"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getCellSpan(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;ZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinWidgetSpanY(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "widgetResources"    # Landroid/content/res/Resources;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v4

    .line 59
    .local v4, "version":F
    const/4 v3, 0x0

    const-string v5, "com.sonyericsson.advwidget.minheightport"

    const-string v6, "com.sonyericsson.advwidget.minheightland"

    const-string v7, "com.sonyericsson.advwidget.defaultspany"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getCellSpan(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;ZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I
    .locals 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageResources"    # Landroid/content/res/Resources;

    .prologue
    .line 131
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 132
    .local v0, "metaData":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 133
    const/4 v2, 0x0

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 135
    :cond_1
    const/4 v2, 0x0

    .line 137
    .local v2, "result":I
    const-string v3, "com.sonyericsson.advwidget.resizemode"

    const/4 v4, 0x0

    invoke-direct {p0, v0, p2, v3, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getStringFromMetaData(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "resizeMode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 141
    const-string v3, "horizontal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const/4 v2, 0x1

    .line 144
    :cond_2
    const-string v3, "vertical"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    or-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public getUseHardwareLayer(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 162
    .local v0, "metaData":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 165
    :goto_0
    return v1

    :cond_0
    const-string v2, "com.sonyericsson.advwidget.hardwarelayer"

    invoke-direct {p0, v0, p2, v2, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getBooleanFromMetaData(Landroid/os/Bundle;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getVersion(Landroid/content/pm/ActivityInfo;)F
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonyericsson.advwidget.frameworkversion"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method
