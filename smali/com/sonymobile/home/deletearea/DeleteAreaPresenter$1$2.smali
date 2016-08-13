.class Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;
.super Ljava/lang/Object;
.source "DeleteAreaPresenter.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->finishDeleteDrop(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iput-object p2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iget-object v0, v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v0}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2$1;-><init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->exit(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 147
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 119
    return-void
.end method
