.class public abstract Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;
.super Ljava/lang/Object;
.source "ItemViewCreatorBase.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;


# instance fields
.field private mAppTrayIconLabelMargin:F

.field private mAppTrayIconSize:I

.field private mAppTrayMaxTextSize:I

.field private mAppTrayTextColor:I

.field private mAppTrayTextLines:I

.field private mAppTrayTextShadowColor:I

.field private mAppTrayTextSize:I

.field private mDesktopIconLabelMargin:F

.field private mDesktopIconSize:I

.field private mDesktopMaxTextSize:I

.field private mDesktopTextColor:I

.field private mDesktopTextLines:I

.field private mDesktopTextShadowColor:I

.field private mDesktopTextSize:I

.field private mOpenFolderTextLines:I

.field protected final mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field private mStageIconLabelMargin:F

.field private mStageIconSize:I

.field private mStageMaxTextSize:I

.field private mStageMirrorSize:I

.field private mStageTextColor:I

.field private mStageTextLines:I

.field private mStageTextShadowColor:I

.field private mStageTextSize:I

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 64
    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 65
    new-instance v0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;-><init>(Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p2, v0}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 80
    return-void
.end method

.method protected static isUnavailable(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/PackageHandler;)Z
    .locals 3
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 311
    .local v0, "isUnavailable":Z
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/home/model/PackageHandler;->isPackageUnavailable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 314
    :cond_0
    return v0
.end method

.method private static setShadowColor(Lcom/sonymobile/home/presenter/view/IconLabelView;I)V
    .locals 2
    .param p0, "iconLabelView"    # Lcom/sonymobile/home/presenter/view/IconLabelView;
    .param p1, "shadowColor"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextShadowLayer(FFFI)V

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method protected getItemViewTextLines(Ljava/lang/String;)I
    .locals 3
    .param p1, "pageView"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 171
    const/4 v0, 0x1

    .line 172
    .local v0, "numberOfLines":I
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    const-string v2, "apptray"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextLines:I

    goto :goto_0

    .line 178
    :cond_2
    const-string v2, "desktop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "desktop_automatic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    :cond_3
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextLines:I

    goto :goto_0

    .line 181
    :cond_4
    const-string v2, "stage"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "stage_dynamic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    :cond_5
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextLines:I

    goto :goto_0

    .line 184
    :cond_6
    const-string v2, "folder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mOpenFolderTextLines:I

    goto :goto_0
.end method

.method protected getStageMirrorSize()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageMirrorSize:I

    return v0
.end method

