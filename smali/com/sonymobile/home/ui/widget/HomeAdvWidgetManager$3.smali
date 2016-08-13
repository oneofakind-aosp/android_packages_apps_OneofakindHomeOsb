.class Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;
.super Ljava/lang/Object;
.source "HomeAdvWidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoadingFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$silent:Z

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;ZLcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iput-boolean p2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$silent:Z

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iput-object p4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$className:Ljava/lang/String;

    iput-object p6, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$uuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$silent:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$uuid:Ljava/util/UUID;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;->onAdvWidgetLoadingFailedSilent(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$3;->val$uuid:Ljava/util/UUID;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;->onAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    goto :goto_0
.end method
