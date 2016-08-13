.class Lcom/sonymobile/home/model/Model$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->setModelLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/Model;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$1;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$1;->this$0:Lcom/sonymobile/home/model/Model;

    # invokes: Lcom/sonymobile/home/model/Model;->runOnLoadedRunnables()V
    invoke-static {v0}, Lcom/sonymobile/home/model/Model;->access$000(Lcom/sonymobile/home/model/Model;)V

    .line 211
    return-void
.end method
