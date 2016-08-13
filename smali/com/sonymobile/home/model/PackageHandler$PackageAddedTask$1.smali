.class Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$1;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;

    # invokes: Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->notifyListeners()V
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->access$600(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)V

    .line 1427
    return-void
.end method
