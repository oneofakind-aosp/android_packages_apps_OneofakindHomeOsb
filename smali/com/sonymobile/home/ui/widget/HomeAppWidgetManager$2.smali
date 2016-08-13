.class Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;
.super Ljava/lang/Object;
.source "HomeAppWidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistered(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field final synthetic val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->val$componentName:Landroid/content/ComponentName;

    iput p4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->val$componentName:Landroid/content/ComponentName;

    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;->val$id:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;->onAppWidgetRegistered(Landroid/content/ComponentName;I)V

    .line 837
    return-void
.end method
