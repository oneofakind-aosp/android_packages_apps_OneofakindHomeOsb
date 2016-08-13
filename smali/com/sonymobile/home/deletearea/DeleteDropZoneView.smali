.class public Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
.super Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;
.source "DeleteDropZoneView.java"


# static fields
.field private static final HIDE_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final REMOVE_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SHOW_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mContent:Lcom/sonymobile/flix/components/Component;

.field private mDeleteDropZoneHeight:F

.field private mDeleteDropZoneWidth:F

.field private final mDeleteIcon:Lcom/sonymobile/flix/components/Image;

.field private final mDeleteIconMaxHeight:I

.field private final mIconTextMargin:I

.field private final mRemoveLabel:Lcom/sonymobile/flix/components/Label;

.field private mShowCancel:Z

.field private mUseLayoutDirectionRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->SHOW_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getAccelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->HIDE_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->REMOVE_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 10
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 67
    iput-boolean v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mShowCancel:Z

    .line 77
    iput-boolean v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mUseLayoutDirectionRtl:Z

    .line 84
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v6

    .line 85
    .local v6, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {p1}, Lcom/sonymobile/home/util/LayoutUtils;->useRtlLayoutDirection(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mUseLayoutDirectionRtl:Z

    .line 87
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 88
    .local v9, "value":Landroid/util/TypedValue;
    const v0, 0x7f07001f

    invoke-virtual {v6, v0, v9, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 90
    const v0, 0x7f0b00af

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIconMaxHeight:I

    .line 91
    const v0, 0x7f0b00b0

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mIconTextMargin:I

    .line 93
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    .line 94
    new-instance v0, Lcom/sonymobile/flix/components/NinePatchImage;

    const v1, 0x7f02006f

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 95
    new-instance v0, Lcom/sonymobile/flix/components/Label;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Label;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Label;->setTextSizeDimen(I)V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Label;->setLayoutedTextEnabled(Z)V

    .line 99
    const v0, 0x7f0e001e

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v7

    .line 100
    .local v7, "textColor":I
    const v0, 0x7f0e001f

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v8

    .line 101
    .local v8, "textShadowColorArgb":I
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0, v7}, Lcom/sonymobile/flix/components/Label;->setTextColor(I)V

    .line 102
    if-eqz v8, :cond_0

    .line 103
    ushr-int/lit8 v0, v8, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v4, v0, v1

    .line 104
    .local v4, "alpha":F
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    const/high16 v1, 0x40000000    # 2.0f

    const v3, 0xffffff

    and-int v5, v8, v3

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/Label;->setTextShadow(FFFFI)V

    .line 107
    .end local v4    # "alpha":F
    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 113
    return-void
.end method

.method private createFadeOutToPointAnimation(Lcom/sonymobile/flix/components/Image;FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 6
    .param p1, "image"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 226
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    .line 227
    .local v0, "fadeOutAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 228
    sget-object v1, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->REMOVE_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 229
    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 230
    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 231
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v4, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 232
    return-object v0
.end method

.method private getContentVerticalOffset()F
    .locals 4

    .prologue
    .line 182
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 183
    .local v0, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 184
    .local v1, "value":Landroid/util/TypedValue;
    const v2, 0x7f07001d

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 185
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    return v2
.end method

.method private layout()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 161
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f066666    # 0.525f

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 163
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 166
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getContentVerticalOffset()F

    move-result v0

    add-float v6, v2, v0

    move v3, v2

    move-object v4, p0

    move v5, v2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDropZone:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteDropZoneWidth:F

    iget v3, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteDropZoneHeight:F

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 171
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDropZone:Lcom/sonymobile/flix/components/Component;

    iget-object v4, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 174
    invoke-static {p0}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 176
    iget-boolean v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mUseLayoutDirectionRtl:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mirrorLayout()V

    .line 179
    :cond_0
    return-void
.end method

.method private updateBackgroundIcon()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setNinePatchBitmap(I)V

    .line 136
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    iget v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteDropZoneWidth:F

    iget v2, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteDropZoneHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mBackground:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setVisible(Z)V

    .line 138
    return-void
.end method

.method private updateDeleteIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    .line 143
    .local v2, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    iget-boolean v3, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mShowCancel:Z

    if-eqz v3, :cond_1

    const v3, 0x7f02006d

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIconMaxHeight:I

    if-le v3, v4, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIconMaxHeight:I

    invoke-static {v0, v3, v4}, Lcom/sonymobile/home/bitmap/IconUtilities;->createSmallerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    iget v4, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mIconTextMargin:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v5, v4, v5}, Lcom/sonymobile/flix/components/Image;->setPadding(FFFF)V

    .line 151
    return-void

    .line 143
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const v3, 0x7f020085

    goto :goto_0
.end method

.method private updateLabels()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Label;->setVisible(Z)V

    .line 155
    iget-boolean v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mShowCancel:Z

    if-eqz v1, :cond_0

    const v0, 0x7f080092

    .line 157
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/flix/components/Label;->setText(Landroid/content/res/Resources;I)V

    .line 158
    return-void

    .line 155
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0800f5

    goto :goto_0
.end method


# virtual methods
.method public dropItem(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "listener"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getWorldX()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getWorldY()F

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->createFadeOutToPointAnimation(Lcom/sonymobile/flix/components/Image;FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    .line 216
    .local v0, "removeAnimation":Lcom/sonymobile/flix/util/Animation;
    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/util/Animation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_0
.end method

.method public enter()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Label;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 191
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 192
    return-void
.end method

.method public exit(Lcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mRemoveLabel:Lcom/sonymobile/flix/components/Label;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Label;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteIcon:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p1, v1}, Lcom/sonymobile/flix/util/Animation$Listener;->onStart(Lcom/sonymobile/flix/util/Animation;)V

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1, v1}, Lcom/sonymobile/flix/util/Animation$Listener;->onFinish(Lcom/sonymobile/flix/util/Animation;)V

    .line 205
    :cond_1
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x10000

    const v2, -0xbbbbbc

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public hide(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V
    .locals 5
    .param p1, "animation"    # Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .prologue
    const/4 v4, 0x1

    .line 266
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 267
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelay(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 268
    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 269
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 270
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 271
    .local v0, "component":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 272
    sget-object v1, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->HIDE_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 273
    invoke-virtual {p1, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 274
    invoke-virtual {p1, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 275
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 276
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateConfiguration()V

    .line 118
    return-void
.end method

.method public show(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .param p2, "showCancel"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    iput-boolean p2, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mShowCancel:Z

    .line 244
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateDeleteIcon()V

    .line 245
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateLabels()V

    .line 246
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->layout()V

    .line 248
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 249
    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDelay(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 250
    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 251
    invoke-virtual {p1, v1, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 252
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 253
    .local v0, "component":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 254
    sget-object v1, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->SHOW_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 255
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 257
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 258
    return-void
.end method

.method public updateConfiguration()V
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteDropZoneWidth:F

    .line 125
    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->mDeleteDropZoneHeight:F

    .line 127
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateBackgroundIcon()V

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateDeleteIcon()V

    .line 129
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->updateLabels()V

    .line 131
    invoke-direct {p0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->layout()V

    .line 132
    return-void
.end method
