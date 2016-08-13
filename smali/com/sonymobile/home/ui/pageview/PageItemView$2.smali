.class Lcom/sonymobile/home/ui/pageview/PageItemView$2;
.super Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;
.source "PageItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/view/HomeAccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->access$000(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    # invokes: Lcom/sonymobile/home/ui/pageview/PageItemView;->animateCancel()V
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->access$100(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onClick(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->doClick()V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->access$000(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageItemView;->mStayPressed:Z
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->access$200(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->animateRelease()V

    .line 124
    :cond_0
    return-void
.end method

.method public onLongPress(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->doLongPress(FF)V

    .line 129
    return-void
.end method

.method public onPress()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->access$000(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->animatePress()V

    .line 102
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageItemView;->mAnimateClick:Z
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->access$000(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->animateRelease()V

    .line 109
    :cond_0
    return-void
.end method
