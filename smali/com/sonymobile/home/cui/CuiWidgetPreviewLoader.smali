.class final Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;
.super Ljava/lang/Object;
.source "CuiWidgetPreviewLoader.java"


# direct methods
.method private static addBadgeIfNeeded(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "widgetItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .param p5, "mainUser"    # Landroid/os/UserHandle;
    .param p6, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 94
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {p5, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    .line 96
    .local v7, "isBadgeNeeded":Z
    :goto_0
    if-eqz v7, :cond_1

    if-eqz p6, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move v4, p2

    move v5, p3

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->createBadgedBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 100
    .local v6, "badgedBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 104
    .end local v6    # "badgedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 94
    .end local v7    # "isBadgeNeeded":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .restart local v7    # "isBadgeNeeded":Z
    :cond_1
    move-object v6, p6

    .line 104
    goto :goto_1
.end method

.method private static addBadgeToBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "unBadgedBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "badgeSize"    # I
    .param p5, "horizontalBadgeMargin"    # I
    .param p6, "verticalBadgeMargin"    # I

    .prologue
    .line 251
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 252
    .local v8, "bitmapWidth":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 254
    .local v7, "bitmapHeight":I
    add-int v10, p4, p5

    if-gt v10, v8, :cond_0

    add-int v10, p4, p6

    if-le v10, v7, :cond_1

    .line 281
    .end local p3    # "unBadgedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p3

    .line 261
    .restart local p3    # "unBadgedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 262
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    if-nez v10, :cond_2

    .line 263
    sub-int v10, v8, p4

    sub-int v1, v10, p5

    .line 267
    .local v1, "badgeLeft":I
    :goto_1
    sub-int v10, v7, p4

    sub-int v4, v10, p6

    .line 268
    .local v4, "badgeTop":I
    add-int v3, v1, p4

    .line 269
    .local v3, "badgeRight":I
    add-int v0, v4, p4

    .line 270
    .local v0, "badgeBottom":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .local v2, "badgeLocation":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v9, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    invoke-virtual {p1, v10, p2, v2, v11}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 275
    .local v6, "badgedDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v10, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_0

    move-object v5, v6

    .line 277
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 278
    .local v5, "badgedBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 265
    .end local v0    # "badgeBottom":I
    .end local v1    # "badgeLeft":I
    .end local v2    # "badgeLocation":Landroid/graphics/Rect;
    .end local v3    # "badgeRight":I
    .end local v4    # "badgeTop":I
    .end local v5    # "badgedBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "badgedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move/from16 v1, p5

    .restart local v1    # "badgeLeft":I
    goto :goto_1
.end method

.method private static createBadgedBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 200
    invoke-static {p0}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->getUserProfiledBadgeSize(Landroid/content/Context;)I

    move-result v3

    .line 201
    .local v3, "badgeSize":I
    invoke-static {p0}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->getUserProfiledBadgeMargin(Landroid/content/Context;)I

    move-result v4

    .line 202
    .local v4, "badgeMargin":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "paddingRect":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->createPaddedBitmapToMakeRoomForBadgeIfNeeded(Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 205
    .local v9, "paddedBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 206
    .local v13, "badgedBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 208
    add-int v0, v3, v4

    iget v1, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 209
    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v11, v4, v0

    .line 216
    .local v11, "horizontalBadgeMargin":I
    :goto_0
    add-int v0, v3, v4

    iget v1, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 217
    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int v12, v4, v0

    .local v12, "verticalBadgeMargin":I
    :goto_1
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move v10, v3

    .line 224
    invoke-static/range {v6 .. v12}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->addBadgeToBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 229
    .end local v11    # "horizontalBadgeMargin":I
    .end local v12    # "verticalBadgeMargin":I
    :cond_0
    return-object v13

    .line 210
    :cond_1
    add-int v0, v3, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 211
    move v11, v4

    .restart local v11    # "horizontalBadgeMargin":I
    goto :goto_0

    .line 213
    .end local v11    # "horizontalBadgeMargin":I
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "horizontalBadgeMargin":I
    goto :goto_0

    .line 218
    :cond_3
    add-int v0, v3, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 219
    move v12, v4

    .restart local v12    # "verticalBadgeMargin":I
    goto :goto_1

    .line 221
    .end local v12    # "verticalBadgeMargin":I
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "verticalBadgeMargin":I
    goto :goto_1
.end method

.method private static createDefaultIcon(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 174
    .local v6, "iconSize":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-static {v6}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "defaultAppIcon":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 177
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createPaddedBitmapToMakeRoomForBadgeIfNeeded(Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "unPaddedBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxBitmapWidth"    # I
    .param p2, "maxBitmapHeight"    # I
    .param p3, "badgeSize"    # I
    .param p4, "badgeMargin"    # I
    .param p5, "outPaddingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int v5, p3, p4

    if-ge v4, v5, :cond_0

    const/4 v1, 0x1

    .line 305
    .local v1, "isHorizontalPaddingNeeded":Z
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int v5, p3, p4

    if-ge v4, v5, :cond_1

    const/4 v2, 0x1

    .line 307
    .local v2, "isVerticalPaddingNeeded":Z
    :goto_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 331
    .end local p0    # "unPaddedBitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-object p0

    .line 304
    .end local v1    # "isHorizontalPaddingNeeded":Z
    .end local v2    # "isVerticalPaddingNeeded":Z
    .restart local p0    # "unPaddedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 305
    .restart local v1    # "isHorizontalPaddingNeeded":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 311
    .restart local v2    # "isVerticalPaddingNeeded":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 312
    add-int v4, p3, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 313
    .local v0, "horizontalPadding":I
    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v4, p1, :cond_5

    .line 314
    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 315
    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 321
    .end local v0    # "horizontalPadding":I
    :cond_3
    if-eqz v2, :cond_4

    .line 322
    add-int v4, p3, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 323
    .local v3, "verticalPadding":I
    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v4, p2, :cond_6

    .line 324
    iput v3, p5, Landroid/graphics/Rect;->top:I

    .line 325
    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    .line 331
    .end local v3    # "verticalPadding":I
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0, v4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createPaddedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 317
    .restart local v0    # "horizontalPadding":I
    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    .line 327
    .end local v0    # "horizontalPadding":I
    .restart local v3    # "verticalPadding":I
    :cond_6
    const/4 p0, 0x0

    goto :goto_2
.end method

.method private static getApplicationIconBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "widgetItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .param p5, "mainUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 136
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {p5, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 137
    .local v2, "isBadgeNeeded":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    :cond_0
    invoke-static {p0, p2, p3, v1}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 136
    .end local v2    # "isBadgeNeeded":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getPreviewBitmap(Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "widgetItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .param p4, "resId"    # I

    .prologue
    .line 112
    invoke-virtual {p3}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getIconPackageName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->getResourcesForApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 116
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {v3, p4, p1, p2}, Lcom/sonymobile/home/bitmap/IconUtilities;->decodeLargeBitmapResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 119
    const/4 v4, 0x0

    invoke-virtual {v3, p4, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    .local v2, "previewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 121
    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .end local v2    # "previewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private static getResourcesForApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "resources":Landroid/content/res/Resources;
    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 149
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 156
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find package named:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_1
    return-object v1

    .line 152
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getUserProfiledBadgeMargin(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getUserProfiledBadgeSize(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e851eb8    # 0.26f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static loadWidgetPreviewBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "widgetItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .param p5, "mainUser"    # Landroid/os/UserHandle;

    .prologue
    .line 64
    const/4 v6, 0x0

    .line 67
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p4}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getIconResourceId()I

    move-result v7

    .line 68
    .local v7, "resId":I
    if-nez v7, :cond_1

    .line 69
    invoke-static/range {p0 .. p5}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->getApplicationIconBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 80
    .end local v7    # "resId":I
    :goto_0
    if-nez v6, :cond_0

    .line 82
    invoke-static {p0, p2, p3}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->createDefaultIcon(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 85
    :cond_0
    return-object v6

    .line 72
    .restart local v7    # "resId":I
    :cond_1
    :try_start_1
    invoke-static {p1, p2, p3, p4, v7}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->getPreviewBitmap(Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;I)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 73
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->addBadgeIfNeeded(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 76
    .end local v7    # "resId":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
