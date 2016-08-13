.class Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)V
    .locals 0

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1660
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    iget-object v4, v4, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPrepareForPackageChangeListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sonymobile/home/model/PackageHandler;->access$3400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1661
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    # getter for: Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mPackageNames:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->access$3500(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1662
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    iget-object v4, v4, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->notifyPrepareForPackageChange(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/sonymobile/home/model/PackageHandler;->access$2800(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)V

    .line 1661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1666
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    # invokes: Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->notifyListeners()V
    invoke-static {v4}, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->access$3600(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)V

    .line 1667
    return-void
.end method
