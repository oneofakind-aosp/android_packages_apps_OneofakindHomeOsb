.class Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;
.super Ljava/lang/Object;
.source "HomeAdvWidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoaded(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field final synthetic val$advWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

.field final synthetic val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;->val$advWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$2;->val$advWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;->onAdvWidgetLoaded(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V

    .line 524
    return-void
.end method
