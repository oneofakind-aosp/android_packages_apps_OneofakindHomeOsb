.class Lcom/sonymobile/home/folder/GridView$1;
.super Lcom/sonymobile/flix/components/util/ComponentAnimation;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/GridView;->placeItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/GridView;

.field final synthetic val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sonymobile/home/folder/GridView$1;->this$0:Lcom/sonymobile/home/folder/GridView;

    iput-object p3, p0, Lcom/sonymobile/home/folder/GridView$1;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->onFinish()V

    .line 400
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$1;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mOngoingMoveAnimations:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$000(Lcom/sonymobile/home/folder/GridView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView$1;->val$itemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method
