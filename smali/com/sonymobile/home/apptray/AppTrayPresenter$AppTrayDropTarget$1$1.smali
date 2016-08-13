.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;

.field final synthetic val$currentPage:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;I)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;->this$2:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;

    iput p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;->val$currentPage:I

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;->this$2:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePage()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;->val$currentPage:I

    if-eq v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1$1;->this$2:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 520
    :cond_0
    return-void
.end method
