.class Lcom/sonymobile/home/PackageChangedService$1;
.super Landroid/os/AsyncTask;
.source "PackageChangedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/PackageChangedService;->onStartCommand(Landroid/content/Intent;II)I
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
.field final synthetic this$0:Lcom/sonymobile/home/PackageChangedService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isReplacingRemoveEvent:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/PackageChangedService;ZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/PackageChangedService$1;->this$0:Lcom/sonymobile/home/PackageChangedService;

    iput-boolean p2, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$isReplacingRemoveEvent:Z

    iput-object p3, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/PackageChangedService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 42
    iget-boolean v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$isReplacingRemoveEvent:Z

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->this$0:Lcom/sonymobile/home/PackageChangedService;

    invoke-virtual {v1}, Lcom/sonymobile/home/PackageChangedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    move-result-object v0

    .line 45
    .local v0, "externalStoragePrefManager":Lcom/sonymobile/home/ExternalStoragePreferenceManager;
    iget-object v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->update(Ljava/lang/String;)V

    .line 48
    .end local v0    # "externalStoragePrefManager":Lcom/sonymobile/home/ExternalStoragePreferenceManager;
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$isReplacingRemoveEvent:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/PackageChangedService$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sonymobile/home/model/PackageHandler;->isHomeSharedUserId(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->this$0:Lcom/sonymobile/home/PackageChangedService;

    invoke-virtual {v1}, Lcom/sonymobile/home/PackageChangedService;->stopSelf()V

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 63
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/PackageChangedService$1;->this$0:Lcom/sonymobile/home/PackageChangedService;

    invoke-virtual {v1}, Lcom/sonymobile/home/PackageChangedService;->stopSelf()V

    goto :goto_0
.end method
