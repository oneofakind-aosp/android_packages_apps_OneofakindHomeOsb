.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnConfigCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->createOnConfigCompletedCallback(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/app/PendingIntent;ILandroid/content/Intent;)Lcom/sonymobile/home/model/OnConfigCompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$config:Lcom/sonymobile/home/configuration/Config;

.field final synthetic val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$responseIntent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;ILandroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$config:Lcom/sonymobile/home/configuration/Config;

    iput-object p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    iput p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$startId:I

    iput-object p5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$responseIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigCompleted(Z)V
    .locals 8
    .param p1, "success"    # Z

    .prologue
    .line 237
    if-eqz p1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$config:Lcom/sonymobile/home/configuration/Config;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/configuration/Config;->setConfigDone(Z)V

    .line 239
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->increaseNumberOfDoneConfigs()V

    .line 240
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->getNbrOfDoneConfigs()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    invoke-virtual {v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->getLayerConfigs()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$homeConfigJsonParser:Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->isConfigSuccessful(Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)Z
    invoke-static {v1, v2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$300(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)Z

    move-result v0

    .line 244
    .local v0, "isConfigSuccessful":Z
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;
    invoke-static {v1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$400(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$startId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 245
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$responseIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$startId:I

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->sendResponse(Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$500(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V

    .line 252
    .end local v0    # "isConfigSuccessful":Z
    :cond_0
    :goto_1
    return-void

    .line 244
    .restart local v0    # "isConfigSuccessful":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    .end local v0    # "isConfigSuccessful":Z
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$responseIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$pendingIntent:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$startId:I

    new-instance v5, Lcom/sonymobile/home/configuration/ConfigException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigCompleted failed for config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;->val$config:Lcom/sonymobile/home/configuration/Config;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->handleError(Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$600(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V

    goto :goto_1
.end method
