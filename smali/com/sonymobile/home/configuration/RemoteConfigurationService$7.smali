.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getVerizonHomeScreen(Landroid/app/PendingIntent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$callbackIntent:Landroid/app/PendingIntent;

.field final synthetic val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/desktop/DesktopModel;Landroid/app/PendingIntent;I)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$callbackIntent:Landroid/app/PendingIntent;

    iput p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 432
    new-instance v0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;

    invoke-direct {v0}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;-><init>()V

    .line 434
    .local v0, "jsonSerializer":Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageCount()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getColumnSpan()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getRowSpan()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;->createJsonFromItems(Ljava/util/List;IIII)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "jsonDesktop":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$callbackIntent:Landroid/app/PendingIntent;

    # invokes: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->sendGetCallbackIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static {v1, v2, v6}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$1100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;
    invoke-static {v1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$200(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/util/ServiceCommandTracker;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    .line 445
    return-void
.end method
