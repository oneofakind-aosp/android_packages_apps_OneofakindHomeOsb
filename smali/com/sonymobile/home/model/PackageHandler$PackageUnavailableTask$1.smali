.class Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$1;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    # invokes: Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->notifyListeners()V
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->access$3800(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)V

    .line 1726
    return-void
.end method
