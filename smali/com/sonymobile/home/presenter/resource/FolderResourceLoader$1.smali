.class Lcom/sonymobile/home/presenter/resource/FolderResourceLoader$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "FolderResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;

    # invokes: Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->loadDefaultIcon()V
    invoke-static {v0}, Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;->access$000(Lcom/sonymobile/home/presenter/resource/FolderResourceLoader;)V

    .line 52
    return-void
.end method
