.class public final Lcom/sonymobile/home/cui/WallpaperProvider;
.super Ljava/lang/Object;
.source "WallpaperProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/WallpaperProvider$SetWallpaperTask;
    }
.end annotation


# static fields
.field private static final IMAGE_EXTENSIONS:[Ljava/lang/String;

.field private static final THUMBNAIL_FILE_SUFFIX:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "jpeg"

    aput-object v1, v0, v4

    const-string v1, "png"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/cui/WallpaperProvider;->IMAGE_EXTENSIONS:[Ljava/lang/String;

    .line 62
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/cui/WallpaperProvider;->IMAGE_EXTENSIONS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/cui/WallpaperProvider;->IMAGE_EXTENSIONS:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/cui/WallpaperProvider;->IMAGE_EXTENSIONS:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/cui/WallpaperProvider;->THUMBNAIL_FILE_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonymobile/home/cui/WallpaperProvider;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private static getImageFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "thumbFileName"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "suffixIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_small"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 189
    :cond_0
    const-string v1, "WallpaperProvider"

    const-string v2, "The thumb file doesn\'t have the suffix :_small"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPrioritizedWallpaperPickers(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "wallpaperCategoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v2, "prioritizedWallpaperPickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    const-string v3, "com.sonyericsson.album"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    const-string v3, "com.sonyericsson.album"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .line 312
    .local v0, "albumPickerItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v0    # "albumPickerItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    :cond_0
    const-string v3, "com.android.wallpaper.livepicker"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    const-string v3, "com.android.wallpaper.livepicker"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .line 318
    .local v1, "livePickerItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v1    # "livePickerItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    :cond_1
    return-object v2
.end method

.method private getWallpaperItems(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "wallpaperPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v16, "staticWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v17, "wallpaperDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    const-string v3, "WallpaperProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v18, " is not a valid directory!"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-object v16

    .line 131
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, "fileList":[Ljava/lang/String;
    if-nez v11, :cond_2

    .line 133
    const-string v3, "WallpaperProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v18, " doesn\'t have any files"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    move-object v9, v11

    .local v9, "arr$":[Ljava/lang/String;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_0

    aget-object v12, v9, v13

    .line 138
    .local v12, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/home/cui/WallpaperProvider;->isThumbnailFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    invoke-static {v12}, Lcom/sonymobile/home/cui/WallpaperProvider;->getImageFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 140
    .local v14, "imageFileName":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 141
    const-string v3, "WallpaperProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to get image from "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v14    # "imageFileName":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 144
    .restart local v14    # "imageFileName":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "absolutePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "thumbPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "imagePath":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v3, v5, v0, v1}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 151
    .local v4, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    sget-object v3, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPER_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v2, "staticWallpaperItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getWallpaperPreview(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "previewPath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 354
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .local v0, "sourceBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 356
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/cui/WallpaperProvider;->scaleAndCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 358
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThumbnailFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "fileNameLowerCase":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/home/cui/WallpaperProvider;->THUMBNAIL_FILE_SUFFIX:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 170
    .local v4, "suffix":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    const/4 v5, 0x1

    .line 174
    .end local v4    # "suffix":Ljava/lang/String;
    :goto_1
    return v5

    .line 169
    .restart local v4    # "suffix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private loadStaticWallpapersSync()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v8, "staticWallpaperItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    iget-object v9, p0, Lcom/sonymobile/home/cui/WallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 93
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f080115

    :try_start_0
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "productPath":Ljava/lang/String;
    const v9, 0x7f080114

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "cdfPath":Ljava/lang/String;
    const v9, 0x7f0d003e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 96
    .local v1, "cdfPriority":I
    const v9, 0x7f0d003f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 98
    .local v5, "productPriority":I
    invoke-direct {p0, v0}, Lcom/sonymobile/home/cui/WallpaperProvider;->getWallpaperItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "cdfWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    invoke-direct {p0, v4}, Lcom/sonymobile/home/cui/WallpaperProvider;->getWallpaperItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 101
    .local v6, "productWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    if-le v1, v5, :cond_0

    .line 102
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    .end local v0    # "cdfPath":Ljava/lang/String;
    .end local v1    # "cdfPriority":I
    .end local v2    # "cdfWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    .end local v4    # "productPath":Ljava/lang/String;
    .end local v5    # "productPriority":I
    .end local v6    # "productWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    :goto_0
    return-object v8

    .line 105
    .restart local v0    # "cdfPath":Ljava/lang/String;
    .restart local v1    # "cdfPriority":I
    .restart local v2    # "cdfWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    .restart local v4    # "productPath":Ljava/lang/String;
    .restart local v5    # "productPriority":I
    .restart local v6    # "productWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    :cond_0
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "cdfPath":Ljava/lang/String;
    .end local v1    # "cdfPriority":I
    .end local v2    # "cdfWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    .end local v4    # "productPath":Ljava/lang/String;
    .end local v5    # "productPriority":I
    .end local v6    # "productWallpaperItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "WallpaperProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resource not found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static scaleAndCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 364
    .local v4, "originWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 367
    .local v3, "originHeight":I
    sub-int v11, v4, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 368
    .local v1, "diffX":I
    sub-int v11, v3, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 371
    .local v2, "diffY":I
    const/4 v5, 0x0

    .line 372
    .local v5, "scaleFactor":F
    if-ge v1, v2, :cond_0

    .line 374
    int-to-float v11, p1

    int-to-float v12, v4

    div-float v5, v11, v12

    .line 375
    move v8, p1

    .line 376
    .local v8, "scaledWidth":I
    int-to-float v11, v3

    mul-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 384
    .local v7, "scaledHeight":I
    :goto_0
    sub-int v11, v8, p1

    div-int/lit8 v9, v11, 0x2

    .line 385
    .local v9, "startX":I
    sub-int v11, v7, p2

    div-int/lit8 v10, v11, 0x2

    .line 387
    .local v10, "startY":I
    const/4 v11, 0x1

    invoke-static {p0, v8, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 389
    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v6, v9, v10, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    .local v0, "croppedBitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 379
    .end local v0    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scaledHeight":I
    .end local v8    # "scaledWidth":I
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    :cond_0
    int-to-float v11, p2

    int-to-float v12, v3

    div-float v5, v11, v12

    .line 380
    move v7, p2

    .line 381
    .restart local v7    # "scaledHeight":I
    int-to-float v11, v4

    mul-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11, p1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "scaledWidth":I
    goto :goto_0
.end method

.method public static startWallpaperPicker(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;Landroid/content/Context;)V
    .locals 6
    .param p0, "cuiGridWallpaperItem"    # Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, "pickWallpaper":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 334
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WallpaperProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAllWallpaperItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "allWallpaperItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v3, "wallpaperCategoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/cui/WallpaperProvider;->getAllWallpaperPickerItemsExceptXperia(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 241
    .local v1, "allWallpaperPickersExceptXperia":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    invoke-direct {p0, v3}, Lcom/sonymobile/home/cui/WallpaperProvider;->getPrioritizedWallpaperPickers(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "prioritizedWallpaperPickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 247
    invoke-direct {p0}, Lcom/sonymobile/home/cui/WallpaperProvider;->loadStaticWallpapersSync()Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "wallpapersPrioritizedByUX":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    return-object v0
.end method

.method public getAllWallpaperPickerItemsExceptXperia(Ljava/util/Map;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWallpaperItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "wallpaperCategoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v18, "wallpaperItemsPickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWallpaperItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/cui/WallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 269
    .local v17, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/cui/WallpaperProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 270
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v9, "filter":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v13, v9, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 272
    .local v16, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 273
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 274
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "com.sonyericsson.wallpaperpicker"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-virtual {v15, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 279
    .local v8, "charName":Ljava/lang/CharSequence;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "name":Ljava/lang/String;
    :goto_1
    iget-object v2, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 281
    .local v7, "activityName":Ljava/lang/String;
    const v2, 0x7f020054

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 282
    .local v11, "moreIcon":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v2, v12, v11, v5}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 284
    .local v3, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    new-instance v4, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v4, v14, v7}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v4, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    new-instance v1, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPERS_MORE_PICKER:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v1, "cuiGridWallpaperItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v1    # "cuiGridWallpaperItem":Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    .end local v3    # "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    .end local v4    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v7    # "activityName":Ljava/lang/String;
    .end local v11    # "moreIcon":Landroid/graphics/Bitmap;
    .end local v12    # "name":Ljava/lang/String;
    :cond_1
    const-string v12, ""

    goto :goto_1

    .line 291
    .end local v8    # "charName":Ljava/lang/CharSequence;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v18
.end method
