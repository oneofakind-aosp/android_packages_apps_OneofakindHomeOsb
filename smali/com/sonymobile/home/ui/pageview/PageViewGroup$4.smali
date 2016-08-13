.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;
.super Ljava/lang/Object;
.source "PageViewGroup.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;->performUpdateItemAnimation(Lcom/sonymobile/home/ui/pageview/PageLocation;Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

.field final synthetic val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iput-object p2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    # getter for: Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mOngoingUpdateAnimations:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->access$000(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$4;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1083
    return-void
.end method
