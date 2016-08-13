.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;
.super Lcom/sonymobile/flix/components/util/ComponentAnimation;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createFadeOutAnimation(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

.field final synthetic val$c:Lcom/sonymobile/flix/components/Component;

.field final synthetic val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field final synthetic val$removedItemsLayer:Lcom/sonymobile/flix/components/Component;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iput-object p3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    iput-object p4, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$removedItemsLayer:Lcom/sonymobile/flix/components/Component;

    iput-object p5, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$c:Lcom/sonymobile/flix/components/Component;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1220
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iget-object v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1221
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$removedItemsLayer:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->val$c:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 1222
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$6;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingDeleteAnimations:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->access$100(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1223
    invoke-super {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->onFinish()V

    .line 1224
    return-void
.end method
