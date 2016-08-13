.class public Lcom/sonymobile/home/presenter/resource/FolderResource;
.super Ljava/lang/Object;
.source "FolderResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private mBadgeLabel:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContentDescription:Ljava/lang/String;

.field private final mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

.field private mFolderItemBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mHasGeneratedIcon:Z

.field private final mIsDefaultResource:Z

.field private final mLabel:Ljava/lang/String;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBadgeLabel:Ljava/lang/String;

    .line 55
    iput-boolean v2, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mHasGeneratedIcon:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItems:Ljava/util/List;

    .line 100
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mLabel:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 102
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mContentDescription:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-boolean v3, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mIsDefaultResource:Z

    .line 105
    invoke-static {p1, p4}, Lcom/sonymobile/home/util/FolderIconUtils;->getInstance(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/util/FolderIconUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p5, "badge"    # Ljava/lang/String;
    .param p6, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/settings/UserSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "folderItemBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p4, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBadgeLabel:Ljava/lang/String;

    .line 55
    iput-boolean v2, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mHasGeneratedIcon:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItems:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mLabel:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 78
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mContentDescription:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBadgeLabel:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItemBitmaps:Ljava/util/List;

    .line 81
    invoke-static {p1, p6}, Lcom/sonymobile/home/util/FolderIconUtils;->getInstance(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/util/FolderIconUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    .line 82
    if-eqz p4, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItems:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    invoke-virtual {v0}, Lcom/sonymobile/home/util/FolderIconUtils;->getDefaultFolderBackgroundCopy()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    iput-boolean v2, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mIsDefaultResource:Z

    .line 88
    return-void
.end method


# virtual methods
.method public getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBadgeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 147
    iget-boolean v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mHasGeneratedIcon:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItemBitmaps:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItemBitmaps:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/util/FolderIconUtils;->generateFolderIcon(Lcom/sonymobile/home/settings/UserSettings;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, "generatedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 150
    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 152
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mHasGeneratedIcon:Z

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItemBitmaps:Ljava/util/List;

    .line 156
    .end local v0    # "generatedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mFolderItems:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mIsDefaultResource:Z

    return v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0
    .param p1, "badgeLabel"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/FolderResource;->mBadgeLabel:Ljava/lang/String;

    .line 134
    return-void
.end method
