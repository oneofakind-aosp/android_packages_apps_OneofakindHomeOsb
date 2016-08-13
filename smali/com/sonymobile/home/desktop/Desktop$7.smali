.class Lcom/sonymobile/home/desktop/Desktop$7;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createCuiFab(Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$7;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 432
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$7;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$1100(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setDescendantAlpha(F)V

    .line 433
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$7;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$1100(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setScaling(F)V

    .line 434
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 427
    return-void
.end method
