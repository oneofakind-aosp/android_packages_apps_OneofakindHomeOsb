.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getConfig(ILandroid/app/PendingIntent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$iconResourceProviderUri:Landroid/net/Uri;

.field final synthetic val$models:Ljava/util/List;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$responseIntent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$models:Ljava/util/List;

    iput p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$startId:I

    iput-object p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$responseIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$iconResourceProviderUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$models:Ljava/util/List;

    iget v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$startId:I

    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$responseIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;->val$iconResourceProviderUri:Landroid/net/Uri;

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->createConfig(Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$1000(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 417
    return-void
.end method
