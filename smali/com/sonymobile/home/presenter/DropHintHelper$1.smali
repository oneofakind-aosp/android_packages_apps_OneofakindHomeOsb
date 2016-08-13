.class Lcom/sonymobile/home/presenter/DropHintHelper$1;
.super Ljava/lang/Object;
.source "DropHintHelper.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/presenter/DropHintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/DropHintHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/DropHintHelper;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/presenter/DropHintHelper$1;->this$0:Lcom/sonymobile/home/presenter/DropHintHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutAnimationFinish(Lcom/sonymobile/home/desktop/HintView;)V
    .locals 1
    .param p1, "hintView"    # Lcom/sonymobile/home/desktop/HintView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper$1;->this$0:Lcom/sonymobile/home/presenter/DropHintHelper;

    # getter for: Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/DropHintHelper;->access$000(Lcom/sonymobile/home/presenter/DropHintHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper$1;->this$0:Lcom/sonymobile/home/presenter/DropHintHelper;

    # invokes: Lcom/sonymobile/home/presenter/DropHintHelper;->recycleView(Lcom/sonymobile/home/desktop/HintView;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/presenter/DropHintHelper;->access$100(Lcom/sonymobile/home/presenter/DropHintHelper;Lcom/sonymobile/home/desktop/HintView;)V

    .line 68
    return-void
.end method
