.class Lcom/sonymobile/home/stage/StageView$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "StageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/stage/StageView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StageView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageView$1;->this$0:Lcom/sonymobile/home/stage/StageView;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowLabelsInStageChanged()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView$1;->this$0:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->onContentChanged()V

    .line 73
    return-void
.end method
