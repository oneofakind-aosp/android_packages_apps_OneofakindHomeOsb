.class Lcom/sonymobile/home/desktop/Desktop$8;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createDesktopView(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$8;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressItem()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$8;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->showStage(Z)V

    .line 547
    return-void
.end method
