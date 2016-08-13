.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Lcom/sonymobile/home/HomeApplication$CustomizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizationDone()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;

    iget-object v1, v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->val$serviceIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;

    iget-object v1, v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;

    iget v2, v2, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->val$startId:I

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->onHandleIntent(Landroid/content/Intent;I)V
    invoke-static {v1, v0, v2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$000(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;I)V

    .line 94
    return-void
.end method
