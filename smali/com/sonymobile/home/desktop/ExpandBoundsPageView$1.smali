.class Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "ExpandBoundsPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/ExpandBoundsPageView;-><init>(Lcom/sonymobile/flix/components/Scene;IFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/ExpandBoundsPageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/ExpandBoundsPageView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;->this$0:Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

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
    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;->this$0:Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

    # getter for: Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->access$000(Lcom/sonymobile/home/desktop/ExpandBoundsPageView;)Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;->this$0:Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

    # getter for: Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->access$000(Lcom/sonymobile/home/desktop/ExpandBoundsPageView;)Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;->this$0:Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getPageIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;->onPageViewSelected(I)V

    .line 68
    :cond_0
    return-void
.end method
