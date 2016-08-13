.class Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;
.super Lcom/oneofakind/advancedwidget/framework/AdvWidgetHost;
.source "HomeAdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeAdvWidgetHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-direct {p0}, Lcom/oneofakind/advancedwidget/framework/AdvWidgetHost;-><init>()V

    return-void
.end method


# virtual methods
.method public addFullScreenEffect(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 557
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->configuredWidget(Ljava/util/UUID;I)V

    .line 566
    return-void
.end method

.method public removeFullScreenEffect(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    return-void
.end method
