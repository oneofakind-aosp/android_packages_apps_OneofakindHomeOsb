.class public Lcom/sonymobile/home/iconpacks/IconPack;
.super Ljava/lang/Object;
.source "IconPack.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mFilteredPaint:Landroid/graphics/Paint;

.field private final mFolderBack:Ljava/lang/String;

.field private final mFolderBackBitmap:Landroid/graphics/Bitmap;

.field private final mFolderLayout:I

.field private final mFolderMask:Ljava/lang/String;

.field private final mFolderMaskBitmap:Landroid/graphics/Bitmap;

.field private final mFolderScale:F

.field private final mFolderUpon:Ljava/lang/String;

.field private final mFolderUponBitmap:Landroid/graphics/Bitmap;

.field private final mIconBackBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconCanvas:Landroid/graphics/Canvas;

.field private final mIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconMaskBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconMaskCanvas:Landroid/graphics/Canvas;

.field private final mIconMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconScale:F

.field private final mIconSize:I

.field private final mIconUponBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconUpons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private final mPackageName:Ljava/lang/String;

.field private final mRandom:Ljava/util/Random;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSupportsCustomFolderIcon:Z

.field private final mSupportsCustomIcons:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sonymobile/home/iconpacks/IconPack;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/iconpacks/IconPack;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p7, "iconScale"    # F
    .param p8, "iconSize"    # I
    .param p9, "folderBack"    # Ljava/lang/String;
    .param p10, "folderMask"    # Ljava/lang/String;
    .param p11, "folderUpon"    # Ljava/lang/String;
    .param p12, "folderIconScale"    # F
    .param p13, "folderLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;FI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FI)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    .local p4, "iconBacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "iconMasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "iconUpons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    .line 106
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskCanvas:Landroid/graphics/Canvas;

    .line 114
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mResources:Landroid/content/res/Resources;

    .line 115
    iput-object p2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mPackageName:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMap:Ljava/util/Map;

    .line 117
    iput-object p4, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBacks:Ljava/util/ArrayList;

    .line 118
    iput-object p5, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMasks:Ljava/util/ArrayList;

    .line 119
    iput-object p6, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUpons:Ljava/util/ArrayList;

    .line 120
    iput p7, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconScale:F

    .line 121
    iput-object p9, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderBack:Ljava/lang/String;

    .line 122
    iput-object p10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderMask:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderUpon:Ljava/lang/String;

    .line 124
    move/from16 v0, p12

    iput v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderScale:F

    .line 125
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mRandom:Ljava/util/Random;

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFilteredPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mMaskPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 130
    iput p8, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconSize:I

    .line 131
    invoke-static {p8}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v1

    .line 132
    .local v1, "density":I
    invoke-direct {p0, p4, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconsFromResources(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBackBitmaps:Ljava/util/List;

    .line 133
    invoke-direct {p0, p5, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconsFromResources(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskBitmaps:Ljava/util/List;

    .line 134
    invoke-direct {p0, p6, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconsFromResources(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUponBitmaps:Ljava/util/List;

    .line 135
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBackBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUponBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mSupportsCustomIcons:Z

    .line 138
    invoke-direct {p0, p9, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconFromResources(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderBackBitmap:Landroid/graphics/Bitmap;

    .line 139
    invoke-direct {p0, p10, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconFromResources(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderMaskBitmap:Landroid/graphics/Bitmap;

    .line 140
    move-object/from16 v0, p11

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconFromResources(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderUponBitmap:Landroid/graphics/Bitmap;

    .line 141
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderBackBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderUponBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mSupportsCustomFolderIcon:Z

    .line 144
    move/from16 v0, p13

    iput v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderLayout:I

    .line 145
    return-void

    .line 135
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static addAttributes(Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 312
    invoke-interface {p0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "attribute":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "attribute":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private declared-synchronized generateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "defaultIcon"    # Landroid/graphics/Bitmap;
    .param p2, "iconBack"    # Landroid/graphics/Bitmap;
    .param p3, "iconMask"    # Landroid/graphics/Bitmap;
    .param p4, "iconUpon"    # Landroid/graphics/Bitmap;
    .param p5, "iconSize"    # I
    .param p6, "iconScale"    # F
    .param p7, "padding"    # I

    .prologue
    .line 471
    monitor-enter p0

    mul-int/lit8 v10, p7, 0x2

    add-int v10, v10, p5

    mul-int/lit8 v11, p7, 0x2

    add-int v11, v11, p5

    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 473
    .local v6, "result":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 476
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, p5, p7

    add-int v11, p5, p7

    move/from16 v0, p7

    move/from16 v1, p7

    invoke-direct {v9, v0, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 478
    .local v9, "scaledIconRectWithPadding":Landroid/graphics/Rect;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 480
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFilteredPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, p1, v11, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 481
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_0
    monitor-exit p0

    return-object v6

    .line 486
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v4, v10

    .line 487
    .local v4, "defaultIconWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v2, v10

    .line 488
    .local v2, "defaultIconHeight":F
    cmpl-float v10, v4, v2

    if-lez v10, :cond_3

    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v10, v4

    .line 490
    .local v3, "defaultIconScale":F
    :goto_1
    new-instance v7, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    mul-float v12, v4, v3

    mul-float v12, v12, p6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    mul-float v13, v2, v3

    mul-float v13, v13, p6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 492
    .local v7, "scaledDefaultIconRectF":Landroid/graphics/RectF;
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 495
    if-eqz p2, :cond_1

    .line 497
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFilteredPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v11, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 500
    :cond_1
    if-eqz p3, :cond_4

    .line 502
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-static {v0, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 503
    .local v5, "maskedBitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFilteredPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, p1, v11, v7, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 507
    new-instance v8, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-direct {v8, v10, v11, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 508
    .local v8, "scaledIconRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v11, v8, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 510
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 513
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    move/from16 v0, p7

    int-to-float v11, v0

    move/from16 v0, p7

    int-to-float v12, v0

    const/4 v13, 0x0

    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 523
    .end local v5    # "maskedBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "scaledIconRect":Landroid/graphics/Rect;
    :goto_2
    if-eqz p4, :cond_2

    .line 524
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFilteredPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 527
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 471
    .end local v2    # "defaultIconHeight":F
    .end local v3    # "defaultIconScale":F
    .end local v4    # "defaultIconWidth":F
    .end local v6    # "result":Landroid/graphics/Bitmap;
    .end local v7    # "scaledDefaultIconRectF":Landroid/graphics/RectF;
    .end local v9    # "scaledIconRectWithPadding":Landroid/graphics/Rect;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 488
    .restart local v2    # "defaultIconHeight":F
    .restart local v4    # "defaultIconWidth":F
    .restart local v6    # "result":Landroid/graphics/Bitmap;
    .restart local v9    # "scaledIconRectWithPadding":Landroid/graphics/Rect;
    :cond_3
    move/from16 v0, p5

    int-to-float v10, v0

    div-float v3, v10, v2

    goto/16 :goto_1

    .line 516
    .restart local v3    # "defaultIconScale":F
    .restart local v7    # "scaledDefaultIconRectF":Landroid/graphics/RectF;
    :cond_4
    move/from16 v0, p7

    int-to-float v10, v0

    move/from16 v0, p7

    int-to-float v11, v0

    :try_start_2
    invoke-virtual {v7, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 517
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 518
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 519
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFilteredPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, p1, v11, v7, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 520
    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static getAvailableIcon(Ljava/util/List;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "wantedIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    .line 392
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 393
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 395
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonymobile/home/iconpacks/IconPack;
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconSize"    # I

    .prologue
    .line 158
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 159
    .local v27, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->getCurrentThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 161
    .local v19, "currentThemePackageName":Ljava/lang/String;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080113

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    .line 173
    .local v25, "iconPackFileName":Ljava/lang/String;
    :goto_0
    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    .local v3, "resources":Landroid/content/res/Resources;
    const-string v2, "xml"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    .line 175
    .local v31, "xmlId":I
    if-nez v31, :cond_1

    .line 176
    const/4 v2, 0x0

    .line 282
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v19    # "currentThemePackageName":Ljava/lang/String;
    .end local v25    # "iconPackFileName":Ljava/lang/String;
    .end local v27    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v31    # "xmlId":I
    :goto_1
    return-object v2

    .line 166
    .restart local v19    # "currentThemePackageName":Ljava/lang/String;
    .restart local v27    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v21

    .line 168
    .local v21, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 171
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v25, "appfilter"

    .restart local v25    # "iconPackFileName":Ljava/lang/String;
    goto :goto_0

    .line 178
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v31    # "xmlId":I
    :cond_1
    move/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    .line 180
    .local v28, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v5, "icons":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v6, "iconBacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, "iconMasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v8, "iconUpons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v9, 0x3f800000    # 1.0f

    .line 185
    .local v9, "iconScale":F
    const/4 v11, 0x0

    .line 186
    .local v11, "folderBack":Ljava/lang/String;
    const/4 v12, 0x0

    .line 187
    .local v12, "folderMask":Ljava/lang/String;
    const/4 v13, 0x0

    .line 188
    .local v13, "folderUpon":Ljava/lang/String;
    const/high16 v14, 0x3f800000    # 1.0f

    .line 189
    .local v14, "folderScale":F
    const/4 v15, 0x0

    .line 192
    .local v15, "folderLayout":I
    :cond_2
    :goto_2
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "eventType":I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_8

    .line 193
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 194
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 195
    .local v30, "tag":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_3
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 198
    :pswitch_0
    const/4 v2, 0x0

    :try_start_3
    const-string v4, "component"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 201
    .local v17, "componentAttribute":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v4, "drawable"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 202
    .local v20, "drawableAttribute":Ljava/lang/String;
    const-string v2, "{"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v4, "}"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 205
    .local v18, "componentSplit":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 206
    new-instance v16, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v4, 0x1

    aget-object v4, v18, v4

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v16, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":drawable/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 224
    .end local v16    # "component":Landroid/content/ComponentName;
    .end local v17    # "componentAttribute":Ljava/lang/String;
    .end local v18    # "componentSplit":[Ljava/lang/String;
    .end local v20    # "drawableAttribute":Ljava/lang/String;
    :catch_1
    move-exception v21

    .line 225
    .restart local v21    # "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/sonymobile/home/iconpacks/IconPack;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem Loading item: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x0

    const-string v32, "component"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 280
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    .end local v6    # "iconBacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "iconMasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "iconUpons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "iconScale":F
    .end local v11    # "folderBack":Ljava/lang/String;
    .end local v12    # "folderMask":Ljava/lang/String;
    .end local v13    # "folderUpon":Ljava/lang/String;
    .end local v14    # "folderScale":F
    .end local v15    # "folderLayout":I
    .end local v19    # "currentThemePackageName":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v22    # "eventType":I
    .end local v25    # "iconPackFileName":Ljava/lang/String;
    .end local v27    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v28    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "xmlId":I
    :catch_2
    move-exception v21

    .line 281
    .restart local v21    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/home/iconpacks/IconPack;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error loading icon pack: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 195
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    .restart local v6    # "iconBacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "iconMasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "iconUpons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "iconScale":F
    .restart local v11    # "folderBack":Ljava/lang/String;
    .restart local v12    # "folderMask":Ljava/lang/String;
    .restart local v13    # "folderUpon":Ljava/lang/String;
    .restart local v14    # "folderScale":F
    .restart local v15    # "folderLayout":I
    .restart local v19    # "currentThemePackageName":Ljava/lang/String;
    .restart local v22    # "eventType":I
    .restart local v25    # "iconPackFileName":Ljava/lang/String;
    .restart local v27    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v28    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "xmlId":I
    :sswitch_0
    :try_start_5
    const-string v4, "item"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v4, "iconback"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v4, "iconmask"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_3

    :sswitch_3
    const-string v4, "iconupon"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_3

    :sswitch_4
    const-string v4, "scale"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    goto/16 :goto_3

    :sswitch_5
    const-string v4, "folder"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x5

    goto/16 :goto_3

    .line 216
    .restart local v16    # "component":Landroid/content/ComponentName;
    .restart local v17    # "componentAttribute":Ljava/lang/String;
    .restart local v18    # "componentSplit":[Ljava/lang/String;
    .restart local v20    # "drawableAttribute":Ljava/lang/String;
    :cond_4
    :try_start_6
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v4, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 217
    .local v29, "resId":I
    if-nez v29, :cond_2

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":drawable/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 222
    .end local v16    # "component":Landroid/content/ComponentName;
    .end local v29    # "resId":I
    :cond_5
    sget-object v2, Lcom/sonymobile/home/iconpacks/IconPack;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem Loading item: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 230
    .end local v17    # "componentAttribute":Ljava/lang/String;
    .end local v18    # "componentSplit":[Ljava/lang/String;
    .end local v20    # "drawableAttribute":Ljava/lang/String;
    :pswitch_1
    :try_start_7
    move-object/from16 v0, v28

    invoke-static {v0, v6}, Lcom/sonymobile/home/iconpacks/IconPack;->addAttributes(Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 233
    :pswitch_2
    move-object/from16 v0, v28

    invoke-static {v0, v7}, Lcom/sonymobile/home/iconpacks/IconPack;->addAttributes(Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 236
    :pswitch_3
    move-object/from16 v0, v28

    invoke-static {v0, v8}, Lcom/sonymobile/home/iconpacks/IconPack;->addAttributes(Landroid/content/res/XmlResourceParser;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 239
    :pswitch_4
    const-string v2, "factor"

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    invoke-static {v0, v2, v4}, Lcom/sonymobile/home/iconpacks/IconPack;->parseFloatAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v26

    .line 241
    .local v26, "iconScaleFromXml":F
    const/4 v2, 0x0

    cmpl-float v2, v26, v2

    if-lez v2, :cond_2

    .line 242
    move/from16 v9, v26

    goto/16 :goto_2

    .line 246
    .end local v26    # "iconScaleFromXml":F
    :pswitch_5
    const/4 v2, 0x0

    const-string v4, "back"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    const/4 v2, 0x0

    const-string v4, "mask"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 248
    const/4 v2, 0x0

    const-string v4, "upon"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 249
    const-string v2, "scale"

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    invoke-static {v0, v2, v4}, Lcom/sonymobile/home/iconpacks/IconPack;->parseFloatAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v24

    .line 251
    .local v24, "folderScaleFromXml":F
    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-lez v2, :cond_6

    .line 252
    move/from16 v14, v24

    .line 254
    :cond_6
    const/4 v2, 0x0

    const-string v4, "layout"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 255
    .local v23, "folderLayoutFromXml":Ljava/lang/String;
    if-eqz v23, :cond_2

    .line 256
    const/4 v2, -0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_7
    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 263
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 256
    :sswitch_6
    const-string v4, "stack"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_7
    const-string v4, "grid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    .line 258
    :pswitch_6
    const/4 v15, 0x1

    .line 259
    goto/16 :goto_2

    .line 274
    .end local v23    # "folderLayoutFromXml":Ljava/lang/String;
    .end local v24    # "folderScaleFromXml":F
    .end local v30    # "tag":Ljava/lang/String;
    :cond_8
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v11, :cond_9

    if-nez v12, :cond_9

    if-nez v13, :cond_9

    .line 276
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 278
    :cond_9
    new-instance v2, Lcom/sonymobile/home/iconpacks/IconPack;

    move-object/from16 v4, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v15}, Lcom/sonymobile/home/iconpacks/IconPack;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x4ba2e392 -> :sswitch_5
        -0x2bf5a320 -> :sswitch_1
        -0x2bf0a11b -> :sswitch_2
        -0x2becc64d -> :sswitch_3
        0x317b13 -> :sswitch_0
        0x683094a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 256
    :sswitch_data_1
    .sparse-switch
        0x308b46 -> :sswitch_7
        0x68ac288 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method private loadDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "density"    # I

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 576
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 577
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 579
    :cond_0
    return-object v1
.end method

.method private loadIconFromResources(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "density"    # I

    .prologue
    .line 611
    if-eqz p1, :cond_0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":drawable/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sonymobile/home/iconpacks/IconPack;->loadDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 613
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 614
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 617
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadIconsFromResources(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 4
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "iconNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v2, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 592
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIconFromResources(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 593
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v2
.end method

.method private static parseFloatAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 3
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 288
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 292
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 291
    .restart local p2    # "defaultValue":F
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public generateFolderIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "miniatures"    # Landroid/graphics/Bitmap;
    .param p2, "iconSize"    # I
    .param p3, "padding"    # I

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mSupportsCustomFolderIcon:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderBackBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderUponBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderScale:F

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 412
    .end local p1    # "miniatures":Landroid/graphics/Bitmap;
    :cond_0
    return-object p1
.end method

.method public generateIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "defaultIcon"    # Landroid/graphics/Bitmap;
    .param p2, "iconSize"    # I
    .param p3, "padding"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBackBitmaps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v8, 0x0

    .line 443
    .local v8, "iconBacksSize":I
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskBitmaps:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v10, 0x0

    .line 444
    .local v10, "iconMasksSize":I
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUponBitmaps:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v11, 0x0

    .line 445
    .local v11, "iconUponsSize":I
    :goto_2
    invoke-static {v8, v10, v11}, Lcom/sonymobile/home/util/MathUtil;->max(III)I

    move-result v12

    .line 447
    .local v12, "maxSize":I
    if-nez v12, :cond_3

    const/4 v9, 0x0

    .line 448
    .local v9, "iconIndex":I
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBackBitmaps:Ljava/util/List;

    invoke-static {v0, v9}, Lcom/sonymobile/home/iconpacks/IconPack;->getAvailableIcon(Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 449
    .local v2, "iconBack":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskBitmaps:Ljava/util/List;

    invoke-static {v0, v9}, Lcom/sonymobile/home/iconpacks/IconPack;->getAvailableIcon(Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 450
    .local v3, "iconMask":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUponBitmaps:Ljava/util/List;

    invoke-static {v0, v9}, Lcom/sonymobile/home/iconpacks/IconPack;->getAvailableIcon(Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 451
    .local v4, "iconUpon":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconScale:F

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 442
    .end local v2    # "iconBack":Landroid/graphics/Bitmap;
    .end local v3    # "iconMask":Landroid/graphics/Bitmap;
    .end local v4    # "iconUpon":Landroid/graphics/Bitmap;
    .end local v8    # "iconBacksSize":I
    .end local v9    # "iconIndex":I
    .end local v10    # "iconMasksSize":I
    .end local v11    # "iconUponsSize":I
    .end local v12    # "maxSize":I
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBackBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 443
    .restart local v8    # "iconBacksSize":I
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMaskBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_1

    .line 444
    .restart local v10    # "iconMasksSize":I
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUponBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_2

    .line 447
    .restart local v11    # "iconUponsSize":I
    .restart local v12    # "maxSize":I
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    goto :goto_3
.end method

.method public generateIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "defaultIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconSize"    # I
    .param p3, "padding"    # I

    .prologue
    .line 425
    invoke-static {p1, p2, p2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    .local v0, "defaultIconBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 427
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getFolderLayout()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderLayout:I

    return v0
.end method

.method public getIconMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 365
    instance-of v3, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMap:Ljava/util/Map;

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v5

    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    :goto_0
    return-object v3

    .line 367
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    instance-of v3, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 368
    check-cast v2, Lcom/sonymobile/home/data/ShortcutItem;

    .line 369
    .local v2, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {v2}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 373
    iget-object v3, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMap:Ljava/util/Map;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 377
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public loadIcon(Lcom/sonymobile/home/data/ActivityItem;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;
    .param p2, "density"    # I

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPack;->getIconResourceName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "iconResourceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 561
    const/4 v1, 0x0

    .line 564
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/sonymobile/home/iconpacks/IconPack;->loadDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public resize(I)Lcom/sonymobile/home/iconpacks/IconPack;
    .locals 14
    .param p1, "iconSize"    # I

    .prologue
    .line 303
    iget v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconSize:I

    if-ne p1, v0, :cond_0

    .line 306
    .end local p0    # "this":Lcom/sonymobile/home/iconpacks/IconPack;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sonymobile/home/iconpacks/IconPack;
    :cond_0
    new-instance v0, Lcom/sonymobile/home/iconpacks/IconPack;

    iget-object v1, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconBacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconMasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconUpons:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mIconScale:F

    iget-object v9, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderBack:Ljava/lang/String;

    iget-object v10, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderMask:Ljava/lang/String;

    iget-object v11, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderUpon:Ljava/lang/String;

    iget v12, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderScale:F

    iget v13, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mFolderLayout:I

    move v8, p1

    invoke-direct/range {v0 .. v13}, Lcom/sonymobile/home/iconpacks/IconPack;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    move-object p0, v0

    goto :goto_0
.end method

.method public supportsCustomFolderIcon()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mSupportsCustomFolderIcon:Z

    return v0
.end method

.method public supportsCustomIcons()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/sonymobile/home/iconpacks/IconPack;->mSupportsCustomIcons:Z

    return v0
.end method
