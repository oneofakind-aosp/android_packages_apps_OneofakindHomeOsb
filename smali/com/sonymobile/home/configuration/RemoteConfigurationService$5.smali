.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;
.super Landroid/os/AsyncTask;
.source "RemoteConfigurationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->createConfig(Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mSuccess:Z

.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$configs:Ljava/util/ArrayList;

.field final synthetic val$iconResourceProviderUri:Landroid/net/Uri;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$responseIntent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/Intent;Landroid/app/PendingIntent;I)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$iconResourceProviderUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$configs:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$responseIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$pendingIntent:Landroid/app/PendingIntent;

    iput p6, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$startId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 371
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    .line 376
    const/4 v1, 0x0

    .line 378
    .local v1, "homeConfig":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;

    iget-object v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    invoke-virtual {v4}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$iconResourceProviderUri:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 379
    .local v2, "homeConfigJsonSerializer":Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;
    iget-object v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$configs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$configs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sonymobile/home/configuration/Config;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sonymobile/home/configuration/Config;

    invoke-virtual {v2, v4}, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->createHomeConfigJson([Lcom/sonymobile/home/configuration/Config;)Lorg/json/JSONObject;

    move-result-object v3

    .line 380
    .local v3, "homeJsonConfig":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->mSuccess:Z
    :try_end_0
    .catch Lcom/sonymobile/home/configuration/ConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v2    # "homeConfigJsonSerializer":Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;
    .end local v3    # "homeJsonConfig":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 380
    .restart local v2    # "homeConfigJsonSerializer":Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;
    .restart local v3    # "homeJsonConfig":Lorg/json/JSONObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 382
    .end local v2    # "homeConfigJsonSerializer":Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;
    .end local v3    # "homeJsonConfig":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcom/sonymobile/home/configuration/ConfigException;
    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$800()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 371
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "homeConfig"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$responseIntent:Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->mSuccess:Z

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->addIntentData(Landroid/content/Intent;Ljava/lang/String;Z)V
    invoke-static {v0, v1, p1, v2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$900(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 392
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$responseIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->val$startId:I

    iget-boolean v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;->mSuccess:Z

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->sendResponse(Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$500(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V

    .line 396
    return-void
.end method
