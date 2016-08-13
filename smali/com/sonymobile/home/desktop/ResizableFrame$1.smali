.class Lcom/sonymobile/home/desktop/ResizableFrame$1;
.super Ljava/lang/Object;
.source "ResizableFrame.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/ResizableFrame;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/ResizableFrame;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/ResizableFrame;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Lcom/sonymobile/flix/components/Component;FF)V
    .locals 13
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 158
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mBorder:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$000(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v0

    .line 159
    .local v0, "border":Lcom/sonymobile/flix/components/NinePatchImage;
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v2, v9, v10

    .line 160
    .local v2, "borderOffsetX":F
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v3, v9, v10

    .line 161
    .local v3, "borderOffsetY":F
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, p2, v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 162
    .local v4, "borderWidth":F
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, p3, v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mDefaultPadding:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$100(Lcom/sonymobile/home/desktop/ResizableFrame;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 164
    .local v1, "borderHeight":F
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/NinePatchImage;->setPosition(FF)V

    .line 165
    invoke-virtual {v0, v4, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 169
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/sonymobile/flix/components/NinePatchImage;->getWidth(I)F

    move-result v8

    .line 170
    .local v8, "innerWidth":F
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/sonymobile/flix/components/NinePatchImage;->getHeight(I)F

    move-result v7

    .line 171
    .local v7, "innerHeight":F
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Lcom/sonymobile/flix/components/NinePatchImage;->getPointX(FI)F

    move-result v5

    .line 172
    .local v5, "centerX":F
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Lcom/sonymobile/flix/components/NinePatchImage;->getPointY(FI)F

    move-result v6

    .line 173
    .local v6, "centerY":F
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$200(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Lcom/sonymobile/flix/components/NinePatchImage;->getPointX(FI)F

    move-result v10

    add-float/2addr v10, v2

    add-float v11, v6, v3

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPosition(FF)V

    .line 175
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleLeft:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$200(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v7

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setSize(FF)V

    .line 176
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$400(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    add-float v10, v5, v2

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Lcom/sonymobile/flix/components/NinePatchImage;->getPointY(FI)F

    move-result v11

    add-float/2addr v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPosition(FF)V

    .line 178
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTop:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$400(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setSize(FF)V

    .line 179
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$500(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Lcom/sonymobile/flix/components/NinePatchImage;->getPointX(FI)F

    move-result v10

    add-float/2addr v10, v2

    add-float v11, v6, v3

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPosition(FF)V

    .line 181
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleRight:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$500(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v7

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setSize(FF)V

    .line 182
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$600(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    add-float v10, v5, v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Lcom/sonymobile/flix/components/NinePatchImage;->getPointY(FI)F

    move-result v11

    add-float/2addr v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setPosition(FF)V

    .line 184
    iget-object v9, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleBottom:Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
    invoke-static {v9}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$600(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$1;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleThickness:I
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$300(Lcom/sonymobile/home/desktop/ResizableFrame;)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->setSize(FF)V

    .line 185
    return-void
.end method
