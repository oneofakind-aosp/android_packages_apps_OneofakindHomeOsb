.class Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;
.super Ljava/lang/Object;
.source "HomeAppWidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistrationFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field final synthetic val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

.field final synthetic val$userInterrupted:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Z)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iput-boolean p3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;->val$userInterrupted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;->val$userInterrupted:Z

    invoke-interface {v0, v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;->onAppWidgetRegistrationFailed(Z)V

    .line 850
    return-void
.end method
