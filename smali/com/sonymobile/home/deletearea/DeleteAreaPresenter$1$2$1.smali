.class Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2$1;
.super Ljava/lang/Object;
.source "DeleteAreaPresenter.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;->onFinish(Lcom/sonymobile/flix/util/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2$1;->this$2:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2$1;->this$2:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;

    iget-object v0, v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    new-instance v1, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZI)V

    invoke-interface {v0, v3, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 145
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 127
    return-void
.end method
