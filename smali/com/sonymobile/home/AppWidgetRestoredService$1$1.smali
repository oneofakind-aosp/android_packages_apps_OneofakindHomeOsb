.class Lcom/sonymobile/home/AppWidgetRestoredService$1$1;
.super Ljava/lang/Object;
.source "AppWidgetRestoredService.java"

# interfaces
.implements Lcom/sonymobile/home/HomeApplication$CustomizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/AppWidgetRestoredService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/AppWidgetRestoredService$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/AppWidgetRestoredService$1;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizationDone()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$1;

    iget-object v0, v0, Lcom/sonymobile/home/AppWidgetRestoredService$1;->this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

    iget-object v1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$1;

    iget-object v1, v1, Lcom/sonymobile/home/AppWidgetRestoredService$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/home/AppWidgetRestoredService$1$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$1;

    iget v2, v2, Lcom/sonymobile/home/AppWidgetRestoredService$1;->val$startId:I

    # invokes: Lcom/sonymobile/home/AppWidgetRestoredService;->onHandleIntent(Landroid/content/Intent;I)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/AppWidgetRestoredService;->access$000(Lcom/sonymobile/home/AppWidgetRestoredService;Landroid/content/Intent;I)V

    .line 67
    return-void
.end method
