.class public Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;
.super Ljava/lang/Object;
.source "InternalFunctionResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIconSizeLock:Ljava/lang/Object;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mContext:Landroid/content/Context;

    .line 47
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    .line 48
    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    .line 49
    iget v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    invoke-static {v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconDpi:I

    .line 50
    iget v1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    .line 51
    .local v1, "iconSize":I
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconDpi:I

    .line 52
    .local v0, "iconDpi":I
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 53
    new-instance v2, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader$1;

    invoke-direct {v2, p0, p2}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader$1;-><init>(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 63
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->loadDefaultIcons(II)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconDpi:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconDpi:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->loadDefaultIcons(II)V

    return-void
.end method

.method private getBitmap(Landroid/content/Context;Lcom/sonymobile/home/data/InternalFunctionItem;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/InternalFunctionItem;

    .prologue
    const/4 v4, 0x0

    .line 169
    const/4 v6, 0x0

    .line 170
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/InternalFunctionItem;->getIconResourceId()I

    move-result v8

    .line 172
    .local v8, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 175
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 176
    :try_start_0
    iget v1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    .line 177
    .local v1, "iconSize":I
    iget v7, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconDpi:I

    .line 178
    .local v7, "iconDpi":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v8, :cond_1

    .line 181
    invoke-virtual {v9, v8, v7, v4}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 188
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v3, :cond_0

    .line 189
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 192
    :cond_0
    return-object v6

    .line 178
    .end local v1    # "iconSize":I
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "iconDpi":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 184
    .restart local v1    # "iconSize":I
    .restart local v7    # "iconDpi":I
    :cond_1
    const v0, 0x7f020087

    invoke-virtual {v9, v0, v7, v4}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private getLabel(Lcom/sonymobile/home/data/InternalFunctionItem;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/InternalFunctionItem;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/sonymobile/home/data/InternalFunctionItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadDefaultIcons(II)V
    .locals 7
    .param p1, "iconDpi"    # I
    .param p2, "iconSize"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 70
    .local v6, "resources":Landroid/content/res/Resources;
    const v0, 0x7f020069

    invoke-virtual {v6, v0, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 72
    .local v3, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p2

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 74
    return-void
.end method


# virtual methods
.method public deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f0f0030

    return v0
.end method

.method public getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "preLoader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 90
    move-object v3, p2

    check-cast v3, Lcom/sonymobile/home/data/InternalFunctionItem;

    .line 91
    .local v3, "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    invoke-direct {p0, v3}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->getLabel(Lcom/sonymobile/home/data/InternalFunctionItem;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "label":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->getBitmap(Landroid/content/Context;Lcom/sonymobile/home/data/InternalFunctionItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 94
    .local v4, "isDefaultResource":Z
    if-nez v0, :cond_0

    .line 97
    iget-object v7, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSizeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 98
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconSize:I

    .line 99
    .local v2, "iconSize":I
    iget v1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mIconDpi:I

    .line 100
    .local v1, "iconDpi":I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v6, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getDefaultAppIcon(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    const/4 v4, 0x1

    .line 105
    .end local v1    # "iconDpi":I
    .end local v2    # "iconSize":I
    :cond_0
    new-instance v6, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;

    invoke-direct {v6, v5, v0, v4}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-object v6

    .line 100
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 82
    return-void
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 1
    .param p1, "forceRelease"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 0
    .param p1, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 159
    return-void
.end method

.method public updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 114
    return-object p3
.end method
