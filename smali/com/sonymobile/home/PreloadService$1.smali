.class Lcom/sonymobile/home/PreloadService$1;
.super Ljava/lang/Object;
.source "PreloadService.java"

# interfaces
.implements Lcom/sonymobile/home/HomeApplication$CustomizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/PreloadService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/PreloadService;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/PreloadService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/home/PreloadService$1;->this$0:Lcom/sonymobile/home/PreloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizationDone()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/PreloadService$1;->this$0:Lcom/sonymobile/home/PreloadService;

    invoke-virtual {v0}, Lcom/sonymobile/home/PreloadService;->stopSelf()V

    .line 42
    return-void
.end method
