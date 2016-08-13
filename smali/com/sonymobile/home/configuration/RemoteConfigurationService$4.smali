.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;
.super Landroid/os/AsyncTask;
.source "RemoteConfigurationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->setConfig(Ljava/lang/String;Landroid/app/PendingIntent;IZ)V
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
        "Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Lcom/sonymobile/home/configuration/ConfigException;

.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$configuration:Ljava/lang/String;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$retainState:Z

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Ljava/lang/String;ZLandroid/app/PendingIntent;I)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$configuration:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$retainState:Z

    iput-object p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$pendingIntent:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$startId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 278
    new-instance v1, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;
    invoke-static {v2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/HomeApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;-><init>(Landroid/content/Context;)V

    .line 281
    .local v1, "homeConfigJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$configuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->createConfig(Ljava/lang/String;)V

    .line 282
    iget-boolean v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$retainState:Z

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->setRetainState(Z)V
    :try_end_0
    .catch Lcom/sonymobile/home/configuration/ConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/sonymobile/home/configuration/ConfigException;
    iput-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->mException:Lcom/sonymobile/home/configuration/ConfigException;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->doInBackground([Ljava/lang/Void;)Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)V
    .locals 9
    .param p1, "homeConfigJsonParser"    # Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    .prologue
    .line 292
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v5, "responseIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->mException:Lcom/sonymobile/home/configuration/ConfigException;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$pendingIntent:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$startId:I

    iget-object v8, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->mException:Lcom/sonymobile/home/configuration/ConfigException;

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->handleError(Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V
    invoke-static {v0, v5, v1, v4, v8}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$600(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V

    .line 323
    :cond_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->getLayerConfigs()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 301
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/Config;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/configuration/Config;

    .line 302
    .local v3, "config":Lcom/sonymobile/home/configuration/Config;
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;
    invoke-static {v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/HomeApplication;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/configuration/Layers;

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/HomeApplication;->getModel(Ljava/lang/String;)Lcom/sonymobile/home/model/Model;

    move-result-object v2

    .line 303
    .local v2, "model":Lcom/sonymobile/home/model/Model;
    if-eqz v2, :cond_2

    .line 305
    new-instance v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/model/Model;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->onPostExecute(Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)V

    return-void
.end method
