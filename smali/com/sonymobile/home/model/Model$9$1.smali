.class Lcom/sonymobile/home/model/Model$9$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/sonymobile/home/storage/OnWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model$9;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/Model$9;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model$9;)V
    .locals 0

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$9$1;->this$1:Lcom/sonymobile/home/model/Model$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCompleted()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$9$1;->this$1:Lcom/sonymobile/home/model/Model$9;

    iget-object v0, v0, Lcom/sonymobile/home/model/Model$9;->val$onConfigCompletedCallback:Lcom/sonymobile/home/model/OnConfigCompletedCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/model/OnConfigCompletedCallback;->onConfigCompleted(Z)V

    .line 1418
    return-void
.end method
