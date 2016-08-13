.class Lcom/sonymobile/home/stage/dynamic/DynamicStageView$1;
.super Ljava/lang/Object;
.source "DynamicStageView.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/dynamic/DynamicStageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/dynamic/DynamicStageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/dynamic/DynamicStageView;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView$1;->this$0:Lcom/sonymobile/home/stage/dynamic/DynamicStageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "addedTo"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView$1;->this$0:Lcom/sonymobile/home/stage/dynamic/DynamicStageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->updateContentSize()V

    .line 37
    return-void
.end method
