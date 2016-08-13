.class Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "ItemViewCreatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;->this$0:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;->this$0:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;->this$0:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    iget-object v1, v1, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 69
    return-void
.end method

.method public onShowLabelsInStageChanged()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;->this$0:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase$1;->this$0:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    iget-object v1, v1, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 75
    return-void
.end method
