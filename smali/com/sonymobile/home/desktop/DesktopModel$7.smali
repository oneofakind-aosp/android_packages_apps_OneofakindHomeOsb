.class Lcom/sonymobile/home/desktop/DesktopModel$7;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/Model$ModelStateConfigurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopModel;->configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldHomePageId:I

.field private mOldLeftPageId:I

.field private mOldNumberOfPages:I

.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$desktopConfig:Lcom/sonymobile/home/configuration/DesktopConfig;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/configuration/DesktopConfig;)V
    .locals 0

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->val$desktopConfig:Lcom/sonymobile/home/configuration/DesktopConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreSavedState()V
    .locals 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->mOldNumberOfPages:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 1878
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->mOldLeftPageId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 1879
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->mOldHomePageId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setHomePageId(I)V

    .line 1880
    return-void
.end method

.method public saveOldState()V
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getNumberOfPages()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->mOldNumberOfPages:I

    .line 1871
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getLeftPageId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->mOldLeftPageId:I

    .line 1872
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getHomePageId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->mOldHomePageId:I

    .line 1873
    return-void
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->val$desktopConfig:Lcom/sonymobile/home/configuration/DesktopConfig;

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getNumberOfPages()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 1864
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 1865
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$7;->val$desktopConfig:Lcom/sonymobile/home/configuration/DesktopConfig;

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getDefaultPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setHomePageId(I)V

    .line 1866
    return-void
.end method
