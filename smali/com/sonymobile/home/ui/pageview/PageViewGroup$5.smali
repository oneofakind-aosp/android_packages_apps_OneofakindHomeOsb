.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;
.super Lcom/sonymobile/flix/components/util/ComponentAnimation;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;->createPopupItemAnimation(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)Lcom/sonymobile/flix/components/util/ComponentAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

.field final synthetic val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iput-object p3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    return-void
.end method


# virtual methods
.method public onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 2
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 1148
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->onRemovedFrom(Lcom/sonymobile/flix/util/Scheduler;)V

    .line 1149
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$5;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1156
    :cond_0
    return-void
.end method
