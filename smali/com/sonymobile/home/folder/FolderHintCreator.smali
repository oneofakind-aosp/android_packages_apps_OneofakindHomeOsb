.class public Lcom/sonymobile/home/folder/FolderHintCreator;
.super Ljava/lang/Object;
.source "FolderHintCreator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

.field private final mHintImage:Lcom/sonymobile/flix/components/Image;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 43
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mHintImage:Lcom/sonymobile/flix/components/Image;

    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonymobile/home/util/FolderIconUtils;->getInstance(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/util/FolderIconUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    .line 45
    return-void
.end method

.method private createHintBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "miniatureBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v1, "miniatureArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/home/util/FolderIconUtils;->generateFolderIcon(Lcom/sonymobile/home/settings/UserSettings;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "folderIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 78
    .end local v0    # "folderIcon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "folderIcon":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mFolderIconUtils:Lcom/sonymobile/home/util/FolderIconUtils;

    invoke-virtual {v2}, Lcom/sonymobile/home/util/FolderIconUtils;->getDefaultFolderBackgroundCopy()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createHint(Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/flix/components/Image;
    .locals 6
    .param p1, "overlappedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 54
    instance-of v3, p1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v3, :cond_1

    .line 55
    check-cast p1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .end local p1    # "overlappedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 56
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/folder/FolderHintCreator;->createHintBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    .local v1, "compositeBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mHintImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 60
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const/16 v3, 0x4000

    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mContext:Landroid/content/Context;

    const v5, 0x7f080050

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintCreator;->mHintImage:Lcom/sonymobile/flix/components/Image;

    .line 67
    .end local v0    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .end local v1    # "compositeBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .restart local p1    # "overlappedView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIconX(Lcom/sonymobile/home/ui/pageview/PageItemView;)F
    .locals 3
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "xPos":F
    instance-of v2, p1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 86
    .local v0, "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    check-cast p1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .end local p1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getX()F

    move-result v1

    .line 90
    .end local v0    # "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    :cond_0
    return v1
.end method

.method public getIconY(Lcom/sonymobile/home/ui/pageview/PageItemView;)F
    .locals 3
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "yPos":F
    instance-of v2, p1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 97
    .local v0, "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    check-cast p1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .end local p1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getY()F

    move-result v1

    .line 101
    .end local v0    # "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    :cond_0
    return v1
.end method
