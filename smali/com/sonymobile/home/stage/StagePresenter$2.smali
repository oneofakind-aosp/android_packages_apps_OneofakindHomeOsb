.class Lcom/sonymobile/home/stage/StagePresenter$2;
.super Ljava/lang/Object;
.source "StagePresenter.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/stage/StagePresenter;->setView(Lcom/sonymobile/home/stage/StageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StagePresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StagePresenter;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter$2;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Lcom/sonymobile/flix/components/Component;FF)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$2;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # getter for: Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StagePresenter;->access$1000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageDropTarget;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Lcom/sonymobile/home/stage/StageDropTarget;->setSize(FF)V

    .line 316
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter$2;->this$0:Lcom/sonymobile/home/stage/StagePresenter;

    # invokes: Lcom/sonymobile/home/stage/StagePresenter;->layoutDropTarget()V
    invoke-static {v0}, Lcom/sonymobile/home/stage/StagePresenter;->access$1100(Lcom/sonymobile/home/stage/StagePresenter;)V

    .line 317
    return-void
.end method
