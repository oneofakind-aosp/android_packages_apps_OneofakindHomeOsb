.class Lcom/sonymobile/home/folder/OpenFolderAdapter$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "OpenFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/OpenFolderAdapter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Landroid/content/res/Resources;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderAdapter;

.field final synthetic val$userSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderAdapter;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    iput-object p2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    # setter for: Lcom/sonymobile/home/folder/OpenFolderAdapter;->mMaxIconSize:I
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->access$002(Lcom/sonymobile/home/folder/OpenFolderAdapter;I)I

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyContentChanged()V

    .line 93
    return-void
.end method
