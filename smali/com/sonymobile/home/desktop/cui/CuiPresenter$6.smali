.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeMenuAtTop(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

.field final synthetic val$closeGridView:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;->val$closeGridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->getHostView()Lcom/sonymobile/flix/components/Component;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$800(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;->val$closeGridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 1100
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;->val$closeGridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridView;->onDestroy()V

    .line 1102
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$6;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$300(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 1103
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1094
    return-void
.end method
