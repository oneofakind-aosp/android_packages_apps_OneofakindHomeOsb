.class Lcom/sonymobile/home/cui/CuiGridItemView$1;
.super Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;
.source "CuiGridItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridItemView;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridItemView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridItemView;

    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->animateCancel()V

    .line 72
    return-void
.end method

.method public onClick(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->doClick()Z

    .line 77
    return-void
.end method

.method public onLongPress(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridItemView;

    # invokes: Lcom/sonymobile/home/cui/CuiGridItemView;->doLongPress(FF)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridItemView;->access$000(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V

    .line 82
    return-void
.end method

.method public onPress()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->animatePress()V

    .line 62
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItemView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridItemView;->animateRelease()V

    .line 67
    return-void
.end method
