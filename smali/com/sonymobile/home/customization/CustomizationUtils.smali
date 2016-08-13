.class public Lcom/sonymobile/home/customization/CustomizationUtils;
.super Ljava/lang/Object;
.source "CustomizationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/home/customization/CustomizationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/customization/CustomizationUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInternalFunctionItem(Ljava/lang/String;IIIILjava/lang/String;Landroid/content/Context;)Lcom/sonymobile/home/data/InternalFunctionItem;
    .locals 12
    .param p0, "pageViewName"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v10, 0x0

    .line 163
    .local v10, "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    :try_start_0
    new-instance v11, Lcom/sonymobile/home/data/InternalFunctionItem;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v11, v0, v1}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v10    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    .local v11, "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    :try_start_1
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 165
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v11, v2}, Lcom/sonymobile/home/data/InternalFunctionItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 166
    invoke-virtual {v11, p0}, Lcom/sonymobile/home/data/InternalFunctionItem;->setPageViewName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 171
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v10    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    :goto_0
    return-object v10

    .line 167
    :catch_0
    move-exception v9

    .line 168
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    sget-object v3, Lcom/sonymobile/home/customization/CustomizationUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v10    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v11    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    :catch_1
    move-exception v9

    move-object v10, v11

    .end local v11    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v10    # "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    goto :goto_1
.end method

.method public static createShortcutImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "iconFilename"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/etc/customization/content/com/sonyericsson/home/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 73
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->createPaddedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .end local v1    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public static createShortcutItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/data/ShortcutItem;
    .locals 10
    .param p0, "pageViewName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 89
    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    move-object v9, v8

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/home/customization/CustomizationUtils;->createShortcutItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/data/ShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/data/ShortcutItem;
    .locals 15
    .param p0, "pageViewName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iconPackageName"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "position"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "iconResourceName"    # Ljava/lang/String;
    .param p9, "iconFilename"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v12, 0x0

    .line 115
    .local v12, "item":Lcom/sonymobile/home/data/ShortcutItem;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 116
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 119
    .local v10, "image":Landroid/graphics/Bitmap;
    if-nez v14, :cond_0

    .line 121
    move-object/from16 v14, p3

    .line 125
    :cond_0
    new-instance v13, Lcom/sonymobile/home/data/ShortcutItem;

    move-object/from16 v0, p1

    invoke-direct {v13, v14, v0, v11}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .end local v12    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    .local v13, "item":Lcom/sonymobile/home/data/ShortcutItem;
    :try_start_1
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 127
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v13, v2}, Lcom/sonymobile/home/data/ShortcutItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 128
    invoke-virtual {v13, p0}, Lcom/sonymobile/home/data/ShortcutItem;->setPageViewName(Ljava/lang/String;)V

    .line 129
    if-eqz p9, :cond_1

    .line 130
    invoke-static/range {p9 .. p9}, Lcom/sonymobile/home/customization/CustomizationUtils;->createShortcutImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v10, v3, v4}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v12, v13

    .line 139
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v10    # "image":Landroid/graphics/Bitmap;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v14    # "packageName":Ljava/lang/String;
    .restart local v12    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    :goto_1
    return-object v12

    .line 133
    .end local v12    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v10    # "image":Landroid/graphics/Bitmap;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v13, v0, v1}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :catch_0
    move-exception v9

    move-object v12, v13

    .line 136
    .end local v10    # "image":Landroid/graphics/Bitmap;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v14    # "packageName":Ljava/lang/String;
    .local v9, "e":Ljava/net/URISyntaxException;
    .restart local v12    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    :goto_2
    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v9    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private static getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "categories"    # [Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_1

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 185
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 184
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "categories"    # [Ljava/lang/String;
    .param p1, "categoryNames"    # [Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p2}, Lcom/sonymobile/home/customization/CustomizationUtils;->getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, "index":I
    aget-object v1, p1, v0

    return-object v1
.end method

.method public static getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    :cond_0
    return-object p0
.end method
