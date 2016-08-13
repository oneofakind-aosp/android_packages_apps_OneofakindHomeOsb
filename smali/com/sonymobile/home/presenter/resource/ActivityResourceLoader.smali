.class public Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;
.super Ljava/lang/Object;
.source "ActivityResourceLoader.java"

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

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p4, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mContext:Landroid/content/Context;

    .line 62
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    .line 63
    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p4, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I

    .line 64
    iget v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I

    invoke-static {v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I

    .line 65
    iget v1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I

    .line 66
    .local v1, "iconSize":I
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I

    .line 68
    .local v0, "iconDpi":I
    iput-object p4, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 69
    new-instance v2, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;

    invoke-direct {v2, p0, p4}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;-><init>(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 81
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p4, v2}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 83
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 84
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->loadDefaultIcons(II)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->loadDefaultIcons(II)V

    return-void
.end method

.method private getBadge(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/badge/BadgeManager;->getBadgeString(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 179
    move-object v6, p2

    check-cast v6, Lcom/sonymobile/home/data/ActivityItem;

    .line 180
    .local v6, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/model/PackageHandler;->getActivityResolveInfo(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    move-result-object v10

    .line 181
    .local v10, "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    const/4 v7, 0x0

    .line 185
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_0
    iget v1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I

    .line 187
    .local v1, "iconSize":I
    iget v8, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I

    .line 188
    .local v8, "iconDpi":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->getIconPack()Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v9

    .line 191
    .local v9, "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    if-eqz v9, :cond_2

    move v11, v4

    .line 192
    .local v11, "isIconPacksActive":Z
    :goto_0
    if-eqz v10, :cond_5

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 198
    .local v12, "usesIconFromIconPack":Z
    if-eqz v11, :cond_0

    .line 199
    invoke-virtual {v9, v6, v8}, Lcom/sonymobile/home/iconpacks/IconPack;->loadIcon(Lcom/sonymobile/home/data/ActivityItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 202
    :cond_0
    if-nez v3, :cond_3

    .line 204
    invoke-static {v10, v8}, Lcom/sonymobile/home/bitmap/IconUtilities;->loadIcon(Lcom/sonymobile/home/model/PackageHandler$AppInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 209
    :goto_1
    if-nez v12, :cond_4

    if-eqz v11, :cond_4

    .line 211
    invoke-virtual {v9, v3, v1, v4}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 232
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "usesIconFromIconPack":Z
    :cond_1
    :goto_2
    return-object v7

    .line 188
    .end local v1    # "iconSize":I
    .end local v8    # "iconDpi":I
    .end local v9    # "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    .end local v11    # "isIconPacksActive":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v1    # "iconSize":I
    .restart local v8    # "iconDpi":I
    .restart local v9    # "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    :cond_2
    move v11, v5

    .line 191
    goto :goto_0

    .line 206
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "isIconPacksActive":Z
    .restart local v12    # "usesIconFromIconPack":Z
    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p1

    move v2, v1

    move v5, v4

    .line 214
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    .line 216
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "usesIconFromIconPack":Z
    :cond_5
    const-string v0, "com.android.stk"

    invoke-virtual {v6}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "com.android.stk"

    invoke-static {p1, v0, v8}, Lcom/sonymobile/home/bitmap/IconUtilities;->loadIconForApplication(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 221
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 222
    if-eqz v11, :cond_6

    .line 224
    invoke-virtual {v9, v3, v1, v4}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    :cond_6
    move-object v0, p1

    move v2, v1

    .line 227
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2
.end method

.method private getContentDescriptionFromLabel(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    const-string v0, ""

    .line 307
    .local v0, "contentDescription":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 297
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 298
    .local v2, "mainUser":Landroid/os/UserHandle;
    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 299
    .local v1, "isBadgeNeeded":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 301
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p3, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0    # "contentDescription":Ljava/lang/String;
    goto :goto_0

    .line 298
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v1    # "isBadgeNeeded":Z
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 303
    .restart local v1    # "isBadgeNeeded":Z
    :cond_2
    move-object v0, p3

    .restart local v0    # "contentDescription":Ljava/lang/String;
    goto :goto_0
.end method

.method private getLabel(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 236
    move-object v0, p2

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 238
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    const-string v6, "com.android.stk"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonymobile/home/HomeApplication;->getStkManager()Lcom/sonymobile/home/stk/StkManager;

    move-result-object v4

    .line 242
    .local v4, "stkManager":Lcom/sonymobile/home/stk/StkManager;
    invoke-virtual {v4, v0}, Lcom/sonymobile/home/stk/StkManager;->getSetUpMenuTitle(Lcom/sonymobile/home/data/ActivityItem;)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "stkName":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 245
    invoke-static {v5}, Lcom/sonymobile/home/customization/StringUtil;->trimWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .end local v4    # "stkManager":Lcom/sonymobile/home/stk/StkManager;
    .end local v5    # "stkName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 250
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/model/PackageHandler;->getActivityResolveInfo(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    move-result-object v1

    .line 251
    .local v1, "info":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    if-eqz v1, :cond_2

    .line 252
    invoke-interface {v1}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 253
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    .line 254
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/customization/StringUtil;->trimWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 256
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_2
    const-string v6, "com.android.stk"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    iget-object v6, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    const-string v7, "com.android.stk"

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/model/PackageHandler;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "packageLabel":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 264
    invoke-static {v3}, Lcom/sonymobile/home/customization/StringUtil;->trimWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 269
    .end local v3    # "packageLabel":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "label":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 278
    const-string v2, ""

    goto :goto_0
.end method

.method private loadDefaultIcons(II)V
    .locals 7
    .param p1, "iconDpi"    # I
    .param p2, "iconSize"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 91
    .local v6, "res":Landroid/content/res/Resources;
    const v0, 0x7f020069

    const/4 v1, 0x0

    invoke-virtual {v6, v0, p1, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 93
    .local v3, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p2

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getDefaultAppIcon(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method


# virtual methods
.method public deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z

    move-result v0

    return v0
.end method

.method public getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 132
    new-instance v0, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/presenter/resource/ActivityResource;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f0f0004

    return v0
.end method

.method public getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "preLoader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, "isDefaultResource":Z
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->getLabel(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->getContentDescriptionFromLabel(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "contentDescription":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->getBitmap(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 109
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 110
    const/4 v5, 0x1

    .line 111
    iget-object v3, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->getBadge(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "badge":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/presenter/resource/ActivityResource;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 101
    return-void
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 7
    .param p1, "forceRelease"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    const/4 v3, 0x1

    .line 139
    if-eqz p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p2

    .line 144
    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 145
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v4, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivityInstalled(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    .line 146
    .local v1, "isActivityInstalled":Z
    iget-object v4, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/home/model/PackageHandler;->isPackageUnavailable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 149
    .local v2, "isActivityUnavailable":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 1
    .param p1, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 160
    check-cast p1, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    .end local p1    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/resource/ActivityResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, "currentIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/sonymobile/home/bitmap/IconUtilities;->convertBitmapToGrayscale(Landroid/graphics/Bitmap;)V

    .line 164
    :cond_0
    return-void
.end method

.method public updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 120
    instance-of v2, p3, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    if-eqz v2, :cond_0

    move-object v0, p3

    .line 121
    check-cast v0, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    .line 122
    .local v0, "activityResource":Lcom/sonymobile/home/presenter/resource/ActivityResource;
    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->getBadge(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "badge":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/resource/ActivityResource;->setBadge(Ljava/lang/String;)V

    .line 127
    .end local v0    # "activityResource":Lcom/sonymobile/home/presenter/resource/ActivityResource;
    .end local v1    # "badge":Ljava/lang/String;
    :cond_0
    return-object p3
.end method
