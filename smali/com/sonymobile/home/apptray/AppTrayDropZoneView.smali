.class public final Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
.super Lcom/sonymobile/flix/components/Component;
.source "AppTrayDropZoneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;
    }
.end annotation


# instance fields
.field private mAppTrayDropZoneSpaceCallback:Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;

.field private final mBackground:Lcom/sonymobile/flix/components/Image;

.field private final mContent:Lcom/sonymobile/flix/components/Component;

.field private final mDropArea:Lcom/sonymobile/flix/components/Component;

.field private final mIcon:Lcom/sonymobile/flix/components/Image;

.field private final mIconTextMargin:I

.field private mIsShowingDesktopFull:Z

.field private final mTextView:Landroid/widget/TextView;

.field private final mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

.field private final mUseLayoutDirectionRtl:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "id"    # I
    .param p3, "dropZoneId"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setId(I)V

    .line 76
    new-instance v1, Lcom/sonymobile/flix/components/Component;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mDropArea:Lcom/sonymobile/flix/components/Component;

    .line 77
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mDropArea:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, p3}, Lcom/sonymobile/flix/components/Component;->setId(I)V

    .line 80
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    .line 81
    new-instance v1, Lcom/sonymobile/flix/components/Component;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    .line 84
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, v2}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    .line 89
    new-instance v1, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .line 90
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setOrder(F)V

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIconTextMargin:I

    .line 93
    invoke-static {p1}, Lcom/sonymobile/home/util/LayoutUtils;->useRtlLayoutDirection(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mUseLayoutDirectionRtl:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/AppTrayDropZoneView;)Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mAppTrayDropZoneSpaceCallback:Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTrayDropZoneView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setShowDesktopFull(Z)V

    return-void
.end method

.method private setShowDesktopFull(Z)V
    .locals 1
    .param p1, "desktopFull"    # Z

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIsShowingDesktopFull:Z

    if-eq v0, p1, :cond_0

    .line 230
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIsShowingDesktopFull:Z

    .line 231
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->updateConfiguration()V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public getDropArea()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mDropArea:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public isShowingDesktopFull()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIsShowingDesktopFull:Z

    return v0
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mDropArea:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 124
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->updateConfiguration()V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mAppTrayDropZoneSpaceCallback:Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;

    .line 219
    return-void
.end method

.method public setAppTrayDropZoneSpaceCallback(Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mAppTrayDropZoneSpaceCallback:Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayDropZoneView$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayDropZoneView;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 20

    .prologue
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v14

    .line 141
    .local v14, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v14}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 142
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual {v14}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v13

    .line 143
    .local v13, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v1, 0x7f0b0008

    invoke-virtual {v13, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v9

    .line 148
    .local v9, "dropZoneHeight":F
    invoke-virtual {v14}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setSize(FF)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mDropArea:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v14}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 156
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIsShowingDesktopFull:Z

    if-eqz v1, :cond_2

    const v7, 0x7f020158

    .line 158
    .local v7, "bgResId":I
    :goto_0
    invoke-static {v12, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmapFromPotentialNullResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 159
    .local v8, "dropZoneBg":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1, v8}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 163
    .local v18, "value":Landroid/util/TypedValue;
    const v1, 0x7f07001c

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v13, v1, v0, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 164
    invoke-virtual/range {v18 .. v18}, Landroid/util/TypedValue;->getFloat()F

    move-result v19

    .line 167
    .local v19, "verticalOffset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIconTextMargin:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/flix/components/Image;->setPadding(FFFF)V

    .line 170
    if-eqz v8, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/Image;->setScalingToSize(FF)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v11, v1

    .line 173
    .local v11, "maxTextWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v1

    float-to-int v10, v1

    .line 174
    .local v10, "maxTextHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 182
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIsShowingDesktopFull:Z

    if-eqz v1, :cond_4

    const v16, 0x7f080099

    .line 184
    .local v16, "textResId":I
    :goto_2
    const v1, 0x7f0e0009

    invoke-virtual {v13, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v15

    .line 185
    .local v15, "textColor":I
    const v1, 0x7f0e000a

    invoke-virtual {v13, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v17

    .line 186
    .local v17, "textShadowColor":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x7f0b004d

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    if-eqz v17, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setSize(FF)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setPivotPoint(FF)V

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mTextViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f066666    # 0.525f

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v1}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    add-float v6, v4, v19

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mDropArea:Lcom/sonymobile/flix/components/Component;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 209
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mUseLayoutDirectionRtl:Z

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mirrorLayout()V

    .line 212
    :cond_1
    return-void

    .line 156
    .end local v7    # "bgResId":I
    .end local v8    # "dropZoneBg":Landroid/graphics/Bitmap;
    .end local v10    # "maxTextHeight":I
    .end local v11    # "maxTextWidth":I
    .end local v15    # "textColor":I
    .end local v16    # "textResId":I
    .end local v17    # "textShadowColor":I
    .end local v18    # "value":Landroid/util/TypedValue;
    .end local v19    # "verticalOffset":F
    :cond_2
    const v7, 0x7f020157

    goto/16 :goto_0

    .line 176
    .restart local v7    # "bgResId":I
    .restart local v8    # "dropZoneBg":Landroid/graphics/Bitmap;
    .restart local v18    # "value":Landroid/util/TypedValue;
    .restart local v19    # "verticalOffset":F
    :cond_3
    invoke-virtual {v14}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v11, v1

    .line 177
    .restart local v11    # "maxTextWidth":I
    float-to-int v10, v9

    .line 178
    .restart local v10    # "maxTextHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mBackground:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    goto/16 :goto_1

    .line 182
    :cond_4
    const v16, 0x7f080076

    goto/16 :goto_2
.end method
