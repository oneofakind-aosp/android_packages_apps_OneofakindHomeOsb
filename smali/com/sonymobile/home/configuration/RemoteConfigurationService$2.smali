.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->setVerizonHomeScreenForModel(Ljava/lang/String;ILcom/sonymobile/home/desktop/DesktopModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$desktopConfig:Lcom/sonymobile/home/desktop/VerizonDesktopConfig;

.field final synthetic val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/VerizonDesktopConfig;I)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->val$desktopConfig:Lcom/sonymobile/home/desktop/VerizonDesktopConfig;

    iput p4, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;->val$desktopConfig:Lcom/sonymobile/home/desktop/VerizonDesktopConfig;

    new-instance v2, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2$1;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->configureVerizonDesktop(Lcom/sonymobile/home/desktop/VerizonDesktopConfig;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 220
    return-void
.end method
