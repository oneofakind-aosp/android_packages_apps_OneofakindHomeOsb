.class Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask$1;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;)V
    .locals 0

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;

    iget-object v0, v0, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;

    # getter for: Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;->access$2700(Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->notifyPrepareForPackageChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->access$2800(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;

    # invokes: Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;->notifyListeners()V
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;->access$2900(Lcom/sonymobile/home/model/PackageHandler$PackageChangedTask;)V

    .line 1545
    return-void
.end method
