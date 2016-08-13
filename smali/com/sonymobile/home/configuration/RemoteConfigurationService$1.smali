.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;
.super Ljava/lang/Object;
.source "RemoteConfigurationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

.field final synthetic val$serviceIntent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    iput-object p2, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->val$serviceIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;
    invoke-static {v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/HomeApplication;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1$1;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/HomeApplication;->customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V

    .line 96
    return-void
.end method
