.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$2$1;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Lcom/sonymobile/home/storage/OnWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCompleted()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;

    iget-object v0, v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;
    invoke-static {v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$200(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/util/ServiceCommandTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2$1;->this$1:Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;

    iget v1, v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    .line 218
    return-void
.end method
