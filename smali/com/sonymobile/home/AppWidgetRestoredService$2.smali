.class Lcom/sonymobile/home/AppWidgetRestoredService$2;
.super Ljava/lang/Object;
.source "AppWidgetRestoredService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/AppWidgetRestoredService;->updateDesktopModels(I[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

.field final synthetic val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$modelsToBeLoadedCount:Landroid/util/MutableInt;

.field final synthetic val$newIds:[I

.field final synthetic val$oldIds:[I

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/AppWidgetRestoredService;Lcom/sonymobile/home/desktop/DesktopModel;[I[ILandroid/util/MutableInt;I)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->this$0:Lcom/sonymobile/home/AppWidgetRestoredService;

    iput-object p2, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p3, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$oldIds:[I

    iput-object p4, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$newIds:[I

    iput-object p5, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$modelsToBeLoadedCount:Landroid/util/MutableInt;

    iput p6, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$oldIds:[I

    iget-object v2, p0, Lcom/sonymobile/home/AppWidgetRestoredService$2;->val$newIds:[I

    new-instance v3, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/AppWidgetRestoredService$2$1;-><init>(Lcom/sonymobile/home/AppWidgetRestoredService$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->updateAppWidgetIds([I[ILcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 114
    return-void
.end method
