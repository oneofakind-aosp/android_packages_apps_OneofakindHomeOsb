.class public Lcom/sonymobile/home/util/FolderIconUtils;
.super Ljava/lang/Object;
.source "FolderIconUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderBackground:Landroid/graphics/Bitmap;

.field private mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

.field private final mLock:Ljava/lang/Object;

.field private final mStackBackPaint:Landroid/graphics/Paint;

.field private final mStackFrontPaint:Landroid/graphics/Paint;

.field private final mStackMiddlePaint:Landroid/graphics/Paint;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/home/util/FolderIconUtils;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/util/FolderIconUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mLock:Ljava/lang/Object;

    .line 106
    iput-object v1, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    .line 117
    iput-object v1, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 133
    iput-object p2, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackBackPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackBackPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x66ffffff

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackMiddlePaint:Landroid/graphics/Paint;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackMiddlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackMiddlePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x33ffffff

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackFrontPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/util/FolderIconUtils;->updateIconData(Z)V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    new-instance v1, Lcom/sonymobile/home/util/FolderIconUtils$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/util/FolderIconUtils$1;-><init>(Lcom/sonymobile/home/util/FolderIconUtils;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 154
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonymobile/home/util/FolderIconUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private generateFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .param p3, "folderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "miniatures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/util/FolderIconUtils;->generateStackFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/util/FolderIconUtils;->generateGridFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private generateGridFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "miniatures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v7, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 249
    if-eqz p2, :cond_4

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 250
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 252
    .local v3, "nbrOfMiniatureIcons":I
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v1, "iconCanvas":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 256
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 257
    .local v4, "previewIcon":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 259
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingSide:I

    int-to-float v2, v6

    .line 263
    .local v2, "left":F
    :goto_1
    div-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingTop:I

    int-to-float v5, v6

    .line 266
    .local v5, "top":F
    :goto_2
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget-object v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->gridIconRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 267
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget-object v8, v8, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->gridIconRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 255
    .end local v2    # "left":F
    .end local v5    # "top":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingSide:I

    iget-object v8, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v8, v8, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniatureIconSize:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v8, v8, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingBetween:I

    add-int/2addr v6, v8

    int-to-float v2, v6

    goto :goto_1

    .line 263
    .restart local v2    # "left":F
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingTop:I

    iget-object v8, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v8, v8, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniatureIconSize:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v8, v8, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingBetween:I

    add-int/2addr v6, v8

    int-to-float v5, v6

    goto :goto_2

    .line 272
    .end local v2    # "left":F
    .end local v4    # "previewIcon":Landroid/graphics/Bitmap;
    :cond_3
    monitor-exit v7

    .line 275
    .end local v0    # "i":I
    .end local v1    # "iconCanvas":Landroid/graphics/Canvas;
    .end local v3    # "nbrOfMiniatureIcons":I
    :goto_3
    return-object p1

    :cond_4
    monitor-exit v7

    goto :goto_3

    .line 276
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private generateStackFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "miniatures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v5, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 281
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 284
    .local v2, "nbrOfMiniatureIcons":I
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    .local v1, "iconCanvas":Landroid/graphics/Canvas;
    add-int/lit8 v4, v2, -0x1

    const/4 v6, 0x3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 288
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 289
    .local v3, "previewIcon":Landroid/graphics/Bitmap;
    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 291
    :pswitch_0
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget-object v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconFrontRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    .end local v1    # "iconCanvas":Landroid/graphics/Canvas;
    .end local v2    # "nbrOfMiniatureIcons":I
    .end local v3    # "previewIcon":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 295
    .restart local v0    # "i":I
    .restart local v1    # "iconCanvas":Landroid/graphics/Canvas;
    .restart local v2    # "nbrOfMiniatureIcons":I
    .restart local v3    # "previewIcon":Landroid/graphics/Bitmap;
    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget-object v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconMiddleRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackMiddlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 299
    :pswitch_2
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget-object v6, v6, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconBackRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mStackBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 307
    .end local v3    # "previewIcon":Landroid/graphics/Bitmap;
    :cond_0
    monitor-exit v5

    .line 310
    .end local v0    # "i":I
    .end local v1    # "iconCanvas":Landroid/graphics/Canvas;
    .end local v2    # "nbrOfMiniatureIcons":I
    :goto_2
    return-object p1

    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/util/FolderIconUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 122
    sget-object v0, Lcom/sonymobile/home/util/FolderIconUtils;->sFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    if-nez v0, :cond_1

    .line 123
    const-class v1, Lcom/sonymobile/home/util/FolderIconUtils;

    monitor-enter v1

    .line 124
    :try_start_0
    sget-object v0, Lcom/sonymobile/home/util/FolderIconUtils;->sFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/sonymobile/home/util/FolderIconUtils;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/util/FolderIconUtils;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V

    sput-object v0, Lcom/sonymobile/home/util/FolderIconUtils;->sFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    sget-object v0, Lcom/sonymobile/home/util/FolderIconUtils;->sFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public generateFolderIcon(Lcom/sonymobile/home/settings/UserSettings;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/settings/UserSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, "folderItemBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    .line 215
    .local v3, "outputBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/sonymobile/home/settings/UserSettings;->getIconPack()Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v0

    .line 221
    .local v0, "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/home/iconpacks/IconPack;->supportsCustomFolderIcon()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    sget-object v5, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p1, v5}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    .line 223
    .local v1, "iconSize":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 224
    .local v2, "miniatureBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lcom/sonymobile/home/iconpacks/IconPack;->getFolderLayout()I

    move-result v5

    invoke-direct {p0, v2, p2, v5}, Lcom/sonymobile/home/util/FolderIconUtils;->generateFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 227
    const/4 v5, 0x1

    invoke-virtual {v0, v2, v1, v5}, Lcom/sonymobile/home/iconpacks/IconPack;->generateFolderIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .end local v0    # "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    .end local v1    # "iconSize":I
    .end local v2    # "miniatureBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    move-object v5, v3

    .line 235
    :goto_1
    return-object v5

    .line 229
    .restart local v0    # "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/util/FolderIconUtils;->getDefaultFolderBackgroundCopy()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/sonymobile/home/util/FolderIconUtils;->generateGridFolderIcon(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 231
    :catch_0
    move-exception v4

    .line 232
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/sonymobile/home/util/FolderIconUtils;->getDefaultFolderBackgroundCopy()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method public getDefaultFolderBackgroundCopy()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateIconData(Z)V
    .locals 9
    .param p1, "force"    # Z

    .prologue
    .line 162
    iget-object v8, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 168
    .local v2, "iconSize":I
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v7

    .line 172
    .local v7, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v0, 0x7f02015a

    invoke-static {v7, v0}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->getBitmapCopy(Lcom/sonymobile/home/resources/ResourceManager;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 175
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 180
    .end local v7    # "rm":Lcom/sonymobile/home/resources/ResourceManager;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget v0, v0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    iget-object v1, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 185
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    iget-object v1, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6, v1}, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils;->mFolderIconDisplayData:Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;

    .line 187
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_3
    monitor-exit v8

    .line 188
    return-void

    .line 187
    .end local v2    # "iconSize":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
