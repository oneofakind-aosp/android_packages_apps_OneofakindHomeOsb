.class public Lcom/sonymobile/home/folder/OpenFolderHeaderView;
.super Lcom/sonymobile/flix/components/Component;
.source "OpenFolderHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;,
        Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;,
        Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;,
        Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    }
.end annotation


# instance fields
.field private final mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

.field private mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

.field private mDeleteButton:Lcom/sonymobile/flix/components/Button;

.field private mDeleteImage:Lcom/sonymobile/flix/components/Image;

.field private final mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mEditIcon:Lcom/sonymobile/flix/components/Image;

.field private final mHorizontalComponentPadding:F

.field private mIsRtlLanguage:Z

.field private mLabel:Ljava/lang/String;

.field private final mLabelButton:Lcom/sonymobile/flix/components/Button;

.field private mLabelDirty:Z

.field private mLabelHeight:I

.field private final mLabelImage:Lcom/sonymobile/flix/components/Image;

.field private mLabelMaxWidth:I

.field private mLabelPreferredWidth:I

.field private final mLabelTextView:Landroid/widget/TextView;

.field private final mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mTextColor:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 14
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 64
    iput-boolean v7, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mIsRtlLanguage:Z

    .line 69
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 71
    .local v5, "res":Landroid/content/res/Resources;
    const v8, 0x7f0b0038

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    .line 74
    const v8, 0x7f0b00e1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v4, v8

    .line 76
    .local v4, "marginTop":F
    const v8, 0x7f0b00e0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v3, v8

    .line 78
    .local v3, "marginBottom":F
    const v8, 0x7f0b0039

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v2, v8

    .line 81
    .local v2, "horizontalMargin":F
    invoke-virtual {p0, v2, v4, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setInnerMargin(FFFF)V

    .line 84
    invoke-static {v5}, Lcom/sonymobile/home/folder/FolderUtil;->hasAllFolderResourcesVersion1(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f02015e

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 87
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020160

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 90
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f02015f

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 92
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020161

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0045

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->getThemeColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mTextColor:I

    .line 108
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 109
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 111
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v8, v7}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 112
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v8, v7}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 114
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 115
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 117
    const v8, 0x7f0b00df

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v1, v8

    .line 119
    .local v1, "dividerMarginTop":F
    const v8, 0x7f0b00de

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v0, v8

    .line 121
    .local v0, "dividerMarginBottom":F
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020071

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 122
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v8, v11, v1, v11, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setPadding(FFFF)V

    .line 123
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v8, v7}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 124
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 126
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b00e2

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-static {v8, v9, v6, v7}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    .line 128
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 131
    new-instance v8, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v8, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    .line 132
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    iget v9, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    iget v10, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    invoke-virtual {v8, v9, v11, v10, v11}, Lcom/sonymobile/flix/components/Image;->setPadding(FFFF)V

    .line 134
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 136
    new-instance v8, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-direct {v8, p1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    .line 137
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    const v9, 0x7f0f0033

    invoke-virtual {v8, v9}, Lcom/sonymobile/flix/components/Button;->setId(I)V

    .line 138
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    new-instance v9, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;-><init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;)V

    invoke-virtual {v8, v9}, Lcom/sonymobile/flix/components/Button;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 139
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 141
    new-instance v8, Lcom/sonymobile/flix/components/Image;

    const v9, 0x7f020072

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    .line 142
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    iget v9, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    iget v10, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    invoke-virtual {v8, v9, v11, v10, v11}, Lcom/sonymobile/flix/components/Image;->setPadding(FFFF)V

    .line 143
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v8, v7}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 144
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 146
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    if-ne v8, v6, :cond_2

    :goto_1
    iput-boolean v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mIsRtlLanguage:Z

    .line 149
    iget-boolean v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mIsRtlLanguage:Z

    if-eqz v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v6, v12, v13}, Lcom/sonymobile/flix/components/NinePatchImage;->setScaling(FF)V

    .line 152
    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v6, v12, v13}, Lcom/sonymobile/flix/components/NinePatchImage;->setScaling(FF)V

    .line 153
    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v6, v12, v13}, Lcom/sonymobile/flix/components/NinePatchImage;->setScaling(FF)V

    .line 154
    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v6, v12, v13}, Lcom/sonymobile/flix/components/NinePatchImage;->setScaling(FF)V

    .line 155
    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v6, v12, v13}, Lcom/sonymobile/flix/components/Image;->setScaling(FF)V

    .line 159
    :cond_0
    iget v6, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mTextColor:I

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setTextColor(I)V

    .line 160
    return-void

    .line 96
    .end local v0    # "dividerMarginBottom":F
    .end local v1    # "dividerMarginTop":F
    :cond_1
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020077

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 98
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020079

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 101
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020076

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 103
    new-instance v8, Lcom/sonymobile/flix/components/NinePatchImage;

    const v9, 0x7f020078

    invoke-direct {v8, p1, v9}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 105
    const v8, 0x7f0e0045

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mTextColor:I

    goto/16 :goto_0

    .restart local v0    # "dividerMarginBottom":F
    .restart local v1    # "dividerMarginTop":F
    :cond_2
    move v6, v7

    .line 146
    goto :goto_1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setLabelPressed(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setDeletePressed(Z)V

    return-void
.end method

.method private layout(FF)V
    .locals 18
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 261
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v15

    .line 267
    .local v15, "margin":Landroid/graphics/RectF;
    iget v2, v15, Landroid/graphics/RectF;->left:F

    sub-float v2, p1, v2

    iget v3, v15, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v12, v2

    .line 269
    .local v12, "labelMaxWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v2, :cond_7

    .line 271
    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v12, v2

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v2

    iget v3, v15, Landroid/graphics/RectF;->right:F

    add-float v17, v2, v3

    .line 277
    .local v17, "rightBgWidth":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->isSetToVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelPreferredWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v16, v2, v3

    .line 281
    .local v16, "neededWidthForEditIcon":F
    int-to-float v2, v12

    cmpl-float v2, v2, v16

    if-ltz v2, :cond_2

    .line 283
    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v12, v2

    .line 287
    .end local v16    # "neededWidthForEditIcon":F
    :cond_2
    sub-float v14, p1, v17

    .line 288
    .local v14, "leftBgWidth":F
    iget v2, v15, Landroid/graphics/RectF;->top:F

    sub-float v2, p2, v2

    iget v3, v15, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v11, v2

    .line 290
    .local v11, "labelHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    move/from16 v0, p2

    invoke-virtual {v2, v14, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    move/from16 v0, p2

    invoke-virtual {v2, v14, v0}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v2, :cond_8

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    move/from16 v0, p2

    invoke-virtual {v2, v14, v0}, Lcom/sonymobile/flix/components/Button;->setSize(FF)V

    .line 307
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelMaxWidth:I

    if-ne v12, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelHeight:I

    if-ne v11, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelDirty:Z

    if-eqz v2, :cond_4

    .line 308
    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v13, v12, v2

    .line 309
    .local v13, "labelWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v13, v11, v3, v4}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 312
    .local v10, "labelBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v10}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelMaxWidth:I

    .line 314
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelHeight:I

    .line 315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelDirty:Z

    .line 318
    .end local v10    # "labelBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "labelWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-nez v2, :cond_9

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 328
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v2, :cond_5

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/flix/components/Button;->setSize(FF)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/NinePatchImage;->getPadding()Landroid/graphics/RectF;

    move-result-object v9

    .line 334
    .local v9, "dividerPadding":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/NinePatchImage;->getWidth()F

    move-result v3

    iget v4, v9, Landroid/graphics/RectF;->top:F

    sub-float v4, p2, v4

    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 339
    .end local v9    # "dividerPadding":Landroid/graphics/RectF;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->isSetToVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v2, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 347
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mIsRtlLanguage:Z

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mirrorLayout()V

    goto/16 :goto_0

    .line 274
    .end local v11    # "labelHeight":I
    .end local v14    # "leftBgWidth":F
    .end local v17    # "rightBgWidth":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/NinePatchImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v17, v0

    .restart local v17    # "rightBgWidth":F
    goto/16 :goto_1

    .line 303
    .restart local v11    # "labelHeight":I
    .restart local v14    # "leftBgWidth":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/flix/components/Button;->setSize(FF)V

    goto/16 :goto_2

    .line 324
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelButton:Lcom/sonymobile/flix/components/Button;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    goto/16 :goto_3

    .line 343
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    goto :goto_4
.end method

.method private setDeletePressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 384
    if-eqz p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 386
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 392
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 389
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    goto :goto_0
.end method

.method private setLabelPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    if-eqz p1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 365
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 367
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 381
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 373
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundLeft:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 375
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 377
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mPressedBackgroundRight:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setLabelPressed(Z)V

    .line 359
    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setDeletePressed(Z)V

    .line 360
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabel:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v1

    .line 168
    .local v1, "margin":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelMaxWidth:I

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/sonymobile/flix/util/Utils;->measureView(Landroid/view/View;II)V

    .line 169
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 170
    .local v0, "labelHeight":I
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelPreferredWidth:I

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelDirty:Z

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getWidth()F

    move-result v2

    int-to-float v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setSize(FF)V

    .line 176
    .end local v0    # "labelHeight":I
    .end local v1    # "margin":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    .line 355
    return-void
.end method

.method public setShowDeleteButton(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 191
    if-eqz p1, :cond_1

    .line 192
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-nez v2, :cond_0

    .line 193
    new-instance v2, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v2, v3}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    .line 194
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    new-instance v3, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;-><init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Button;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 196
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v2, v3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    .line 197
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v2, v3, v5, v8}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 202
    .local v0, "deleteTextView":Landroid/widget/TextView;
    const v2, 0x7f08004c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 205
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v7, v5, v2}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    .local v1, "labelBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    iget v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mHorizontalComponentPadding:F

    invoke-virtual {v2, v3, v6, v4, v6}, Lcom/sonymobile/flix/components/Image;->setPadding(FFFF)V

    .line 211
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 212
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 214
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2, v5}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 224
    .end local v0    # "deleteTextView":Landroid/widget/TextView;
    .end local v1    # "labelBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 218
    iput-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteButton:Lcom/sonymobile/flix/components/Button;

    .line 219
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 220
    iput-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDeleteImage:Lcom/sonymobile/flix/components/Image;

    .line 222
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mDivider:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2, v8}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    goto :goto_0
.end method

.method public setShowEditIcon(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "changed":Z
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->isSetToVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 231
    const/4 v0, 0x1

    .line 237
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getHeight()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->layout(FF)V

    .line 239
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 241
    :cond_1
    return-void

    .line 232
    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->isSetToVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 247
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->layout(FF)V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 6
    .param p1, "textColor"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, "labelBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 187
    .end local v0    # "labelBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mEditIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    return-void
.end method
