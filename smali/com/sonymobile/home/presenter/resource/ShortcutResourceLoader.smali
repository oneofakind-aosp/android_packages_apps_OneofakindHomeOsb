.class public Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;
.super Ljava/lang/Object;
.source "ShortcutResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceLoader;


# instance fields
.field private final mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIconSizeLock:Ljava/lang/Object;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/badge/BadgeManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p3, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mContext:Landroid/content/Context;

    .line 63
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    .line 64
    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSize:I

    .line 65
    iget v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSize:I

    invoke-static {v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconDpi:I

    .line 66
    iget v1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSize:I

    .line 67
    .local v1, "iconSize":I
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconDpi:I

    .line 68
    .local v0, "iconDpi":I
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 69
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 70
    new-instance v2, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader$1;

    invoke-direct {v2, p0, p2}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader$1;-><init>(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 80
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->loadDefaultIcons(II)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconDpi:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconDpi:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->loadDefaultIcons(II)V

    return-void
.end method

.method private getBadge(Lcom/sonymobile/home/data/ActivityItem;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeString(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Landroid/content/Context;Lcom/sonymobile/home/data/ShortcutItem;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/data/ShortcutItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 183
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings;->getIconPack()Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v9

    .line 184
    .local v9, "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    if-eqz v9, :cond_4

    const/4 v14, 0x1

    .line 187
    .local v14, "isIconPackActive":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconSize:I

    .line 189
    .local v2, "iconSize":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mIconDpi:I

    .line 190
    .local v8, "iconDpi":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-nez v7, :cond_7

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageResourceName()Ljava/lang/String;

    move-result-object v15

    .line 196
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/data/ShortcutItem;->getIconResourceName()Ljava/lang/String;

    move-result-object v12

    .line 198
    .local v12, "iconResName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 199
    .local v17, "usesIconFromIconPack":Z
    const/16 v16, 0x0

    .line 200
    .local v16, "res":Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 203
    .local v13, "id":I
    if-eqz v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/sonymobile/home/iconpacks/IconPack;->getIconResourceName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v11

    .line 205
    .local v11, "iconRes":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 207
    invoke-virtual {v9}, Lcom/sonymobile/home/iconpacks/IconPack;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 208
    .local v10, "iconPackResources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v11, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 209
    if-eqz v13, :cond_0

    .line 211
    move-object v12, v11

    .line 212
    invoke-virtual {v9}, Lcom/sonymobile/home/iconpacks/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 213
    const/16 v17, 0x1

    .line 214
    move-object/from16 v16, v10

    .line 219
    .end local v10    # "iconPackResources":Landroid/content/res/Resources;
    .end local v11    # "iconRes":Ljava/lang/String;
    :cond_0
    if-eqz v15, :cond_3

    if-eqz v12, :cond_3

    .line 220
    if-nez v16, :cond_1

    .line 222
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 227
    :cond_1
    :goto_1
    if-eqz v16, :cond_3

    .line 228
    if-nez v13, :cond_2

    .line 229
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 232
    :cond_2
    if-eqz v13, :cond_5

    .line 233
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v8, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 239
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-nez v17, :cond_6

    if-eqz v14, :cond_6

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v9, v4, v2, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 255
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "iconResName":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "usesIconFromIconPack":Z
    :cond_3
    :goto_3
    return-object v7

    .line 184
    .end local v2    # "iconSize":I
    .end local v8    # "iconDpi":I
    .end local v14    # "isIconPackActive":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 190
    .restart local v14    # "isIconPackActive":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 236
    .restart local v2    # "iconSize":I
    .restart local v8    # "iconDpi":I
    .restart local v12    # "iconResName":Ljava/lang/String;
    .restart local v13    # "id":I
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "usesIconFromIconPack":Z
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v15, v8}, Lcom/sonymobile/home/bitmap/IconUtilities;->loadIconForApplication(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 243
    :cond_6
    if-eqz v4, :cond_3

    .line 245
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move v3, v2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 250
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "iconResName":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "usesIconFromIconPack":Z
    :cond_7
    if-eqz v14, :cond_3

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v9, v7, v2, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 223
    .restart local v12    # "iconResName":Ljava/lang/String;
    .restart local v13    # "id":I
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "usesIconFromIconPack":Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getLabel(Lcom/sonymobile/home/data/ShortcutItem;)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    const/4 v2, -0x1

    .line 265
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 270
    .local v0, "index":I
    :goto_0
    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .end local v0    # "index":I
    :cond_0
    :goto_1
    return-object v1

    :cond_1
    move v0, v2

    .line 268
    goto :goto_0

    .line 270
    .restart local v0    # "index":I
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private loadDefaultIcons(II)V
    .locals 7
    .param p1, "iconDpi"    # I
    .param p2, "iconSize"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 87
    .local v6, "resources":Landroid/content/res/Resources;
    const v0, 0x7f020069

    const/4 v1, 0x0

    invoke-virtual {v6, v0, p1, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 89
    .local v3, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p2

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getDefaultAppIcon(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method


# virtual methods
.method public deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 132
    move-object v2, p2

    check-cast v2, Lcom/sonymobile/home/data/ShortcutItem;

    .line 133
    .local v2, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->getLabel(Lcom/sonymobile/home/data/ShortcutItem;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "label":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-object v3
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f0f0038

    return v0
.end method

.method public getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "preLoader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 101
    move-object v5, p2

    check-cast v5, Lcom/sonymobile/home/data/ShortcutItem;

    .line 102
    .local v5, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-direct {p0, v5}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->getLabel(Lcom/sonymobile/home/data/ShortcutItem;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "label":Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->getBitmap(Landroid/content/Context;Lcom/sonymobile/home/data/ShortcutItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 105
    .local v3, "isDefaultResource":Z
    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 107
    const/4 v3, 0x1

    .line 110
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "badge":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .line 112
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->getBadge(Lcom/sonymobile/home/data/ActivityItem;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_1
    new-instance v6, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    invoke-direct {v6, v4, v2, v3, v1}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-object v6
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 97
    return-void
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 1
    .param p1, "forceRelease"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 1
    .param p1, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 166
    check-cast p1, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    .end local p1    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "currentIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Lcom/sonymobile/home/bitmap/IconUtilities;->convertBitmapToGrayscale(Landroid/graphics/Bitmap;)V

    .line 170
    :cond_0
    return-void
.end method

.method public updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 121
    move-object v1, p2

    check-cast v1, Lcom/sonymobile/home/data/ShortcutItem;

    .line 122
    .local v1, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-static {v1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .line 123
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    instance-of v2, p3, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    move-object v2, p3

    .line 124
    check-cast v2, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/resource/ShortcutResourceLoader;->getBadge(Lcom/sonymobile/home/data/ActivityItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->setBadgeLabel(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-object p3
.end method
