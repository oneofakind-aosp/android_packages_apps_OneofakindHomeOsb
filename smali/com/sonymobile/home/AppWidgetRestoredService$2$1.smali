.class Lcom/sonymobile/home/AppWidgetRestoredService$2$1;
.super Ljava/lang/Object;
.source "AppWidgetRestoredService.java"

# interfaces
.implements Lcom/sonymobile/home/storage/OnWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/AppWidgetRestoredService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/AppWidgetRestoredService$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/AppWidgetRestoredService$2;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCompleted()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$2;

    iget-object v0, v0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$modelsToBeLoadedCount:Landroid/util/MutableInt;

    iget v1, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/util/MutableInt;->value:I

    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$2;

    iget-object v0, v0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$modelsToBeLoadedCount:Landroid/util/MutableInt;

    iget v0, v0, Landroid/util/MutableInt;->value:I

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$2;

    iget-object v0, v0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

    # getter for: Lcom/sonymobile/home/AppWidgetRestoredService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;
    invoke-static {v0}, Lcom/sonymobile/home/AppWidgetRestoredService;->access$200(Lcom/sonymobile/home/AppWidgetRestoredService;)Lcom/sonymobile/home/util/ServiceCommandTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;->this$1:Lcom/sonymobile/home/AppWidgetRestoredService$2;

    iget v1, v1, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    .line 112
    :cond_0
    return-void
.end method
