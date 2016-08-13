.class Lcom/sonymobile/home/desktop/DesktopView$4;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopView;->setupPageButtons(Lcom/sonymobile/home/desktop/DesktopPageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;I)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$4;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopView$4;->val$index:I

    invoke-direct {p0}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$4;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView$4;->val$index:I

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->notifyDeletePageClicked(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->access$700(Lcom/sonymobile/home/desktop/DesktopView;I)V

    .line 783
    return-void
.end method
