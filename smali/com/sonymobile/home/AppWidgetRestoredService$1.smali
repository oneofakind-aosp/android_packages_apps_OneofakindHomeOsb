.class Lcom/sonymobile/home/AppWidgetRestoredService$1;
.super Ljava/lang/Object;
.source "AppWidgetRestoredService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/AppWidgetRestoredService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/AppWidgetRestoredService;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1;->this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

    iput-object p2, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1;->this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

    # getter for: Lcom/sonymobile/home/AppWidgetRestoredService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;
    invoke-static {v0}, Lcom/sonymobile/home/AppWidgetRestoredService;->access$100(Lcom/sonymobile/home/AppWidgetRestoredService;)Lcom/sonymobile/home/HomeApplication;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/AppWidgetRestoredService$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/AppWidgetRestoredService$1$1;-><init>(Lcom/sonymobile/home/AppWidgetRestoredService$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/HomeApplication;->customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V

    .line 69
    return-void
.end method
