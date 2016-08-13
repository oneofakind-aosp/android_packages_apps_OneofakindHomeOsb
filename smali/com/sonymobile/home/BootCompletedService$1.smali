.class Lcom/sonymobile/home/BootCompletedService$1;
.super Landroid/os/AsyncTask;
.source "BootCompletedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/BootCompletedService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/BootCompletedService;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/BootCompletedService;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonymobile/home/BootCompletedService$1;->this$0:Lcom/sonymobile/home/BootCompletedService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/BootCompletedService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/sonymobile/home/BootCompletedService$1;->this$0:Lcom/sonymobile/home/BootCompletedService;

    invoke-virtual {v1}, Lcom/sonymobile/home/BootCompletedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v0

    .line 38
    .local v0, "externalStoragePrefManager":Lcom/sonymobile/home/ExternalStoragePreferenceManager;
    invoke-virtual {v0}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->updateAll()Ljava/util/Set;

    .line 40
    iget-object v1, p0, Lcom/sonymobile/home/BootCompletedService$1;->this$0:Lcom/sonymobile/home/BootCompletedService;

    invoke-virtual {v1}, Lcom/sonymobile/home/BootCompletedService;->stopSelf()V

    .line 41
    const/4 v1, 0x0

    return-object v1
.end method
