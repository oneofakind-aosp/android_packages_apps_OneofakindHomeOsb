.class Lcom/sonymobile/home/desktop/HintView$1;
.super Ljava/lang/Object;
.source "HintView.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/HintView;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/HintView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/HintView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/home/desktop/HintView$1;->this$0:Lcom/sonymobile/home/desktop/HintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView$1;->this$0:Lcom/sonymobile/home/desktop/HintView;

    # getter for: Lcom/sonymobile/home/desktop/HintView;->mHintAnimationListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/HintView;->access$000(Lcom/sonymobile/home/desktop/HintView;)Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView$1;->this$0:Lcom/sonymobile/home/desktop/HintView;

    # getter for: Lcom/sonymobile/home/desktop/HintView;->mAnimation:Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/HintView;->access$100(Lcom/sonymobile/home/desktop/HintView;)Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/HintView$HintFadeAnimation;->getAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/desktop/HintView$1;->this$0:Lcom/sonymobile/home/desktop/HintView;

    # getter for: Lcom/sonymobile/home/desktop/HintView;->mHintAnimationListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/HintView;->access$000(Lcom/sonymobile/home/desktop/HintView;)Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/HintView$1;->this$0:Lcom/sonymobile/home/desktop/HintView;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;->onOutAnimationFinish(Lcom/sonymobile/home/desktop/HintView;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 63
    return-void
.end method
