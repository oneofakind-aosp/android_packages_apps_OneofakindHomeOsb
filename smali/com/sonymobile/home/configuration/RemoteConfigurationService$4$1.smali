.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->onPostExecute(Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

.field final synthetic val$config:Lcom/sonymobile/home/configuration/Config;

.field final synthetic val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

.field final synthetic val$model:Lcom/sonymobile/home/model/Model;

.field final synthetic val$responseIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$model:Lcom/sonymobile/home/model/Model;

    iput-object p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$config:Lcom/sonymobile/home/configuration/Config;

    iput-object p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    iput-object p5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$responseIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget-object v0, v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;
    invoke-static {v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$400(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget v1, v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$startId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$model:Lcom/sonymobile/home/model/Model;

    iget-object v8, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$config:Lcom/sonymobile/home/configuration/Config;

    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget-object v0, v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$config:Lcom/sonymobile/home/configuration/Config;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget-object v3, v3, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget v4, v4, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$startId:I

    iget-object v5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$responseIntent:Landroid/content/Intent;

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->createOnConfigCompletedCallback(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/app/PendingIntent;ILandroid/content/Intent;)Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$700(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/app/PendingIntent;ILandroid/content/Intent;)Lcom/sonymobile/home/model/OnConfigCompletedCallback;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/sonymobile/home/model/Model;->configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    :try_end_0
    .catch Lcom/sonymobile/home/configuration/ConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v6

    .line 316
    .local v6, "e":Lcom/sonymobile/home/configuration/ConfigException;
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget-object v0, v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->val$responseIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget-object v2, v2, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    iget v3, v3, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;->val$startId:I

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->handleError(Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V
    invoke-static {v0, v1, v2, v3, v6}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$600(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V

    goto :goto_0
.end method