.method protected hasIconMirrorEffect(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected includedLabel(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->shouldShowLabelsInStage()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "stage"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "stage_dynamic"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 85
    return-void
.end method

.method protected setupMirroredIcon(Lcom/sonymobile/home/presenter/view/IconLabelView;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "itemView"    # Lcom/sonymobile/home/presenter/view/IconLabelView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mirrorSize"    # I

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    .line 212
    .local v3, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 215
    .local v2, "originalWidth":F
    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v1, 0x1

    .line 216
    .local v1, "isLandscape":Z
    :goto_0
    invoke-static {v0, p2, p3, v1}, Lcom/sonymobile/home/bitmap/IconUtilities;->createMirrorBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 218
    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    int-to-float v5, p3

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setIconOffset(FF)V

    .line 226
    :goto_1
    return-object p2

    .line 215
    .end local v1    # "isLandscape":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 221
    .restart local v1    # "isLandscape":Z
    :cond_1
    int-to-float v4, p3

    invoke-virtual {p1, v6, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setIconOffset(FF)V

    .line 222
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getHeight()F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v6, v5, v6, v6}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setTouchPadding(FFFF)V

    .line 223
    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getBlockingArea()Lcom/sonymobile/flix/components/TouchArea;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getHeight()F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v6, v5, v6, v6}, Lcom/sonymobile/flix/components/TouchArea;->setTouchPadding(FFFF)V

    goto :goto_1
.end method

.method public updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 5
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    const v4, 0x7f0b003d

    const/4 v3, 0x1

    .line 89
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 92
    .local v0, "value":Landroid/util/TypedValue;
    const v1, 0x7f0d0002

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextLines:I

    .line 93
    const v1, 0x7f0b00a9

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextSize:I

    .line 94
    const v1, 0x7f0b002c

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayMaxTextSize:I

    .line 95
    const v1, 0x7f0e000e

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextColor:I

    .line 96
    const v1, 0x7f0e000f

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextShadowColor:I

    .line 97
    const v1, 0x7f07001a

    invoke-virtual {p1, v1, v0, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 98
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayIconLabelMargin:F

    .line 101
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->APPTRAY_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayIconSize:I

    .line 102
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->STAGE_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageIconSize:I

    .line 103
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopIconSize:I

    .line 106
    const-string v1, "small"

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const v1, 0x7f0d000c

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextLines:I

    .line 108
    invoke-virtual {p1, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopMaxTextSize:I

    .line 120
    :goto_0
    const v1, 0x7f0b00c6

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextSize:I

    .line 121
    const v1, 0x7f0e0029

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextColor:I

    .line 122
    const v1, 0x7f0e002a

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextShadowColor:I

    .line 123
    const v1, 0x7f07001b

    invoke-virtual {p1, v1, v0, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 124
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopIconLabelMargin:F

    .line 127
    const v1, 0x7f0d001b

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextLines:I

    .line 128
    const v1, 0x7f0b0044

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageMirrorSize:I

    .line 129
    const v1, 0x7f0b0066

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextSize:I

    .line 130
    const v1, 0x7f0b0043

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageMaxTextSize:I

    .line 131
    const v1, 0x7f0e005e

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextColor:I

    .line 132
    const v1, 0x7f0e005f

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextShadowColor:I

    .line 133
    const v1, 0x7f070019

    invoke-virtual {p1, v1, v0, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 134
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageIconLabelMargin:F

    .line 137
    const v1, 0x7f0d0012

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mOpenFolderTextLines:I

    .line 138
    return-void

    .line 110
    :cond_0
    const v1, 0x7f0a001b

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const v1, 0x7f0d000b

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextLines:I

    .line 112
    invoke-virtual {p1, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopMaxTextSize:I

    goto/16 :goto_0

    .line 115
    :cond_1
    const v1, 0x7f0d002c

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextLines:I

    .line 116
    const v1, 0x7f0b002f

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopMaxTextSize:I

    goto/16 :goto_0
.end method

.method protected updateIconLabelView(Lcom/sonymobile/home/presenter/view/IconLabelView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "iconLabelView"    # Lcom/sonymobile/home/presenter/view/IconLabelView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 290
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->hasIconMirrorEffect(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->getStageMirrorSize()I

    move-result v1

    invoke-virtual {p0, p1, p4, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->setupMirroredIcon(Lcom/sonymobile/home/presenter/view/IconLabelView;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "pageViewName":Ljava/lang/String;
    invoke-virtual {p1, p4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 297
    invoke-interface {p3}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->getItemViewTextLines(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setLabel(Ljava/lang/String;I)V

    .line 298
    invoke-interface {p3}, Lcom/sonymobile/home/model/ResourceItem;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setContentDescription(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected updateViewParameters(Ljava/lang/String;Lcom/sonymobile/home/presenter/view/IconLabelView;)V
    .locals 5
    .param p1, "pageView"    # Ljava/lang/String;
    .param p2, "iconLabelView"    # Lcom/sonymobile/home/presenter/view/IconLabelView;

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 230
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 280
    :goto_1
    return-void

    .line 230
    :sswitch_0
    const-string v4, "apptray"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "desktop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "desktop_automatic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string v4, "stage"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_4
    const-string v4, "stage_dynamic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    .line 232
    :pswitch_0
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayIconSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxIconSize(F)V

    .line 233
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayMaxTextSize:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxTextSize(I)V

    .line 234
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextSize:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextSize(I)V

    .line 235
    invoke-virtual {p2, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setCenterVertically(Z)V

    .line 236
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextColor:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextColor(I)V

    .line 237
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayTextShadowColor:I

    invoke-static {p2, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->setShadowColor(Lcom/sonymobile/home/presenter/view/IconLabelView;I)V

    .line 238
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mAppTrayIconLabelMargin:F

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextIconMargin(F)V

    goto :goto_1

    .line 244
    :pswitch_1
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopIconSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxIconSize(F)V

    .line 245
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopMaxTextSize:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxTextSize(I)V

    .line 246
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextSize:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextSize(I)V

    .line 247
    invoke-virtual {p2, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setCenterVertically(Z)V

    .line 248
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextColor:I

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextColor(I)V

    .line 249
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopTextShadowColor:I

    invoke-static {p2, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->setShadowColor(Lcom/sonymobile/home/presenter/view/IconLabelView;I)V

    .line 250
    iget v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mDesktopIconLabelMargin:F

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextIconMargin(F)V

    goto :goto_1

    .line 256
    :pswitch_2
    iget v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageIconSize:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxIconSize(F)V

    .line 257
    iget v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageMaxTextSize:I

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxTextSize(I)V

    .line 258
    iget v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextSize:I

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextSize(I)V

    .line 259
    invoke-virtual {p2, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setCenterVertically(Z)V

    .line 260
    iget v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextColor:I

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextColor(I)V

    .line 261
    iget v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageTextShadowColor:I

    invoke-static {p2, v2}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->setShadowColor(Lcom/sonymobile/home/presenter/view/IconLabelView;I)V

    .line 262
    iget v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mStageIconLabelMargin:F

    invoke-virtual {p2, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextIconMargin(F)V

    .line 265
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v2}, Lcom/sonymobile/home/settings/UserSettings;->shouldShowLabelsInStage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    invoke-static {}, Lcom/sonymobile/home/HomeApplication;->useTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    .local v0, "labelVisibility":I
    :goto_2
    invoke-virtual {p2, v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setLabelVisibility(I)V

    goto/16 :goto_1

    .end local v0    # "labelVisibility":I
    :cond_1
    move v0, v1

    .line 267
    goto :goto_2

    .line 271
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "labelVisibility":I
    goto :goto_2

    .line 230
    :sswitch_data_0
    .sparse-switch
        -0x2f440b29 -> :sswitch_0
        -0x215db638 -> :sswitch_2
        -0x203c1402 -> :sswitch_4
        0x68ac2fe -> :sswitch_3
        0x5ccf901c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
