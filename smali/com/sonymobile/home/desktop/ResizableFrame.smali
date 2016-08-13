.class public Lcom/sonymobile/home/desktop/ResizableFrame;
.super Lcom/sonymobile/flix/components/Component;
.source "ResizableFrame.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;,
        Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;,
        Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    }
.end annotation


# instance fields
.field private final mActiveHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;

.field private final mBorder:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mCellBounds:Lcom/sonymobile/grid/GridRect;

.field private final mDefaultPadding:Landroid/graphics/Rect;

.field private mFrameBottom:F

.field private mFrameLeft:F

.field private mFrameRight:F

.field private mFrameTop:F

.field private mGrid:Lcom/sonymobile/grid/Grid;

.field private final mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

.field private final mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

.field private final mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

.field private final mHandleThickness:I

.field private final mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

.field private mHandleTouched:Z

.field private final mHandles:Lcom/sonymobile/flix/components/Group;

.field private mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

.field private mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

.field private final mTouchDelegate:Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

.field private final mTouchOverrideDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mWasPressed:Z

.field private mWasReleased:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;)V
    .locals 9
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f2b851e    # 0.66999996f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 112
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 71
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;

    .line 113
    iput-object p2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 114
    new-instance v3, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v3}, Lcom/sonymobile/grid/GridRect;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    .line 115
    new-instance v3, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v3}, Lcom/sonymobile/grid/GridRect;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;

    .line 117
    invoke-virtual {p0, v4, v4}, Lcom/sonymobile/home/desktop/ResizableFrame;->setPivotPoint(FF)V

    .line 119
    new-instance v3, Lcom/sonymobile/flix/components/NinePatchImage;

    const v4, 0x7f020140

    invoke-direct {v3, p1, v4}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mBorder:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 120
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mBorder:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/ResizableFrame;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mActiveHandles:Ljava/util/ArrayList;

    .line 124
    new-instance v3, Lcom/sonymobile/flix/components/Group;

    invoke-direct {v3, p1}, Lcom/sonymobile/flix/components/Group;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    .line 125
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/ResizableFrame;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 126
    new-instance v3, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-direct {v3, p0, p1, v8}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;-><init>(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    .line 127
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v7, v5}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPivotPoint(FF)V

    .line 128
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 129
    new-instance v3, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;-><init>(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    .line 130
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v5, v7}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPivotPoint(FF)V

    .line 131
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 132
    new-instance v3, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p1, v4}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;-><init>(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    .line 133
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v6, v5}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPivotPoint(FF)V

    .line 134
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 135
    new-instance v3, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    const/4 v4, 0x3

    invoke-direct {v3, p0, p1, v4}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;-><init>(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    .line 136
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPivotPoint(FF)V

    .line 137
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 139
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    const v3, 0x7f020141

    invoke-direct {v0, p1, v3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    .line 140
    .local v0, "handleImage":Lcom/sonymobile/flix/components/Image;
    const-string v3, "HandleImage"

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 142
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    .line 143
    .end local v0    # "handleImage":Lcom/sonymobile/flix/components/Image;
    .local v1, "handleImage":Lcom/sonymobile/flix/components/Image;
    const-string v3, "HandleImage"

    invoke-virtual {v1, v3}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 145
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    .line 146
    .end local v1    # "handleImage":Lcom/sonymobile/flix/components/Image;
    .restart local v0    # "handleImage":Lcom/sonymobile/flix/components/Image;
    const-string v3, "HandleImage"

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 148
    new-instance v1, Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;)V

    .line 149
    .end local v0    # "handleImage":Lcom/sonymobile/flix/components/Image;
    .restart local v1    # "handleImage":Lcom/sonymobile/flix/components/Image;
    const-string v3, "HandleImage"

    invoke-virtual {v1, v3}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 152
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    .line 153
    .local v2, "resourceManager":Lcom/sonymobile/home/resources/ResourceManager;
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I

    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/home/desktop/ResizableFrame$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/home/desktop/ResizableFrame$1;-><init>(Lcom/sonymobile/home/desktop/ResizableFrame;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;)V

    .line 188
    new-instance v3, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

    invoke-direct {v3, p1, p0}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;)V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchDelegate:Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchOverrideDelegates:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {p0, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->setVisible(Z)V

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/flix/components/NinePatchImage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mBorder:Lcom/sonymobile/flix/components/NinePatchImage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/desktop/ResizableFrame;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/desktop/ResizableFrame;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/desktop/ResizableFrame;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/desktop/ResizableFrame;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mActiveHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonymobile/home/desktop/ResizableFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mWasPressed:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/sonymobile/home/desktop/ResizableFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mWasReleased:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/sonymobile/home/desktop/ResizableFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/Grid;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/desktop/ResizableFrame;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    return v0
.end method

.method private addTouchDelegateOverrides(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "container"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 247
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchOverrideDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    .line 248
    .local v1, "touchDelegate":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->hasChild(Lcom/sonymobile/flix/components/Component;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0

    .line 252
    .end local v1    # "touchDelegate":Lcom/sonymobile/flix/components/Component;
    :cond_1
    return-void
.end method

.method private animateFrame()V
    .locals 4

    .prologue
    .line 433
    new-instance v0, Lcom/sonymobile/home/desktop/ResizableFrame$2;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, p0, v2, v3}, Lcom/sonymobile/home/desktop/ResizableFrame$2;-><init>(Lcom/sonymobile/home/desktop/ResizableFrame;J)V

    .line 489
    .local v0, "frameAnimation":Lcom/sonymobile/flix/util/Animation;
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 490
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 491
    return-void
.end method

.method private animateUnusedHandles(Z)V
    .locals 10
    .param p1, "activate"    # Z

    .prologue
    const-wide/16 v8, 0xc8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 413
    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mActiveHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    :cond_0
    return-void

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Group;->getNbrChildren()I

    move-result v3

    .line 417
    .local v3, "nbrHandles":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 418
    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v4, v1}, Lcom/sonymobile/flix/components/Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 419
    .local v0, "handle":Lcom/sonymobile/flix/components/Component;
    iget-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mActiveHandles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 420
    const-string v4, "HandleImage"

    invoke-virtual {v0, v4}, Lcom/sonymobile/flix/components/Component;->findByName(Ljava/lang/String;)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 421
    .local v2, "image":Lcom/sonymobile/flix/components/Component;
    if-eqz p1, :cond_3

    .line 422
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v5, v2, v8, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 417
    .end local v2    # "image":Lcom/sonymobile/flix/components/Component;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .restart local v2    # "image":Lcom/sonymobile/flix/components/Component;
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v5, v2, v8, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    invoke-virtual {v5, v7, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_1
.end method

.method private hasTouchOverride(Lcom/sonymobile/flix/components/Component;)Z
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 238
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchOverrideDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

    .line 239
    .local v1, "touchDelegate":Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x1

    .line 243
    .end local v1    # "touchDelegate":Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isResizeInfoValid(Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;Lcom/sonymobile/home/ui/pageview/PageItemView;)Z
    .locals 9
    .param p1, "resizeInfo"    # Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    .param p2, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 333
    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget-object v2, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 335
    .local v2, "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    iget v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    iget v8, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    .line 336
    iget v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I

    iget v8, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I

    .line 338
    iget v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    move v3, v5

    .line 339
    .local v3, "supportsHorizontalResize":Z
    :goto_0
    iget v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    move v4, v5

    .line 340
    .local v4, "supportsVerticalResize":Z
    :goto_1
    if-eqz v3, :cond_4

    iget v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v8

    if-ge v7, v8, :cond_4

    move v0, v5

    .line 342
    .local v0, "isHorizontalResizeable":Z
    :goto_2
    if-eqz v4, :cond_5

    iget v7, p1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v8

    if-ge v7, v8, :cond_5

    move v1, v5

    .line 345
    .local v1, "isVerticalResizeable":Z
    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v6, v5

    .line 347
    .end local v0    # "isHorizontalResizeable":Z
    .end local v1    # "isVerticalResizeable":Z
    .end local v2    # "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    .end local v3    # "supportsHorizontalResize":Z
    .end local v4    # "supportsVerticalResize":Z
    :cond_1
    return v6

    .restart local v2    # "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    :cond_2
    move v3, v6

    .line 338
    goto :goto_0

    .restart local v3    # "supportsHorizontalResize":Z
    :cond_3
    move v4, v6

    .line 339
    goto :goto_1

    .restart local v4    # "supportsVerticalResize":Z
    :cond_4
    move v0, v6

    .line 340
    goto :goto_2

    .restart local v0    # "isHorizontalResizeable":Z
    :cond_5
    move v1, v6

    .line 342
    goto :goto_3
.end method

.method private moveFrame(IF)V
    .locals 11
    .param p1, "edge"    # I
    .param p2, "delta"    # F

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getWidth()F

    move-result v7

    .line 495
    .local v7, "prevWidth":F
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getHeight()F

    move-result v6

    .line 496
    .local v6, "prevHeight":F
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v8

    int-to-float v1, v8

    .line 497
    .local v1, "cellWidth":F
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v8

    int-to-float v0, v8

    .line 498
    .local v0, "cellHeight":F
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v8

    int-to-float v8, v8

    mul-float v3, v8, v1

    .line 499
    .local v3, "gridWidth":F
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v8

    int-to-float v8, v8

    mul-float v2, v8, v0

    .line 500
    .local v2, "gridHeight":F
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    iget v8, v8, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    int-to-float v8, v8

    mul-float v5, v8, v1

    .line 501
    .local v5, "minWidth":F
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    iget v8, v8, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I

    int-to-float v8, v8

    mul-float v4, v8, v0

    .line 502
    .local v4, "minHeight":F
    packed-switch p1, :pswitch_data_0

    .line 544
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown edge "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 504
    :pswitch_0
    sub-float v8, v7, p2

    cmpg-float v8, v8, v5

    if-gez v8, :cond_1

    .line 505
    sub-float p2, v7, v5

    .line 509
    :cond_0
    :goto_0
    mul-float v8, p2, v10

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->move(FF)V

    .line 510
    sub-float v8, v7, p2

    invoke-virtual {p0, v8, v6}, Lcom/sonymobile/home/desktop/ResizableFrame;->setSize(FF)V

    .line 511
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    add-float/2addr v8, p2

    iput v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    .line 546
    :goto_1
    return-void

    .line 506
    :cond_1
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    add-float/2addr v8, p2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 507
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    neg-float p2, v8

    goto :goto_0

    .line 514
    :pswitch_1
    sub-float v8, v6, p2

    cmpg-float v8, v8, v4

    if-gez v8, :cond_3

    .line 515
    sub-float p2, v6, v4

    .line 519
    :cond_2
    :goto_2
    mul-float v8, p2, v10

    invoke-virtual {p0, v9, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->move(FF)V

    .line 520
    sub-float v8, v6, p2

    invoke-virtual {p0, v7, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->setSize(FF)V

    .line 521
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    add-float/2addr v8, p2

    iput v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    goto :goto_1

    .line 516
    :cond_3
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    add-float/2addr v8, p2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 517
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    neg-float p2, v8

    goto :goto_2

    .line 524
    :pswitch_2
    add-float v8, v7, p2

    cmpg-float v8, v8, v5

    if-gez v8, :cond_5

    .line 525
    sub-float v8, v7, v5

    neg-float p2, v8

    .line 529
    :cond_4
    :goto_3
    mul-float v8, p2, v10

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->move(FF)V

    .line 530
    add-float v8, v7, p2

    invoke-virtual {p0, v8, v6}, Lcom/sonymobile/home/desktop/ResizableFrame;->setSize(FF)V

    .line 531
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    add-float/2addr v8, p2

    iput v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    goto :goto_1

    .line 526
    :cond_5
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    add-float/2addr v8, p2

    cmpl-float v8, v8, v3

    if-lez v8, :cond_4

    .line 527
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    sub-float p2, v3, v8

    goto :goto_3

    .line 534
    :pswitch_3
    add-float v8, v6, p2

    cmpg-float v8, v8, v4

    if-gez v8, :cond_7

    .line 535
    sub-float v8, v6, v4

    neg-float p2, v8

    .line 539
    :cond_6
    :goto_4
    mul-float v8, p2, v10

    invoke-virtual {p0, v9, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->move(FF)V

    .line 540
    add-float v8, v6, p2

    invoke-virtual {p0, v7, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->setSize(FF)V

    .line 541
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    add-float/2addr v8, p2

    iput v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    goto :goto_1

    .line 536
    :cond_7
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    add-float/2addr v8, p2

    cmpl-float v8, v8, v2

    if-lez v8, :cond_6

    .line 537
    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    sub-float p2, v2, v8

    goto :goto_4

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeTouchDelegateOverrides(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "container"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 255
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchOverrideDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    .line 256
    .local v1, "touchDelegate":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 257
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->removeFromScene()Z

    goto :goto_0

    .line 259
    .end local v1    # "touchDelegate":Lcom/sonymobile/flix/components/Component;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTouchOverride(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/ResizableFrame;->hasTouchOverride(Lcom/sonymobile/flix/components/Component;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    new-instance v0, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;)V

    .line 231
    .local v0, "touchDelegate":Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 232
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->move(FF)V

    .line 233
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchOverrideDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v0    # "touchDelegate":Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;
    :cond_0
    return-void
.end method

.method public attachTo(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageView;)Z
    .locals 10
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 270
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getResizeInfo()Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    move-result-object v4

    .line 272
    .local v4, "resizeInfo":Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    invoke-direct {p0, v4, p1}, Lcom/sonymobile/home/desktop/ResizableFrame;->isResizeInfoValid(Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->detach()V

    .line 274
    iput-object v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    .line 275
    invoke-virtual {p2, p0}, Lcom/sonymobile/home/ui/pageview/PageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v5

    const v8, 0x7f0f000b

    invoke-virtual {v5, v8}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 277
    .local v0, "containerView":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v5

    const v8, 0x7f0f000f

    invoke-virtual {v5, v8}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Component;->getIndexInParent()I

    move-result v1

    .line 278
    .local v1, "fabIndex":I
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchDelegate:Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/flix/components/Component;->addChildAt(ILcom/sonymobile/flix/components/Component;)V

    .line 279
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/ResizableFrame;->addTouchDelegateOverrides(Lcom/sonymobile/flix/components/Component;)V

    .line 281
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 282
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Group;->getNbrChildren()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 285
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandles:Lcom/sonymobile/flix/components/Group;

    invoke-virtual {v5, v2}, Lcom/sonymobile/flix/components/Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v5

    const-string v8, "HandleImage"

    invoke-virtual {v5, v8}, Lcom/sonymobile/flix/components/Component;->findByName(Ljava/lang/String;)Lcom/sonymobile/flix/components/Component;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Lcom/sonymobile/flix/components/Component;->setAlpha(F)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/home/desktop/ResizableFrame;->setVisible(Z)V

    .line 290
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v5}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    iget-object v3, v5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 291
    .local v3, "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    iget v5, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v8

    mul-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    .line 292
    iget v5, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v8

    mul-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    .line 293
    iget v5, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget v8, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v5, v8

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v8

    mul-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    .line 294
    iget v5, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget v8, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v5, v8

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v8

    mul-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    .line 295
    iget v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F

    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F

    sub-float/2addr v5, v8

    iget v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F

    iget v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F

    sub-float/2addr v8, v9

    invoke-virtual {p0, v5, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->setSize(FF)V

    .line 296
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v8

    invoke-virtual {p0, v5, v8}, Lcom/sonymobile/home/desktop/ResizableFrame;->setPosition(FF)V

    .line 297
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    iget v5, v5, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setVisible(Z)V

    .line 298
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    iget v5, v5, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setVisible(Z)V

    .line 299
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    iget v5, v5, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setVisible(Z)V

    .line 300
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    iget-object v8, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mResizeInfo:Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    iget v8, v8, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {v5, v7}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setVisible(Z)V

    .line 302
    iget-object v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v5, v3}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 303
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->updateAllowedCellBounds()V

    .line 307
    .end local v0    # "containerView":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "fabIndex":I
    .end local v2    # "i":I
    .end local v3    # "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    :goto_4
    return v6

    .restart local v0    # "containerView":Lcom/sonymobile/flix/components/Component;
    .restart local v1    # "fabIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    :cond_2
    move v5, v7

    .line 297
    goto :goto_1

    :cond_3
    move v5, v7

    .line 298
    goto :goto_2

    :cond_4
    move v5, v7

    .line 299
    goto :goto_3

    .end local v0    # "containerView":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "fabIndex":I
    .end local v2    # "i":I
    .end local v3    # "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    :cond_5
    move v6, v7

    .line 307
    goto :goto_4
.end method

.method protected changeFrameSize(IIII)V
    .locals 3
    .param p1, "leftCell"    # I
    .param p2, "topCell"    # I
    .param p3, "rightCell"    # I
    .param p4, "bottomCell"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    iput p1, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 370
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    iput p2, v0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 371
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    sub-int v1, p3, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 372
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    sub-int v1, p4, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 374
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    invoke-interface {v0, p0, v1, v2}, Lcom/sonymobile/home/desktop/ResizableFrameListener;->onResizableFrameCellBoundsChanged(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/grid/GridRect;)V

    .line 377
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->setVisible(Z)V

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->removeFromScene()Z

    .line 319
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mTouchDelegate:Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/ResizableFrame$TouchDelegate;->removeFromScene()Z

    .line 320
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    const v2, 0x7f0f000b

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 321
    .local v0, "containerView":Lcom/sonymobile/flix/components/Component;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/ResizableFrame;->removeTouchDelegateOverrides(Lcom/sonymobile/flix/components/Component;)V

    .line 322
    return-void
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->detach()V

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v0, p0, v1}, Lcom/sonymobile/home/desktop/ResizableFrameListener;->onResizableFrameExited(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 384
    :cond_0
    return-void
.end method

.method public getCellBounds()Lcom/sonymobile/grid/GridRect;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/sonymobile/grid/GridRect;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    invoke-direct {v0, v1}, Lcom/sonymobile/grid/GridRect;-><init>(Lcom/sonymobile/grid/GridRect;)V

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mWasPressed:Z

    if-eqz v2, :cond_1

    .line 389
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mWasPressed:Z

    .line 390
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->animateUnusedHandles(Z)V

    .line 391
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v2, p0, v3}, Lcom/sonymobile/home/desktop/ResizableFrameListener;->onResizableFramePressed(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 403
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTouched:Z

    if-eqz v2, :cond_2

    .line 404
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTouched:Z

    .line 408
    :goto_1
    return v0

    .line 394
    :cond_1
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mWasReleased:Z

    if-eqz v2, :cond_0

    .line 395
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mWasReleased:Z

    .line 396
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/ResizableFrame;->animateUnusedHandles(Z)V

    .line 397
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->animateFrame()V

    .line 398
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mActiveHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 399
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v2, p0, v3}, Lcom/sonymobile/home/desktop/ResizableFrameListener;->onResizableFrameReleased(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->exit()V

    move v0, v1

    .line 408
    goto :goto_1
.end method

.method public setListener(Lcom/sonymobile/home/desktop/ResizableFrameListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/ResizableFrameListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mListener:Lcom/sonymobile/home/desktop/ResizableFrameListener;

    .line 366
    return-void
.end method

.method public updateAllowedCellBounds()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mCellBounds:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v0, v1}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 210
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame;->detach()V

    .line 200
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 201
    return-void
.end method
