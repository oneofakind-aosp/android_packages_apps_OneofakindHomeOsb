.class Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)V
    .locals 0

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    iget-object v0, v0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    # getter for: Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->access$3100(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->notifyPrepareForPackageChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->access$2800(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    # invokes: Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->notifyListeners()V
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->access$3200(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)V

    .line 1597
    return-void
.end method
