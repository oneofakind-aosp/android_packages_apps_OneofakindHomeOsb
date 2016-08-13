.class Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;
.super Ljava/lang/Object;
.source "PageIndicatorView.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/view/PageIndicatorView;->hidePageIndicator(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/view/PageIndicatorView;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(J)Z
    .locals 2
    .param p1, "now"    # J

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/PageIndicatorView$1;->this$0:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->animatePageIndicatorAlphaTo(F)V

    .line 284
    const/4 v0, 0x0

    return v0
.end method
