.class Lcom/sonymobile/home/ExternalStoragePreferenceManager$1;
.super Ljava/lang/Object;
.source "ExternalStoragePreferenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ExternalStoragePreferenceManager;->updateAllAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ExternalStoragePreferenceManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ExternalStoragePreferenceManager;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager$1;->this$0:Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager$1$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/ExternalStoragePreferenceManager$1$1;-><init>(Lcom/sonymobile/home/ExternalStoragePreferenceManager$1;)V

    .line 194
    .local v0, "updatePrefTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager$1;->this$0:Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    # invokes: Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getPackageExecutor()Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->access$000(Lcom/sonymobile/home/ExternalStoragePreferenceManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    return-void
.end method
