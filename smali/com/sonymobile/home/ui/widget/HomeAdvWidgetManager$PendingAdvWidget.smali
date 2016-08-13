.class Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;
.super Ljava/lang/Object;
.source "HomeAdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAdvWidget"
.end annotation


# instance fields
.field final mAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

.field final mHandler:Landroid/os/Handler;

.field mListener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "advWidget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .param p2, "listener"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 88
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mListener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    .line 89
    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method
