.class public Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;
.super Ljava/lang/Object;
.source "FolderResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderDefaultIcon:Landroid/graphics/Bitmap;

.field private final mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 44
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->loadDefaultIcon()V

    .line 48
    new-instance v0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader$1;-><init>(Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p3, v0}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->loadDefaultIcon()V

    return-void
.end method

.method private getBitmaps(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/ResourceItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, "miniatures":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_3

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ResourceItem;

    .line 155
    .local v1, "folderResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    const/4 v0, 0x0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v4, v1, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    if-eqz v4, :cond_2

    .line 158
    check-cast v1, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    .end local v1    # "folderResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/ActivityResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .restart local v1    # "folderResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_2
    instance-of v4, v1, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    if-eqz v4, :cond_1

    .line 160
    check-cast v1, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    .end local v1    # "folderResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 169
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v3
.end method

.method private loadDefaultIcon()V
    .locals 7

    .prologue
    .line 58
    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v6

    .line 60
    .local v6, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v3, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    .line 61
    .local v2, "iconSize":I
    const v1, 0x7f02015a

    invoke-virtual {v6, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "backgroundBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderDefaultIcon:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method


# virtual methods
.method public deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    const/4 v2, 0x1

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 139
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {p0, v2, v0, p2, p3}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z

    .line 140
    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderManager;->removeCachedFolder(Lcom/sonymobile/home/data/FolderItem;)V

    .line 142
    return v2
.end method

.method public getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 114
    new-instance v0, Lcom/sonymobile/home/presenter/resource/FolderResource;

    check-cast p2, Lcom/sonymobile/home/data/FolderItem;

    .end local p2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderDefaultIcon:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sonymobile/home/presenter/resource/FolderResource;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sonymobile/home/settings/UserSettings;)V

    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0f002e

    return v0
.end method

.method public getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "preLoader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 73
    move-object/from16 v9, p2

    check-cast v9, Lcom/sonymobile/home/data/FolderItem;

    .line 74
    .local v9, "folder":Lcom/sonymobile/home/data/FolderItem;
    const/4 v5, 0x0

    .line 75
    .local v5, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v2, v9}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItemMiniatures(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v6

    .line 76
    .local v6, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v11, "folderItemResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/ResourceItem;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 79
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/home/data/Item;

    .line 81
    .local v10, "folderItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/sonymobile/home/model/ResourcePreloader;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v13

    .line 82
    .local v13, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-eqz v13, :cond_0

    .line 83
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v10    # "folderItem":Lcom/sonymobile/home/data/Item;
    .end local v13    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->getBitmaps(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 90
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/sonymobile/home/folder/FolderManager;->getBadge(J)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "badgeLabel":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/home/presenter/resource/FolderResource;

    check-cast p2, Lcom/sonymobile/home/data/FolderItem;

    .end local p2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/presenter/resource/FolderResource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 69
    return-void
.end method

.method public releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
    .locals 5
    .param p1, "forceRelease"    # Z
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "preloader"    # Lcom/sonymobile/home/model/ResourcePreloader;

    .prologue
    .line 124
    move-object v0, p3

    check-cast v0, Lcom/sonymobile/home/presenter/resource/FolderResource;

    .line 125
    .local v0, "folderResource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/resource/FolderResource;->getFolderItems()Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 128
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 129
    .local v2, "itemInFolder":Lcom/sonymobile/home/data/Item;
    const/4 v4, 0x0

    invoke-interface {p4, v4, v2}, Lcom/sonymobile/home/model/ResourcePreloader;->releaseResource(ZLcom/sonymobile/home/data/Item;)V

    goto :goto_1

    .line 125
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemInFolder":Lcom/sonymobile/home/data/Item;
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 133
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 0
    .param p1, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 148
    return-void
.end method

.method public updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 98
    instance-of v2, p3, Lcom/sonymobile/home/presenter/resource/FolderResource;

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 99
    check-cast v1, Lcom/sonymobile/home/presenter/resource/FolderResource;

    .line 101
    .local v1, "resource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    invoke-interface {p3}, Lcom/sonymobile/home/model/ResourceItem;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/home/folder/FolderManager;->getBadge(J)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "badgeLabel":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/presenter/resource/FolderResource;->setBadge(Ljava/lang/String;)V

    .line 108
    .end local v0    # "badgeLabel":Ljava/lang/String;
    .end local v1    # "resource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    :cond_0
    return-object p3
.end method
